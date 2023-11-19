<?php
 include'header.php';
 include'lib/connection.php';

 $sql = "SELECT * FROM product";
 $result = $conn -> query ($sql);

 if(isset($_POST['add_to_cart'])){

if(isset($_SESSION['auth']))
{
   if($_SESSION['auth']!=1)
   {
       header("location:login.php");
   }
}
else
{
   header("location:login.php");
}
  $user_id=$_POST['user_id'];;
  $product_name = $_POST['product_name'];
  $product_price = $_POST['product_price'];
  $product_id = $_POST['product_id'];
  $product_quantity = 1;

  $select_cart = mysqli_query($conn, "SELECT * FROM `cart` WHERE productid = '$product_id'  && userid='$user_id'");

  if(mysqli_num_rows($select_cart) > 0){
    echo $message[] = 'product already added to cart';

  }else{
     $insert_product = mysqli_query($conn, "INSERT INTO `cart`(userid, productid, name, quantity, price) VALUES('$user_id', '$product_id', '$product_name', '$product_quantity', '$product_price')");
   echo $message[] = 'product added to cart succesfully';
   header('location:index.php');
  }
}
?>

<p>
<center> <h2> OUR BESTSELLING PRODUCTS </h2> </center>

<div class="container">
  
    
    <div class="row">
      <br><p>
    <div class="row">
          <img src="img/products.jpg" width="100%" class="img-fluid">
      </div>
    <br>
    <div class="row">
          <img src="img/products2.jpg" width="100%" class="img-fluid">
      </div>
    </div>
</div>


<?php
 include'footer.php';
?>