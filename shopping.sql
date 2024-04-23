-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 02:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-02-23 16:21:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Dog\r\n', 'dogs', '2024-02-22 19:17:37', ''),
(4, 'CAT', 'cat ', '2024-02-22 19:19:32', ''),
(5, 'FISH', 'fish', '2024-02-22 19:19:54', ''),
(6, 'BIRD', 'bird\r\n', '2024-02-22 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 9, '2', 1, '2024-02-26 03:14:10', 'Internet Banking', NULL),
(8, 9, '3', 1, '2024-02-26 03:14:10', 'Internet Banking', NULL),
(9, 9, '15', 1, '2024-02-26 03:14:10', 'Internet Banking', NULL),
(10, 11, '25', 1, '2024-02-26 03:41:11', 'Debit / Credit card', NULL),
(11, 11, '38', 1, '2024-02-26 03:41:11', 'Debit / Credit card', NULL),
(12, 11, '6', 1, '2024-02-26 03:50:34', 'Internet Banking', NULL),
(13, 11, '21', 1, '2024-02-26 03:50:34', 'Internet Banking', NULL),
(14, 11, '30', 1, '2024-02-26 03:50:34', 'Internet Banking', NULL),
(15, 10, '16', 1, '2024-02-26 07:13:39', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 2, 'Ragdoll', 'Meow Paw', 150, 200, 'Gentle Temperament</br>\r\nGraceful Appearance</br>\r\nLaid-Back Demeanor</br>\r\nSociable Companions</br>\r\nEasy Grooming', 'Ragdoll2.jpg', 'Ragdoll3.jpg', 'Ragdoll1.jpg', 100, 'In Stock', '2024-02-24 16:54:35', ''),
(2, 4, 2, 'Burmese Cat', 'Meow Paw', 600, 650, 'Sleek Elegance</br>\r\nAffectionate Nature</br>\r\nPlayful Energy</br>\r\nVocal Communicators</br>\r\nSocial Butterflies', 'Burmese cat.jpg', 'Burmese cat2.jpg', 'Burmese cat3.jpg', 50, 'In Stock', '2024-02-24 16:59:00', ''),
(3, 4, 2, 'Bengal cat', 'Meow Paw', 2500, 3000, 'Striking Appearance</br>\r\nPlayful Energy</br>\r\nAffectionate Nature</br>\r\nIntelligent and Curious</br>\r\nSociable Companions</br>', 'Bengal cat5.jpg', 'Bengal cat.jpg', 'Bengal cat4.jpg', 500, 'In Stock', '2024-02-24 04:03:15', ''),
(4, 4, 2, 'Siamese cat', 'Meow Paw', 600, 800, 'Sleek Elegance</br>\r\nVocal Personalities</br>\r\nAffectionate Nature</br>\r\nPlayful Energy</br>\r\nIntelligent and Social   ', 'Siamese cat.jpg', 'Siamese cat2.jpg', 'Siamese cat3.jpg', 55, 'In Stock', '2024-02-24 04:04:43', ''),
(5, 4, 2, 'Tabby cat', 'Meow Paw', 200, 250, 'Diverse Coats</br>\r\nPlayful Disposition</br>\r\nAffectionate Companions</br>\r\nAdaptable Personalities</br>\r\nHistorical Significance', 'Tabby cat.jpg', 'Tabby cat2.jpg', 'Tabby cat4.jpg', 50, 'In Stock', '2024-02-24 04:06:17', ''),
(6, 4, 2, 'British shorthair', 'Meow Paw', 1000, 2000, 'Distinctive Appearance</br>\r\nGentle Temperament</br>\r\nFamily-Friendly</br>\r\nLow-Maintenance Coats</br>\r\nHistoric Heritage', 'British shorthair5.jpg', 'British shorthair2.jpg', 'British shorthair4.jpg', 200, 'In Stock', '2024-02-24 04:08:07', ''),
(7, 4, 3, 'Meow Mix Original Choice Dry Cat Food,30 lbs', 'Meow Mix ', 3, 5, '<b>Meow Mix Original Choice Dry Cat Food is specially formulated to help adult cats stay healthy and happy. This dry food for cats is the perfect mix to help you connect with your cat over a healthy meal.</b>', 'Meow Mix.jpg', 'Meow Mix2.jpg', 'Meow Mix3.jpg', 20, 'In Stock', '2024-02-24 07:57:58', NULL),
(8, 4, 3, 'Purina Friskies Dry Cat Food, High Protein Tender & Crunchy Combo, 16 lb Bag', 'Purina Friskies', 3, 5, '<b>Friskies Tender & Crunchy Combo Chicken & Beef Dry Cat Food, This cat food with flavors of real chicken lets you feel good about giving your cat a high-quality meal, and the combination of chicken and beef flavors accented with garden veggies delivers the taste cats crave.</b>', 'meow.jpg', 'meow2.jpg', 'meow3.jpg', 20, 'In Stock', '2024-02-24 08:08:30', NULL),
(9, 4, 3, 'Purina Fancy Feast Petites Gourmet Pate Wet Cat Food, Tender Beef, 2.8 oz Tub', 'Purina Fancy Feast ', 4, 5, '<b>Purina Fancy Feast Petites Wet Cat Food Beef, Give your feline a perfectly sized serving of pate cat food made with real delicious beef when you open a tub of Purina Fancy Feast Petites Tender Beef Entree Pate gourmet wet cat food.</b>', 'Fancy.jpg', 'Fancy2.jpg', 'Fancy3.jpg', 20, 'In Stock', '2024-02-24 08:10:57', NULL),
(11, 4, 3, 'Fancy Feast Pate with Gravy Wet Cat Food, Savory Centers Tuna, 3 oz. Can', 'Fancy Feast Pate', 5, 6, '<b>Delight your feline by serving her Purina Fancy Feast Savory Centers With Tuna Pate and Gourmet Gravy Center adult wet cat food. This delicious recipe combines the smooth texture of a pate entree with a gourmet flavor. The thick gravy center hidden in the tender tuna pate tantalizes her taste buds and sends her to culinary heaven.</b>', 'fan.jpg', 'fan2.jpg', 'fan3.jpg', 20, 'In Stock', '2024-02-24 08:15:39', NULL),
(12, 4, 3, 'Purina Cat Chow Indoor Dry Cat Food, Hairball + Healthy Weight, 3.15 lb. Bag', 'Purina Cat Chow ', 4, 5, '<b>Provide specialized nutrition to your indoor cat with Purina Cat Chow Indoor Hairball + Healthy Weight adult dry cat food. This indoor cat food is made with her decreased activity levels in mind.</b>', 'high.jpg', 'high2.jpg', 'high3.jpg', 20, 'In Stock', '2024-02-24 08:19:03', NULL),
(13, 4, 3, '9Lives Daily Essentials Dry Cat Food, 3.15-Pound Bag', '9Lives', 3, 5, '<b>Give your cat the flavors of salmon, chicken, and beef with 9Lives Daily Essentials dry cat food. Our delicious formula helps support heart health, clear vision, strong muscles, and healthy skin and coat.</b>', '9Lives.jpg', '9Lives2.jpg', '9Lives3.jpg', 20, 'In Stock', '2024-02-24 08:23:54', NULL),
(14, 4, 4, 'SmartyKat Frisky Flyer, Interactive Cat Toy, Extendable and Retractable Wand with Feathers', 'SmartyKat', 3, 4, '<b>SmartyKat Frisky Flyer Feather wand toy is the perfect toy for pet and pet parent interaction where you control the movement.</b>', 'cattoy.jpg', 'cattoy2.jpg', 'cattoy3.jpg', 5, 'In Stock', '2024-02-24 08:37:17', NULL),
(15, 3, 8, 'Affenpinscher Dog', 'Happy Peppy ', 500, 700, 'Charming Personality</br>\r\nDistinctive Appearance </br>\r\nSmall Size, Big character</br>\r\nFearless and Alert</br>\r\nPerfect Companions </br>\r\nRaised with care</br>', 'Affenpinscher Dog.jpg', 'Affenpinscher Dog2.jpg', 'Affenpinscher Dog3.jpg', 50, 'In Stock', '2024-02-23 04:35:13', ''),
(16, 3, 8, 'Cavalier King Charles Spaniel', 'Happy Peppy', 350, 500, 'Regal Charm</br>\r\nAffection Nature</br>\r\nExpressive Eyes</br>\r\nSilly Coats</br>\r\nLoyal Family Members</br>\r\nElevate Your Life</br>', 'cavalier king charles spaniel.jpg', 'cavalier king charles spaniel2.jpg', 'cavalier king charles spaniel3.jpg', 30, 'In Stock', '2024-02-23 04:36:23', ''),
(17, 5, 9, 'Gold Fish', 'Dorry Demi', 30, 35, 'Like to live with similar friends that aren\'t \"fin nippers\" or aggressive playmates.', 'Gold Fish.jpg', 'Gold Fish2.jpg', 'Gold Fish3.jpg', 0, 'In Stock', '2024-02-24 04:40:37', ''),
(18, 5, 9, 'Tetra Fish', 'Dorry Demi', 15, 20, 'Dazzling Variety</br>\r\nSchooling Nature</br>\r\nLow Maintenance</br>\r\nAquascape Friendly</br>\r\nEasy Feeding</br>\r\nTransform Your Tank', 'Tetra Fish.jpg', 'Tetra Fish2.jpg', 'Tetra Fish3.jpg', 50, 'In Stock', '2024-02-24 04:42:27', ''),
(19, 6, 12, 'Canary', 'Peddy Birds', 150, 250, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A species or type of songbird that is closey related to goldfinches,siskins,and redpolls</li></ul>', 'Canary.jpg', 'Canary2.jpg', 'Canary3.jpg', 45, 'In Stock', '2024-02-23 20:16:03', ''),
(20, 6, 12, 'Conure', 'Peddy Birds', 699, 750, 'Lively, Vocal and expressive this is the best bird known for it beauty and its big mouth..Long slender bodies, long tapered tails and large beaks.', 'Conure.jpg', 'Conure2.jpg', 'Conure3.jpg', 50, 'In Stock', '2024-02-23 20:19:22', ''),
(21, 3, 8, 'Chihuahua Dog', 'Happy Peppy', 700, 800, 'Tiny Yet Spirited</br>\r\nDistinctive Features</br>\r\nIndoor Companions</br>\r\nConfident and Charming</br>\r\nWarmth and Joy</br>', 'Chihuahua.jpg', 'Chihuahua2.jpg', 'Chihuahua3.jpg', 100, 'In Stock', '2024-02-24 01:59:24', NULL),
(22, 3, 8, 'Havanese Dog', 'Happy Peppy', 500, 650, 'Charming Companion</br>\r\nSilky Coat</br>\r\nFriendly Disposition</br>\r\nAdaptable Family Pets</br>\r\nPlayful and Intelligent</br>\r\nJoyful Additions', 'Havanese.jpg', 'Havanese2.jpg', 'Havanese3.jpg', 60, 'In Stock', '2024-02-24 02:25:02', NULL),
(23, 3, 8, 'English Toy Spaniel Dog', 'Happy Peppy', 300, 500, 'Regal Elegance</br>\r\nCompact Size</br>\r\nGentle Temperament</br>\r\nDistinctive Appearance</br>\r\nIdeal Indoor Pets</br>\r\nGraceful Companions', 'English Toy Spaniel.jpg', 'English Toy Spaniel2.jpg', 'English Toy Spaniel3.jpg', 50, 'In Stock', '2024-02-24 02:37:23', NULL),
(24, 3, 8, 'Brussels Griffon Dog', 'Happy Peppy', 400, 600, 'Charming Appearance</br>\r\nVariety in Coats</br>\r\nBig Personality, Small Size</br>\r\nPerfect for Apartments</br>\r\nStrong Bonds</br>\r\nJoyful Companions', 'Brussels Griffon.jpg', 'Brussels Griffon2.jpg', 'Brussels Griffon3.jpg', 50, 'In Stock', '2024-02-24 02:44:41', NULL),
(25, 6, 12, 'Parakeet', 'Peddy Birds', 39, 50, 'Any of numerous seed-eating parrots of small size,slender build and long, tapering tail.', 'Parakeet.jpg', 'Parakeet2.jpg', 'Parakeet4.jpg', 50, 'In Stock', '2024-02-24 07:02:04', NULL),
(26, 6, 12, 'Cockatiel', 'Peddy Bird', 400, 500, 'Quiet, Nondestructive and easy to care for.</br>\r\nThey are also known as entertaining pets.', 'Cockatiel.jpg', 'Cockatiel2.jpg', 'Cockatiel3.jpg', 50, 'In Stock', '2024-02-24 07:14:07', NULL),
(27, 6, 12, 'Parrot', 'Peddy Birds', 100, 150, 'Gregarious personalities, Rich social lives, behavioral flexibility, and long lifespan..', 'Parrot.jpg', 'Parrot2.jpg', 'Parrot3.jpg', 50, 'In Stock', '2024-02-24 07:21:30', NULL),
(28, 6, 12, 'Zebra Finch', 'Peddy Birds', 75, 100, 'Mainly grey, with characteristics black \'tear drop\' eye stripes and \'zebra like\' black and white barring on the rump and upper tail..', 'zebra finch.jpg', 'zebra finch2.jpg', 'zebra finch3.jpg', 50, 'In Stock', '2024-02-24 07:32:17', NULL),
(29, 5, 9, 'Catfish', 'Dorry Demi', 30, 50, 'Hardy & Resilient</br>\r\nEfficient Algae Cleaners</br>\r\nVersatile Types</br>\r\nPeaceful Community Members</br>\r\nEasy Feeding', 'Catfish.jpg', 'Catfish2.jpg', 'Catfish3.jpg', 50, 'In Stock', '2024-02-24 13:18:32', NULL),
(30, 5, 9, 'Clown Fish', 'Dorry Demi', 29, 35, 'Vibrant Colors</br>\r\nPlayful Personalities</br>\r\nSymbiotic Partners</br>\r\nBeginner-Friendly</br>\r\nCommunity Harmony', 'Clown Fish2.jpg', 'Clown Fish3.jpg', 'Clown Fish4.jpg', 50, 'In Stock', '2024-02-24 13:25:01', NULL),
(31, 5, 9, 'Angel Fish', 'Dorry Demi', 15, 20, 'Elegant Form</br>\r\nStriking Patterns</br>\r\nCommunity-Friendly</br>\r\nEasy Care</br>\r\nVertical Swimmers', 'angel fish4.jpg', 'angel fish2.jpg', 'angel fish3.jpg', 50, 'In Stock', '2024-02-24 13:34:52', NULL),
(32, 5, 9, 'Molly Fish', 'Dorry Demi', 4, 5, 'Vibrant Colors</br>\r\nLivebearer Species</br>\r\nCommunity-Friendly</br>\r\nAdaptable to Varied Environments</br>\r\nVegetarian Diet', 'Molly Fish.jpg', 'Molly Fish2.jpg', 'Molly Fish3.jpg', 50, 'In Stock', '2024-02-24 13:40:02', NULL),
(33, 6, 13, 'Vitakraft Premium Menu(300g)', 'Vitakraft', 5, 6, 'Vitakraft Fresh Super Fruit Cocktail is the perfect treat or food supplement for any pet bird diet.', 'Vitakraft.jpg', 'Vitakraft2.jpg', 'Vitakraft3.jpg', 10, 'In Stock', '2024-02-24 02:55:49', NULL),
(34, 6, 13, 'TROPICAN Parrot Food', 'Tropican', 49, 55, 'Provide proper daily nutrition for weaning, fledgling and breeding Parrots or for Parrots that require a heartier diet.', 'Tropican.jpg', 'Tropican2.jpg', 'Tropican3.jpg', 30, 'In Stock', '2024-02-24 03:16:14', NULL),
(35, 6, 13, 'Kaytee(Mealworm,Safflower,Cardinal)', 'Kaytee', 14, 15, 'Economical mix, containing black oil sunflower and millet\r\nIncludes the proper variety of ingredients to attract many types of backyard birds year-round', 'Kyee.jpg', 'Kyee2.jpg', 'Kyee3.jpg', 20, 'In Stock', '2024-02-24 03:25:37', NULL),
(36, 6, 13, 'Wanger\'s Bird Foods', 'Wanger', 23, 30, 'Sunflower Seed, White Proso Millet, Safflower Seed, Grain Sorghums, Sunflower Kernels, Peanut Pieces, Thistle Seed, Cracked Corn, Peanut Hearts, Finch Millet, Canary Grass Seed, Flax Seed, Canola Seed, Oyster Shell, Natural Flavors, Artificial Colors, Vitamin A Supplement, Vitamin D-3 Supplement.', 'Wanger.jpg', 'Wanger2.jpg', 'Wanger3.jpg', 20, 'In Stock', '2024-02-24 03:38:41', NULL),
(37, 6, 13, 'NutriBerries', 'Lafeber', 16, 17, 'Lafeber products are the ideal base diet because they are formulated to be nutritionally balanced. Every bite your bird takes offers building blocks for all of the systems of the body.', 'Lafeber.jpg', 'Lafeber2.jpg', 'Lafeber3.jpg', 20, 'In Stock', '2024-02-24 03:44:16', NULL),
(38, 6, 14, 'Bird Cage(Hand Made)', 'Local', 50, 55, '<b>Wood is a great material, it’s natural, it will suit your home decor as well as create a happy haven for birds.  They have just as many great features like perches and play spaces as the mass-produced habitat.</b>', 'Bird Cage.jpg', 'Bird Cage2.jpg', 'Bird Cage3.jpg', 20, 'In Stock', '2024-02-24 03:53:52', NULL),
(39, 6, 14, 'Bird Cage With Handle', 'Prevue Pet Products', 450, 500, '<b>Single pack bird cages feature a pull-out tray for easy cleaning</br>\r\nIncludes two plastic cups, two plastic perches</br>\r\nStarter home for parakeets, canaries and other small birds</br>\r\nMeasures 12” long, 9” wide, and 16\" high with 3/8\" wire spacing</br>\r\nComes in a display-ready graphic carton in English, French and Spanish</b>\r\n', 'birdcage.jpg', 'birdcage2.jpg', 'birdcage4.jpg', 30, 'In Stock', '2024-02-24 04:02:37', NULL),
(40, 3, 15, 'Hill\'s Science Diet: Smart Nutrition for Pets', 'Hill\'s Science Diet', 25, 30, '<b>Science Diet is a brand of cat and dog foods marketed by Hill\'s Pet Nutrition, Inc. In the United Kingdom and Europe, Science Diet operates as Science Plan. \r\nKnown for providing balanced nutrition, Science Diet offers a variety of formulas catering to different life stages and health conditions.</b>', 'Hill2.jpg', 'Hill4.jpg', 'Hill.jpg', 20, 'In Stock', '2024-02-24 04:26:22', NULL),
(41, 3, 15, 'Royal Canin: Tailored Nutrition Mastery', 'Royal Canin', 60, 87, '<b>Royal Canin specialises in highly tailored nutritional products for your cat or dog\'s needs. We make dry kibble, wet food, and veterinary diets.\r\nThis brand tailors its formulas to specific breeds, sizes, and health concerns. They aim to meet the unique nutritional needs of different dogs.</b>', 'royal.jpg', 'royal2.jpg', 'royal3.jpg', 20, 'In Stock', '2024-02-24 04:47:37', NULL),
(42, 3, 15, 'Blue Buffalo: Natural & Holistic Pet Nutrition', 'Blue Buffalo', 61, 70, '<b>Blue Buffalo is the #1-selling natural pet food brand, featuring a variety of dog foods, cat foods, and treats. Love them like family.\r\nBlue Buffalo offers a range of natural and holistic dog foods, avoiding certain artificial additives. They have various formulas catering to different life stages and health requirements.</b>', 'wild.jpg', 'wild2.jpg', 'wild3.jpg', 20, 'In Stock', '2024-02-24 04:52:36', NULL),
(43, 3, 15, 'Wellness: High-Quality Nutrition for Pets', 'Wellness', 55, 69, '<b>At Wellness, we have been crafting high-quality pet food for nearly 100 years and our belief in balance guides everything that we create.\r\nWellness provides a range of high-quality dog foods with natural ingredients. They have grain-free options and formulas catering to specific dietary needs.</b>', 'wellness.jpg', 'wellness4.jpg', 'wellness5.jpg', 20, 'In Stock', '2024-02-24 05:04:54', NULL),
(44, 3, 15, 'Orijen: Biologically Appropriate Dog Nutrition', 'Orijen', 120, 139, '<b>Give your pup the best with healthy and high-quality puppy food in a variety of flavors from ORIJEN. \r\nOrijen is known for its biologically appropriate dog foods, designed to mimic a dog\'s natural diet. They use high-quality, regionally sourced ingredients.</b>', 'Orijen.jpg', 'Orijen2.jpg', 'Orijen3.jpg', 20, 'In Stock', '2024-02-24 05:13:47', NULL),
(45, 3, 16, 'Diverse Dog Houses for Every Size and Style', 'Petmate', 400, 450, '<b>Discover an array of dog houses at our pet shop, ranging in sizes and styles to suit the individual needs and preferences of your furry friends. From cozy indoor retreats to sturdy outdoor shelters,Petmate ensures quality and comfort for dogs in every living environment.</b>', 'dogcage2.jpg', 'dogcage4.jpg', 'dogcage5.jpg', 30, 'In Stock', '2024-02-24 07:15:11', NULL),
(46, 4, 4, 'Cornmi Automatic Cat Toy Interactive for Indoor, 3 in 1 Cat Interactive Laser Feather Toys breed', 'Cornmi', 60, 70, '<b>There are many types of cat toys on the market, and you don’t know how to choose. Modanais 4-in-1 interactive toys will solve your worries! Cats’ Favorite Toys: Affordable Cat Toys! ! Interactive cat toys combine cat feather toys with automatic cat light toys and cat ball toys.</b>', 'toy.jpg', 'toy2.jpg', 'toy3.jpg', 20, 'In Stock', '2024-02-24 08:41:33', NULL),
(47, 4, 4, 'ZENY 79-Inch Multi-Level Cat Tree Stand House Kittens Activity Tower with Scratching Posts, Black', 'zeny', 80, 85, '<b>Thanks for choosing our ZENY products. Your cats will love this 79-inch cat tree. Its multilevel design expands the usable activity space vertically and offers more room for pets to climb and explore. The cat can take a rest, play around and just be as active as they want.</b>', 'zeny.jpg', 'zeny2.jpg', 'zeny3.jpg', 20, 'In Stock', '2024-02-24 08:48:42', NULL),
(48, 4, 4, 'Mudie 31.5\" Cat Tree Cat Tower for Indoor Cats with Green Leaves', 'Mudie', 100, 150, '<b>The 31.5\" tall Cat Tree Condo Tower gives your feline friends a place all to themselves.It\'s constructed of strong pet-safe materials that are environmentally friendly.This kitty condo has a sturdy base to prevent it from wobbling.Cats can use the double condos as cozy places to take a nap.</b>', 'Mudie.jpg', 'Mudie2.jpg', 'Mudie3.jpg', 30, 'In Stock', '2024-02-24 08:54:22', NULL),
(49, 5, 10, 'REGULAR Biofish Premium Fish Food for all Aquarium Fish - 60g 150g (M L Pellet) \r\n', 'Dr Bassleer', 8, 9, '<b>Dr. Bassleer Biofish Food, is much richer in nutrients and more economical to use than many other ornamental fish food. Feed your fish no more than what all of them eat within a few minutes. Dr. Bassleer Biofish Food consists mainly of Scandinavian wild fish. It contains a high percentage of proteins (52%) and all the vitamins, trace elements and minerals fish need.</b>', 'fishfood1.jpg', 'fishfood2.jpg', 'fishfood3.jpg', 10, 'In Stock', '2024-02-24 09:42:47', NULL),
(50, 5, 10, '15kg Saki-Hikari Growth Diet Koi Food(Floating)(M/L Size Available)', 'Saki-Hikari ', 200, 210, '<b>A formulation offering a specialized blending of the finest proteins, carbohydrates, amino acids and fats offering improved growth and desirable form.</b>', 'Saki-Hikari.jpg', 'Saki-Hikari2.jpg', 'Saki-Hikari3.jpg', 20, 'In Stock', '2024-02-24 09:48:57', NULL),
(51, 5, 10, 'UHT Fish Food', 'UHT', 7, 8, '<b>No need to hatch,simply feed directly\r\nLive foods for newborns to juveniles to adults\r\nDroppers provided for convenient preparation</b>', 'UHT.jpg', 'UHT2.jpg', 'UHT3.jpg', 10, 'In Stock', '2024-02-24 09:52:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Types of Cat', '2024-02-24 16:24:52', '24.2.2024'),
(3, 4, 'Feed', '2024-02-24 16:29:09', '24.2.2024'),
(4, 4, 'Cat\'s Assessory', '2024-02-24 16:55:48', '24.2.2024'),
(8, 3, 'Types of Dogs\r\n', '2024-02-23 04:13:54', ''),
(9, 5, 'Types of Fishes', '2024-02-24 04:36:45', ''),
(10, 5, 'Feed ', '2024-02-24 04:37:02', ''),
(11, 5, 'Fish Assessory', '2024-02-24 04:37:51', ''),
(12, 6, 'Type of Birds', '2024-02-23 20:12:59', ''),
(13, 6, 'Feed', '2024-02-24 02:53:41', '25.2.2024'),
(14, 6, 'Bird Cage', '2024-02-24 03:48:53', '25.2.2024'),
(15, 3, 'Feed', '2024-02-24 04:24:50', '25.2.2024'),
(16, 3, 'Dog\'s Assessory', '2024-02-24 07:14:21', '25.2.2024');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'kaungsetyannaing42@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-20 09:18:49', '20-12-2023 02:48:53 PM', 1),
(25, 'mgmyo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-23 14:38:28', NULL, 1),
(26, 'myokyaw@gmail.com', 0x3132372e302e302e3100000000000000, '2024-02-24 03:06:20', NULL, 0),
(27, 'myokyaw@gmail.com', 0x3132372e302e302e3100000000000000, '2024-02-24 03:07:14', NULL, 0),
(28, 'mgmg@gmail.com', 0x3132372e302e302e3100000000000000, '2024-02-24 03:08:27', '24-02-2024 08:38:56 AM', 1),
(29, 'mgmg@gmail.com', 0x3132372e302e302e3100000000000000, '2024-02-24 03:09:05', '24-02-2024 08:42:42 AM', 1),
(30, 'mgmg@gmail.com', 0x3132372e302e302e3100000000000000, '2024-02-24 03:13:40', NULL, 1),
(31, 'chanmyaethuthu5@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-26 03:05:32', '26-02-2024 08:45:55 AM', 1),
(32, 'myokyaw@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-26 03:17:04', NULL, 0),
(33, 'mggyi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-26 03:18:03', '26-02-2024 09:01:26 AM', 1),
(34, 'prpr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-26 03:34:00', NULL, 1),
(35, 'mggyi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-26 07:12:47', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(5, 'happy', 'psycho.y.555@gmail.com', 959768055, '674d11798c2d3e61fdd3cc6f033b49ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-20 09:19:54', NULL),
(6, 'r kar', 'rkar@gmail.com', 984938943, 'fb79b3cb0fc7f517f5fde82eb70273aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 06:20:42', NULL),
(7, 'Mg Myo', 'mgmyo@gmail.com', 12345678, 'e3d3456ad1dabb2e52918bce60025d53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 14:38:14', NULL),
(8, 'MGMG', 'mgmg@gmail.com', 121, 'daa4bf1b4d0978fa034ada89161a23c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-24 03:08:13', NULL),
(9, 'Tayaw Nyo', 'chanmyaethuthu5@gmail.com', 995382703, 'f3c042d525d9d1da24de8e4723dd61d2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 03:05:07', NULL),
(10, 'mggyi', 'mggyi@gmail.com', 99668725, 'b3e10eb490d66fa4ce03d2ebff2afbf4', 'ucsy', 'Yangon', 'Yangon', 12346, NULL, NULL, NULL, NULL, '2024-02-26 03:17:46', NULL),
(11, 'prpr', 'prpr@gmail.com', 976543212, '1b9875ca932f5218ec1b2ba75b4ea337', 'UCSY', 'Yangon', 'Shwe Pyi Thar', 12345, NULL, NULL, NULL, NULL, '2024-02-26 03:33:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
