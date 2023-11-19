<?php 

SESSION_START();

if(isset($_SESSION['auth']))
{
    if($_SESSION['auth']==1)
    {
        header("location:index.php");
    }
}


include "lib/connection.php";
    if (isset($_POST['submit'])) 
    {
        $email = $_POST['email'];
        $pass = md5($_POST['password']);

        $loginquery="SELECT * FROM users WHERE email='$email' AND pass='$pass'";
        $loginres = $conn->query($loginquery);

        echo $loginres->num_rows;

        if ($loginres->num_rows > 0) 
        {

            while ($result=$loginres->fetch_assoc()) 
            {
                $username=$result['f_name'];
                $userid=$result['id'];
            }

            $_SESSION['username']=$username;
            $_SESSION['userid']=$userid;
            $_SESSION['auth']=1;
            header("location:index.php");
        }
        else
        {
            echo "invalid";
        }
    }


?>


<!DOCTYPE html>
<html lang="en">

<head>
<style>
    body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=email] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 12px 16px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>cse411</title>


</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card">
                    <div class="card-body">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <form class="user">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                name="email"
                                                placeholder="Enter Email Address">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Password" name="password">
                                        </div>
                                        <div class="form-group">
                                            
                                        </div>
                                 
                                            <input class="btn btn-primary btn-user btn-block" type="submit" name="submit" value="Login">
                                  
                                        <hr>
                                    <div class="text-center">
                                        <a class="small" href="register.php">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

      </form>

    </div>


</body>

</html>