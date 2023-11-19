-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 02:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse411project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `productid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userid`, `productid`, `name`, `quantity`, `price`) VALUES
(10, 0, 12, 'T-shirt', 1, 350),
(13, 0, 14, 'New Shirt', 1, 600),
(16, 0, 15, 'mi note 8', 1, 20000),
(24, 4, 12, 'T-shirt', 1, 350),
(45, 5, 1004, 'Red Papper 500gr', 1, 17000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `mobnumber` int(100) NOT NULL,
  `txid` varchar(100) NOT NULL,
  `totalproduct` varchar(100) NOT NULL,
  `totalprice` int(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userid`, `name`, `address`, `phone`, `mobnumber`, `txid`, `totalproduct`, `totalprice`, `status`, `created_at`) VALUES
(4, 3, 'ashiqur', 'dhaka', 5655, 5996, 'asd415adf4', '13 (1) ', 400, 'cancel', '2022-09-04 18:18:17.725537');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `imgname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `catagory`, `description`, `quantity`, `Price`, `imgname`) VALUES
(1001, 'Pineapple 500gr', 'cat1', 'Pineapple is a fruit that is rich in vitamin C.', 120, 15000, 'Fruit Veggies_pinapple.jpeg'),
(1002, 'Tomato 500gr', 'cat1', 'Tomato is a fruit that contains vitamins B9, C, and potassium.', 40, 14000, 'Fruit Veggies_tomato.jpeg'),
(1003, 'Carrot 1Kg', 'cat1', 'Carrots are vegetables that are rich in vitamin A which is good for eye health.', 88, 13000, 'Fruit Veggies_Carrot.jpg'),
(1004, 'Red Papper 500gr', 'cat1', 'Red chili is a vegetable that has a spicy taste and is often used to make chili sauce.', 67, 17000, 'Fruit Veggies_red pepper.jpg'),
(1005, 'Red Apple 1Kg', 'cat1', 'Red apple is a fruit that is rich in antioxidants and free of cholesterol.', 103, 35000, 'Fruit Veggies_Apple.jpeg'),
(1006, 'Mangosteen 500gr', 'cat1', 'Mangosteen is a fruit that has benefit for the digestive system.', 99, 23000, 'Fruit Veggies_mangosteen.jpg'),
(1007, 'Green Cabbage 500gr', 'cat1', 'Green cabbage is a vegetable that has various health benefits.', 77, 11000, 'Fruit Veggies_green cabbage.jpeg'),
(1008, 'Red Onion 500gr', 'cat1', 'Red onion is a vegetable that is often used as a natural cooking spice.', 89, 18000, 'Fruit Veggies_red onion.jpeg'),
(2001, 'Ultra UHT Milk Plain 1000ml', 'cat2', 'Ultra Milk is high quality natural fresh milk with all the goodness of all the nutrients in it.', 70, 15000, 'Milk&Juice_Ultramilk Plain 1000 ml.jpg'),
(2002, 'Frisian Flag Chocolate Milk Powder 800gr', 'cat2', 'Frisian Flag Powdered Milk is produced using quality powdered milk containing macronutrients.', 80, 21000, 'Milk&Juice_Frisian Flag Kompleta Coklat.jpg'),
(2003, 'FrisianFlag Condensed Pouch 545gr', 'cat2', 'Frisian Flag Condensed Sweet contains macro nutrients and contains 8 vitamins and minerals.', 80, 21000, 'Milk&Juice_Frisian Flag Kental Manis.png'),
(2004, 'Bebelove 2 Baby Formula Milk 6-12 Months 1800gr', 'cat2', 'Support the health of your little one\'s digestive tract with optimal nutrition with Calcium.', 57, 320000, 'Milk&Juice_Bebelove 2 Nutricia.png'),
(2005, 'Buavita Original Orange Fruit Juice 1000ml', 'cat2', 'Buavita Mango is rich in vitamin C and vitamin B Complex which helps us to be ready for action.', 25000, 76, 'Milk&Juice_Buavita Jus Jeruk Orange 1 L.png'),
(2006, 'Sunquick Mandarin Syrup 845ml', 'cat2', 'Sunquick is made with fruit juice and free from artificial flavours, colours and sweeteners.', 55, 75000, 'Milk&Juice_Sunquick Mandarin Orange Super Jumbo 2 L.jpeg'),
(2007, 'Juice Jungle Apple 1000ml', 'cat2', 'Jungle Juice processed by through an Ultra High Temperature process and packaged aseptically.', 87, 34000, 'Milk&Juice_Jungle Juice Apel 1 l.jpeg'),
(2008, 'Diamond Juice Bluberry Unsweet 946ml', 'cat2', 'This juice is useful as an anti-aging, a source of vitamin C, anthocyanin, heart protection.', 98, 37000, 'Milk&Juice_Diamond Juice Blueberry Unsweet 946 mL.jpeg'),
(3001, 'Fresh Healthy Omega Egg So Good', 'cat3', 'So Good Fresh Healthy Omega Egg guaranteed quality sent directly from hygienic chicken breeders.', 99, 30000, 'Eggs&Noodles_Fresh Healthy Omega Egg So Good.jpg'),
(3002, 'Country Chicken Eggs Japfa', 'cat3', 'Domestic chicken eggs have many positive benefits, one of which is to increase the immune system.', 98, 26000, 'Eggs&Noodles_Super Grade A Country Chicken Eggs.png'),
(3003, 'ABT Duck Eggs', 'cat3', 'An average duck egg weighs about 70 grams, whereas a large chicken egg is closer to (50 grams).', 56, 40000, 'Eggs&Noodles_Eggs Duck 10 eggs.jpeg'),
(3004, 'Indofarm Original Village Chicken Eggs', 'cat3', 'Indofarm eggs are rich in omega 3 to help brain development especially for children and adults.', 120, 75000, 'Eggs&Noodles_Telur Ayam Kampung Indofarm.jpg'),
(3005, 'Elba Village Country Chicken Eggs', 'cat3', 'ELBA chickens similar to native chickens, but the ability to lay eggs like purebred chickens.', 67, 29000, 'Eggs&Noodles_Eggs Village Country Chicken Elba.jpeg'),
(3006, 'Indofarm Quail Eggs', 'cat3', 'Our eggs come from organically raised chickens by experienced breeders, fed natural feed.', 40000, 98, 'Eggs&Noodles_Telur Puyuh.jpg'),
(3007, 'Gado Balado Flavored Duck Eggs', 'cat3', 'Salted egg gado is a ready-to-eat egg made with quality chicken eggs. Can be eaten immediately.', 87, 9000, 'Eggs&Noodles_Gado Balado Flavoured Duck Egg 35 gr.jpg'),
(3008, 'Indomie Instant Noodles Grilled Chicken', 'cat3', 'To experience the authentic taste, simply cook in boiling water, drain and add seasoning.', 87, 4000, 'Eggs&Noodles_Indomie Instant Noodle Ayam Panggang.jpg'),
(3009, 'Pop Mie Chicken Curry Flavor', 'cat3', 'The savory taste of chicken curry plus yummy chunkies is guaranteed make you unable to refuse.', 75, 4000, 'Eggs&Noodles_Pop Mie Chicken Curry Flavour.jpg'),
(3010, 'Egg Noodles 3 Ayam', 'cat3', 'Noodles made of quality ingredients.', 98, 4000, 'Eggs&Noodles_Egg Noodles 3 Ayam.jpeg'),
(3011, 'Indomie Fried Noodles Plus Special', 'cat3', 'Made with quality wheat flour and selected fresh ingredients and seasonings.', 3000, 87, 'Eggs&Noodles_Indomie Fried Noodle 85 g.jpg'),
(3012, 'Gekikara Ramen Hot Carbonara Flavour', 'cat3', 'Gekkara Ramen is fried instant noodles with a spicy carbonara flavor and made from blended spices.', 59, 8000, 'Eggs&Noodles_Gekikara Ramen Hot Carbonara 81 gr.jpg'),
(3013, 'MiGelas Onion Chicken Flavour', 'cat3', 'MiGelas made using natural ingredients, non-artificial MSG, and contains vitamin.', 97, 3000, 'Eggs&Noodles_MiGelas Onion Chicken Flavour 10 sachets 28 gr.jpg'),
(3014, 'Bakmi Mewah Mushroom Chicken', 'cat3', 'Bakmi Mewah are luxurious noodles made from selected ingredients by serving chicken as a topping.', 60, 10000, 'Eggs&Noodles_Bakmi Mewah Mushroom Chicken 150 gr.jpg'),
(3015, 'Lemonilo Soto Koya Flavour 60gr', 'cat3', 'Made without flavor enhancers and artificial coloring. Not through the frying process.', 89, 10000, 'Eggs&Noodles_Lemonilo Soto Koya Flavour 60 gr.jpg'),
(4001, 'Lautan Merah Brown Rice - 2kg', 'cat4', 'Lautan Mas Red Rice has a delicious taste and fluffier red rice has a fluffier and chewy texture.', 43, 50000, 'Rices_Lautan Mas Brown Rice.jpg'),
(4002, 'Cap Topi Koki Setra Ramos Rice - 5kg', 'cat4', 'Topi Koki Setra Ramos rice is a superior seed rice processed with modern and hygienic technology.', 35, 69000, 'Rices_Cap Topi Koki Rice.jpeg'),
(4003, 'Cap Topi Koki Beras Harum Rice - 5kg', 'cat4', 'Topi Koki Beras Harum Rice is produced from superior seeds with the superiority of delicious.', 87, 80000, 'Rices_Cap Topi Koki Beras Harum Rice.jpg'),
(4004, 'Cap Topi Koki Premium Long Grain Rice - 10kg', 'cat4', 'Topi Koki Long Grain Premium Rice is produced from superior seed rice make taste of delicious rice.', 150, 55, 'Rices_Cap Topi Koki Premium Long Grain Rice.jpg'),
(4005, 'Fortune Rice - 10kg', 'cat4', 'Fortune brand rice is produced from quality rice grains which are also hygienically processed.', 35, 140000, 'Rices_Fortune Rice 10 kg.jpg'),
(4006, 'Sania Premium Rice - 5kg', 'cat4', 'Sania Premium Rice comes using Japanese technology to obtain fluffier rice.', 65, 70000, 'Rices_Sania Rice Premium.jpeg'),
(4007, 'Dua Tani White Glutinous Rice - 500gr', 'cat4', 'Processed hygienically and does not use bleach and preservatives, resulting in fluffier rice.', 56, 17000, 'Rices_Dua Tani White Glutinous Rice 500 gr.jpg'),
(4008, 'Mama Kamu Black Glutinous Rice - 500gr', 'cat4', 'Black Glutinous Rice is made from black sticky rice that is dried and baked in the oven.', 64, 17000, 'Rices_Black Glutinous Rice.jfif'),
(5001, 'Good Day Cappuccino 10 pcs - 25gr', 'cat5', 'Good Day Cappuccino makes you excited to share new ideas, be happy and slang.', 89, 5000, 'Coffee_Good Day Cappuccino Cocoa Granule 10 pcs 25 gr.jpg'),
(5002, 'Kopi Kenangan Avocuddle - 220ml', 'cat5', 'Made from 100% selected Indonesian Coffee Beans, Fresh Milk and Avocado Sensation to cheer you up.', 85, 8000, 'Coffee_Kopi Kenangan 220 ml.png'),
(5003, 'ABC Milk Coffee Instant - 31gr', 'cat5', 'The perfect mixture of ground coffee with a distinctive aroma, sugar and delicious milk.', 74, 13000, 'Coffee_ABC Coffee Instant - 31 gr.jpg'),
(5004, 'Starbuck Coffee Caffé Latte - 20gr', 'cat5', 'Each coffee bean requires balance of temperature and time to reach peaks of aroma and flavour.', 87, 15000, 'Coffee_Starbuck Coffee Caffé Latte 20 gr.jpg'),
(5005, 'Nescafé Latte Can - 220ml', 'cat5', 'From quality coffee beans, it produces a sweet and creamy taste that gives freshness.', 59, 8000, 'Coffee_Nescafe Latte.jpg'),
(5006, 'Tropicana Slim White Coffee - 15gr', 'cat5', 'Tropicana Slim White Coffee is sugar free and low calorie instant coffee.', 79, 23000, 'Coffee_Tropicana Slim 15 gr.jpg'),
(5007, 'Kapal Api Coffee Drip Flores Manggarai - 10gr', 'cat5', 'A special blend of Kapal Api coffee from the Manggarai on the island of Flores, East Nusa Tenggara.', 27, 29000, 'Coffee_Kapal Api Coffee Instant Drip Flores Manggarai 10 gr.jpg'),
(5008, 'Luwak White Coffee Less Sugar - 20gr', 'cat5', 'Kopi Luwak White Koffie Original Taste is claimed to be safe for the stomach.', 98, 11500, 'Coffee_Luwak White Coffee Less Sugar 20 gr.jpg'),
(6001, 'Tropical Cooking Oil Bottle - 1000ml', 'cat6', 'Tropical Cooking Oil is made from selected quality palm oil, processed with high technology.', 45, 20000, 'CookingOils_Tropical Cooking Oil Bottle 1000 ml.jpg'),
(6002, 'Sania Cooking Oils Refill- 1000ml', 'cat6', 'Produced and processed with the latest technology with careful selection of materials.', 94, 18000, 'CookingOils_Sania Cooking Oil Refill 1000 ml.jpg'),
(6003, 'Dougo Canola Oil - 1000ml', 'cat6', 'Canola oil has a monounsaturated fat content of 58%, which is higher than other vegetable oils.', 65, 61000, 'CookingOils_Dougo Canola Oil 1000 ml.jpg'),
(6004, 'Blue Band Margarine Multipurpose - 250g', 'cat6', 'Blue Band is equipped with essential nutrients and enriched with vitamins and minerals.', 77, 50000, 'CookingOils_Blue Band Margarine Multipurpose 250 g.jpg'),
(6005, 'Tropicana Slim Corn Oil - 946ml', 'cat6', 'Tropicana Slim Corn Oil can lower blood cholesterol levels due to lower saturated fatty acid.', 45, 103, 'CookingOils_Tropicana Slim Corn Oil 946 ml.jpg'),
(6006, 'Bimoli Cooking Oil - 5000ml', 'cat6', 'Bimoli cooking oil is made from selected oil palm seeds to produce the highest quality cooking oil.', 57, 100000, 'CookingOils_Bimoli Cooking Oil 5000 ml.jpg'),
(6007, 'Palmia Royal Butter Margarine - 200g', 'cat6', 'Palmia is enriched with 8 vitamins which are very good for the body\'s intake.', 102, 9500, 'CookingOils_Palmia Royal Butter Margarine 200 g.jpg'),
(7001, 'Gulaku Cane Sugar White Premium - 1kg', 'cat7', 'Gulaku has been present since 2002, providing granulated sugar that is affordable on the market.', 94, 13500, 'Sugars&Flavours_Gulaku Cane Sugar White Premium 1 kg.jpg'),
(7002, 'Gulaku Cane Sugar Yellow Premium - 1kg', 'cat7', 'Gulaku has been present since 2002, providing granulated sugar that is affordable on the market.', 45, 13500, 'Sugars&Flavours_Gulaku Cane Sugar Yellow Premium 1 kg.jpg'),
(7003, 'Tropicana Slim Sweetener Stevia 50 sachets - 2.6gr', 'cat7', 'You can taste the sweetness from the Stevia plant, which often used as low-calorie sugar in Japan.', 76, 77000, 'Sugars&Flavours_Tropicana Slim Sweetener Stevia 2.6 gr 50 sachets.jpg'),
(7004, 'Mamasuka Bread Crumbs - 100gr', 'cat7', 'MamaSuka Bread Crumbs is made from plain bread flour with wheat ingredients to produce white bread.', 98, 9000, 'Sugars&Flavours_Mamasuka Bread Crumbs 100 gr.jpg'),
(7005, 'Rose Brand Glutinous Rice Flour - 500gr', 'cat7', 'Made from glutinous rice because it contains iron which is low in sodium.', 58, 14500, 'Sugars&Flavours_Glutinous Rice Flour Rose Brand - 500 gr.jpg'),
(7006, 'Kunci Biru Wheat Flour - 1kg', 'cat7', 'Wheat Flour for making Cakes and Biscuits. Makes the cake feel crunchy and expands perfectly.', 64, 15000, 'Sugars&Flavours_Kunci Biru Wheat Flour 1 kg.jpg'),
(7007, 'Maizenaku Corn Flavour - 150g', 'cat7', 'Made from high quality corn starch which is processed and packaged with guaranteed quality.', 76, 7000, 'Sugars&Flavours_Maizenaku Corn Flavour 150 g.jpg'),
(7008, 'Tapioca Flavour Rose Brand 500gr', 'cat7', 'Flour made from the best cassava, suitable for all cakes.', 99, 15000, 'Sugars&Flavours_Tapioca Flavour Rose Brand 500 gr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `pass`) VALUES
(1, 'Ami', 'vai', 'anik@gmail.com', 81),
(2, 'Ami', 'vai', 'anik98bc@gmail.com', 9),
(3, 'ashiqur', 'anik', 'ashiqur.anik25@gmail.com', 9),
(4, 'arif', 'vai', 'arif@gmail.com', 81);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7009;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
