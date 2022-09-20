-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 11:25 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the decor cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `total_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`) VALUES
(69, 'Grid Area Rug', '7694', 'Carpet and rugs/images (2).jpg', 1, '7694');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(50) NOT NULL,
  `question` varchar(500) NOT NULL,
  `reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `question`, `reply`) VALUES
(1, 'hi||hello||hola', 'hello, how can I help you?'),
(2, 'I want to track my order||Where is my order?||When will my order arriver?||When will my order deliver?', 'As per our records your order has been processed and will be delivered to you in 3-5 working days'),
(4, 'Ok| thank you', 'Welcome. Please Visit Again!!');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `added_on`, `type`) VALUES
(0, 'hi', '2021-04-03 03:09:13', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(100) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `order_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `order_id`) VALUES
(120, 'aayushi', 'aayushishah.2507@gmail.com', '9869722401', 'A/2dwarkesh niketan\r\nMalad west', 'cards', 'Grid Area Rug(1)', '7694', '6073086971c8c');

-- --------------------------------------------------------

--
-- Table structure for table `product_bedroom`
--

CREATE TABLE `product_bedroom` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_bedroom`
--

INSERT INTO `product_bedroom` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Enri Queen Size Bed', 'RS. 17999.00', 'bedroom/download.jpg', 'Specifications: With Storage, Double Bed, Dark Brown Color \r\nMaterial: Wood'),
(2, 'Low Floor Double Bed', 'RS. 33989.00', 'bedroom/download (1).jpg', 'Specifications: Double Bed, Without Storage, Wood Color(Brown)\r\nMaterial: Wood'),
(3, 'Wooden Wardrobe', 'RS. 10699.00', 'bedroom/download (2).jpg', 'Specifications: 2 Drawers, 1 Mirror, 4 Cupboards, Dark Brown color \r\nMaterial: Wood\r\n'),
(4, '7 Chest of Drawer', 'RS. 24500.00', 'bedroom/download (3).jpg', 'Specifications: 4 Big Drawers, 3 Small Drawers, White color\r\nMaterial: Wood \r\n'),
(5, 'Adolph Chest of Drawer', 'RS. 23485.00', 'bedroom/download (4).jpg', 'Specifications: 4 Big Drawers, 3 Small Drawers, Brown color\r\nMaterial: Wood\r\n'),
(6, 'Wood Box Bed', 'RS. 31900.00', 'bedroom/download (7).jpg  ', 'Specification: With Storage, Double Bed, Brown Color\r\nMaterial: Wood\r\n'),
(7, 'Double Bed', 'RS. 22500.00', 'bedroom/images.jpg', 'Specifications: Wood, 1 Mattress, Without Storage\r\nMaterial: Wood\r\n'),
(8, 'Dark Wooden Wardrobe', 'RS. 20599.00', 'bedroom/images (1).jpg', 'Specifications: With dressing table, 2 drawers, 4 Doors, 1 Mirror\r\nMaterial: Wood\r\n'),
(9, 'Paris Grey Wardrobe', 'RS. 39599.00', 'bedroom/images (2).jpg', 'Specifications: With 4 Doors and 2 Drawers\r\nMaterial: Wood\r\n'),
(10, 'Antique French Grey Wardrobe', 'RS. 50999.00', 'bedroom/images (3).jpg', 'Specifications: 3 Mirrors, 3 Doors\r\nMaterial: Wood\r\n'),
(11, 'WestBury Blue Drawer', 'RS. 25555.00', 'bedroom/images (4).jpg', 'Specifications: 6 Drawers, Color: Navy Blue\r\nMaterial: Wood\r\n'),
(12, 'Luxe Mirrored Drawer', 'RS. 30555.00', 'bedroom/images (5).jpg', 'Specifications: 2 Small Drawers, 4 Big Drawers\r\nMaterial: Mirror, Wood\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_bookends`
--

CREATE TABLE `product_bookends` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_bookends`
--

INSERT INTO `product_bookends` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Pull and Push Bookend', 'RS. 450.00', 'bookend/download (1).jpg', 'Material: Metal'),
(2, 'Globe Bookend', 'RS. 876.00', 'bookend/download (2).jpg', 'Material: Wood, Steel'),
(3, 'Lava Resin Stone Bookend', 'RS. 400.00', 'bookend/download (3).jpg', 'Material: Lime Stone, lava Stone, Resin'),
(4, 'Sofa Bookend', 'RS. 699.00', 'bookend/download (5).jpg', 'Material: Aluminium\r\nColor: Multicolored\r\n'),
(5, 'Mottenfalle Tricube Bookend', 'RS. 799.00', 'bookend/download.jpg', 'Material: Wood'),
(6, 'Gold Effect Rabbit Bookend', 'RS. 1800.00', 'bookend/images (1).jpg', 'Material: Metal\r\nColor: Rose Gold\r\n'),
(7, 'Bicycle Bookend', 'RS. 560.00', 'bookend/images.jpg', 'Material: Metal'),
(8, 'Dog Bookend', 'RS. 569.00', 'bookend/images (5).jpg', 'Material: Iron\r\nHand Painted\r\n'),
(9, 'Aperture Portal Bookend', 'RS. 499.00', 'bookend/download (4).jpg', 'Material: Metal'),
(10, 'Hand Bookend', 'RS. 400.00', 'bookend/images (2).jpg', 'Material: Steel'),
(11, 'Reindeer Bookend', 'RS. 349.00', 'bookend/images (3).jpg', 'Material: Bronze'),
(12, '\"BOOK\" Grey Glass Bookend', 'RS. 900.00', 'bookend/images (4).jpg', 'Color: Grey\r\nMaterial: Metal\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_candle_ware`
--

CREATE TABLE `product_candle_ware` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_candle_ware`
--

INSERT INTO `product_candle_ware` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Ornamented  Candle Sticks', 'RS. 650', 'candle ware/download (6).jpg', 'Set of 6 candles'),
(2, 'Crystal Candle Holder', 'RS. 490', 'candle ware/images (1).jpg', 'Material: Metal Crystal'),
(3, 'Anglian Vintage Candle Ware', 'RS. 899', 'candle ware/images (2).jpg', 'Material: Glass, Aluminum'),
(4, 'Brass Tribal Doll Set', 'RS. 2500', 'candle ware/images (3).jpg', 'Material: Brass\r\nCandle Holder\r\n'),
(5, 'Candle Ware', 'RS. 699', 'candle ware/images (4).jpg', 'Material:Aluminum, Wax\r\nSet of 4 Candles\r\n'),
(6, 'Victorian Style', 'RS. 2000', 'candle ware/images (5).jpg', 'Material: Metal \r\nSet of 2 candles\r\n'),
(7, 'Golden Ferrum ', 'RS. 1540', 'candle ware/images (6).jpg', 'Material: Glass, Iron\r\nCandle Holder\r\n'),
(8, 'Statue Candle Ware', 'RS. 650', 'candle ware/images (7).jpg', 'Material: Metal\r\nSet of 2 Candles\r\n'),
(9, 'Innovative Candelabra', 'RS. 2300', 'candle ware/images (8).jpg', 'Material: Metal\r\n7 Candle Holders\r\n'),
(10, 'Candle Holder', 'RS. 133', 'candle ware/images (9).jpg', 'Material: Wood\r\nType: Cylinder\r\nHandmade\r\n'),
(11, 'Roosevelt', 'RS. 1799', 'candle ware/images (10).jpg', '3 Lite Jeweled Candle Holder with 3 Candles'),
(12, 'Concrete & Wax', 'RS. 599', 'candle ware/images.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_carpet_and_rugs`
--

CREATE TABLE `product_carpet_and_rugs` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_carpet_and_rugs`
--

INSERT INTO `product_carpet_and_rugs` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Blue and Gold Design', 'RS. 5999', 'Carpet and rugs/images (4).jpg', 'Material: Polypropylene\r\nSize: 6ft. 7in'),
(2, 'Veun Geometric Grey ', 'RS. 3371', 'Carpet and rugs/images (1).jpg', 'Size: 6ft. 8in  x 7ft. 10in\r\nMaterial: Polypropylene\r\n\r\n'),
(3, 'Grid Area Rug', 'RS. 7694', 'Carpet and rugs/images (2).jpg', 'Color: Charcoal\r\nSize: 5ft 3in x 7ft 6in\r\nMaterial: Polypropylene\r\n'),
(4, 'Abstract Stripe Rug\r\n', 'RS: 8647', 'Carpet and rugs/images (3).jpg', 'Color: Teal & Grey\r\nSize: 160x 235cm\r\nMaterial: Polypropylene\r\n'),
(5, 'Regal Carpet', 'RS: 5700', 'Carpet and rugs/images.jpg', 'Material: Acrylic\r\nShape: Rectangular\r\nSize: 5 x 7\r\n'),
(6, 'Brooklyn Grey Multi Rug', 'RS: 6907', 'Carpet and rugs/download (1).jpg', 'Material: Polypropylene\r\nSize: 120 x 170cm\r\nShape: Rectangular\r\n'),
(7, 'Navy/Aqua Area Rug', 'RS: 4188', 'Carpet and rugs/download (2).jpg', 'Size: 6ft 7in \r\nShape: Square\r\nMaterial: Polypropylene\r\n'),
(8, 'Shaggy Carpets & Rugs', 'RS: 4999', 'Carpet and rugs/download (3).jpg', 'Color: Ivory\r\nShape: Rectangular\r\nSize: 4 x 6 Feet\r\nMaterial: Polypropylene\r\n\r\n'),
(9, 'Grey White Rug', 'RS. 5201', 'Carpet and rugs/download (4).jpg', 'Size: 6 x 9 feet'),
(10, 'Red & Black Carpet', 'RS: 9998', 'Carpet and rugs/download (5).jpg', 'Material: Polyester\r\nSize: 6 x 9feet\r\n'),
(11, 'Geometric Pattern Carpet', 'RS: 5695', 'Carpet and rugs/download (6).jpg', 'Material: Nylon\r\nSize: 42 x 52in\r\n'),
(12, 'Clearance Rug', 'RS: 1375', 'Carpet and rugs/download.jpg', 'Color: Blue & Grey\r\nSize: 6ft. 8 x 7ft. 10\r\nMaterial: Polypropylene\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_ceiling_and_wall_lights`
--

CREATE TABLE `product_ceiling_and_wall_lights` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_ceiling_and_wall_lights`
--

INSERT INTO `product_ceiling_and_wall_lights` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Afast Uplight Wall Lamp', 'RS. 502', 'Ceiling and wall lights/download.jpg', 'Material: Wood, Glass'),
(2, 'Wooden Base Wall Lights', 'RS. 999', 'Ceiling and wall lights/images (10).jpg', 'Material: Wooden, Metal\r\nSet of 2\r\n'),
(3, 'Tina Wall Lamp', 'RS. 2337', 'Ceiling and wall lights/images.jpg', 'Material: Steel, Wood'),
(4, 'Novelty Surface Mounted Lights', 'RS. 5884', 'Ceiling and wall lights/images (1).jpg', 'Material: Acrylonitrile-butadlene-styrene'),
(5, 'Square Design LED Lights\r\n', 'RS. 4632', 'Ceiling and wall lights/images (2).jpg', 'Material: Metal'),
(6, 'Cube COB LED light', 'RS. 1299', 'Ceiling and wall lights/images (3).jpg', 'Material: Metal'),
(7, 'Hanging Lights', 'RS. 2599', 'Ceiling and wall lights/images (4).jpg', 'Material: Metal'),
(8, '3W LED Light', 'RS. 799', 'Ceiling and wall lights/images (5).jpg', 'Material: Metal'),
(9, 'IC C/W Wall Light', 'RS. 1799', 'Ceiling and wall lights/images (6).jpg', 'Material: Steel, Brown Glass'),
(10, 'Floss IC Light', 'RS. 1679', 'Ceiling and wall lights/images (7).jpg', 'Material: Steel, Brown Glass'),
(11, 'LED Stair Wall Light', 'RS. 2339', 'Ceiling and wall lights/images (8).jpg', 'Material: Metal'),
(12, 'Rio IN & OUT Ceiling / Wall Light', 'RS. 3609', 'Ceiling and wall lights/images (9).jpg', 'Material: Solid Brass & Flexed Glass Components');

-- --------------------------------------------------------

--
-- Table structure for table `product_chandelier`
--

CREATE TABLE `product_chandelier` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_chandelier`
--

INSERT INTO `product_chandelier` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Crystal Chandelier ', 'RS. 2191', 'chandelier/download (1).jpg', 'Material: Crystal'),
(2, 'Back Tube Chandelier', 'RS. 2991', 'chandelier/images.jpg', 'Material: Metal, Glass'),
(3, 'Radiant RLH-0008 Chandelier', 'RS. 3599', 'chandelier/images (1).jpg', 'Material: Brass, Metal, Glass'),
(4, 'LED Chandelier', 'RS. 3790', 'chandelier/images (2).jpg', 'Material: Aluminum'),
(5, 'Wagon Wheel Chandelier', 'RS. 6170', 'chandelier/images (3).jpg', 'Material: Wood'),
(6, 'LED Ceiling Chandelier ', 'RS. 3200', 'chandelier/images (4).jpg', 'Material: Iron'),
(7, 'Elegant 15-Light Large Chandelier', 'RS. 10600', 'chandelier/images (5).jpg', 'Material: Crystal, Glass, Others'),
(8, 'LED Light Chandelier', 'RS. 1201', 'chandelier/images (6).jpg', 'Material: Metal'),
(9, 'Peony Ceiling Lamp', 'RS. 2102', 'chandelier/images (7).jpg', 'Material: Metal'),
(10, 'Chandelier', 'RS. 5600', 'chandelier/images (8).jpg', 'Material: Crystal, Glass'),
(11, 'Modern Chandelier', 'RS. 3790', 'chandelier/images (9).jpg', 'Material: Glass'),
(12, 'Diamond Cluster Pendant Light', 'RS. 1999', 'chandelier/images (10).jpg', 'Material: Metal');

-- --------------------------------------------------------

--
-- Table structure for table `product_clocks`
--

CREATE TABLE `product_clocks` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clocks`
--

INSERT INTO `product_clocks` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Wall Clock', 'RS. 399.00', 'clocks/download (1).jpg', 'Material: Wood, Resin, Bamboo\r\nWeight: 500gm \r\n'),
(2, 'Ajanta Clock', 'RS. 429.00', 'clocks/images (1).jpg', 'Size: 32x32cm\r\nMaterial: Glass \r\n'),
(3, 'Wooden Nordic Japanese Clock', 'RS. 1699.00', 'clocks/images (2).jpg', 'Color: pink\r\nMaterial: Wood\r\n\r\n'),
(4, 'Antique Wall Clock', 'RS. 2299.00', 'clocks/images (3).jpg', 'Material: Metal\r\nColor: Black\r\n'),
(5, 'Butterfly Wall Clock', 'RS. 1399.00', 'clocks/butterfly.jpg', 'Material: Wooden\r\nSize: 30x5x30 cm\r\n'),
(6, 'Peacock Design Clock', 'RS. 15374.00', 'clocks/peacock.jpg', 'Material: Metal, Resin\r\nSize: 70x70cm\r\n'),
(7, 'Bird Alarm Wall Clock', 'RS. 2999.00', 'clocks/images (6).jpg', 'Material: Wooden'),
(8, 'Elephant Design Clock', 'RS. 4999.00', 'clocks/images.jpg', 'Material: Brass, Metal\r\nSize: 18Lx18H\r\n'),
(9, 'Brick Texture Clock', 'RS. 1399.00', 'clocks/4.jpg', 'Material: Wooden\r\nSize: 29x29x3cm\r\n'),
(10, 'Antique Wooden Clock', 'RS. 10999.00', 'clocks/1.jpg', 'Material: Wooden '),
(11, 'Brass Antique Clock', 'RS. 17599.00', 'clocks/2.jpg', 'Material: Brass'),
(12, 'European Goddess Craft Clock', 'RS. 15699', 'clocks/3.jpg', 'Material: Metal\r\nColor: Metallic\r\nSize: 24x17x31cm\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_figurine_lamps`
--

CREATE TABLE `product_figurine_lamps` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_figurine_lamps`
--

INSERT INTO `product_figurine_lamps` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Antique Angel Lamp', 'RS. 3360', 'Figurine lamps/download.jpg', 'Material: Enamel Porcelain'),
(2, 'Antique White Victorian Lamp', 'RS. 8035', 'Figurine lamps/images (10).jpg', 'Material: Porcelain'),
(3, 'Table Lamp', 'RS. 2690', 'Figurine lamps/images.jpg', 'Material: Metal'),
(4, 'Vintage Reindeer Lamp', 'RS. 8401', 'Figurine lamps/images (1).jpg', 'Material: Fabric'),
(5, 'Lampshades', 'RS. 3100', 'Figurine lamps/images (2).jpg', 'Material: Metal'),
(6, '\"Love\" LED Light ', 'RS. 1201', 'Figurine lamps/images (3).jpg', 'Material: Plastic'),
(7, 'Buddha Head Lamp', 'RS. 1600', 'Figurine lamps/images (4).jpg', 'Material: Ceramic'),
(8, 'Mouse Figurine Lamp', 'RS. 3214', 'Figurine lamps/images (5).jpg', 'Material: Bronze'),
(9, 'Antique Table Lamp', 'RS. 3609', 'Figurine lamps/images (6).jpg', 'Material: Metal'),
(10, 'Lady Lamp', 'RS. 4309', 'Figurine lamps/images (7).jpg', 'Material: Mixed Materials, Spelter'),
(11, 'Vintage Boudoir Accent Lamp', 'RS. 6501', 'Figurine lamps/images (8).jpg', 'Material: Porcelain'),
(12, 'Cactus Shaped Lamp', 'RS. 3628', 'Figurine lamps/images (9).jpg', 'Material: Porcelain');

-- --------------------------------------------------------

--
-- Table structure for table `product_garden_stools`
--

CREATE TABLE `product_garden_stools` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_garden_stools`
--

INSERT INTO `product_garden_stools` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Procelain Dragon Stools', 'RS. 4290', 'Garden Stools/download.jpg', 'Material: Ceramic'),
(2, 'Ceramic Garden Stools', 'RS. 7181', 'Garden Stools/download (1).jpg', 'Material: Procelain\r\n\r\nSize: 45cm x 33cm\r\n'),
(3, 'Jasper Outdoor Stool', 'RS. 2724', 'Garden Stools/images.jpg', 'Capacity: 225lb.\r\n\r\nDiameter: 18.75In x 17.5In\r\n'),
(4, 'Table Drum', 'RS. 14656', 'Garden Stools/images (1).jpg', 'Size: 35 x 34cm\r\n\r\nMaterial: Ceramic\r\n'),
(5, 'Chinese Ceramic Stool', 'RS. 3297', 'Garden Stools/images (2).jpg', 'Texture: Peach blossom painting\r\n\r\nMaterial: Ceramic\r\n'),
(6, 'Bamboo Stool\r\n', 'RS. 1500', 'Garden Stools/images (3).jpg', 'Material: Bamboo, wood\r\n\r\nSize: Standard\r\n'),
(7, 'Fiberglass Garden Stool', 'RS. 2000', 'Garden Stools/images (4).jpg', 'Material: Fiber Glass\r\n\r\nSize: Standard\r\n\r\nShape: Log\r\n'),
(8, 'Wooden Stool', 'RS. 3599', 'Garden Stools/images (5).jpg', 'Material: Wood, Fabric\r\n\r\nSize: 45 x 33cm\r\n'),
(9, 'Seahorse Garden stool', 'RS. 5511', 'Garden Stools/images (6).jpg', 'Material: Wood'),
(10, 'Hospes outdoor ottoman', 'RS. 769', 'Garden Stools/images (7).jpg', 'Material: Polypropylene'),
(11, 'Modern Minimalist Stool', 'RS. 2311', 'Garden Stools/images (8).jpg', 'Material: Fabric\r\n\r\nSize: H420 x W450 x L450\r\n'),
(12, 'Portabello  Garden Stool', 'RS. 3040', 'Garden Stools/images (9).jpg', 'Material: Ceramic with glossy glaze\r\nSize: 15inch x 18inch');

-- --------------------------------------------------------

--
-- Table structure for table `product_jars`
--

CREATE TABLE `product_jars` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_jars`
--

INSERT INTO `product_jars` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'PAINTED MASON JARS', 'RS. 2564', 'Jars/download.jpg', 'Material: Mason Jar, Glass, Low VOC Paint'),
(2, 'PASTEL CUSTOMIZED JARS', 'RS. 2395', 'Jars/download (1).jpg', 'Material: Glass\r\nSet of 2 Jars\r\n'),
(3, 'MODERN STRIPPED JARS', 'RS.  4461', 'Jars/images (10).jpg', 'Material: Ceramic, Enamel'),
(4, 'Rustic ‘LOVE’ Jar', 'RS. 3590', 'Jars/images.jpg', 'Material: Natural Jute Rope\r\nSet of 4 Mason Jars\r\n'),
(5, 'Flower Designed Minimal Jars', 'RS. 1190', 'Jars/images (1).jpg', 'Material: Glass'),
(6, 'Rustic ‘HOME’ Jar', 'RS. 3590', 'Jars/images (2).jpg', 'Material: Natural Jute Rope\r\nSet of 4 Mason Jars\r\n'),
(7, 'Cylindrical Shaped Jars', 'RS. 3659', 'Jars/images (3).jpg', 'Material: Ceramic\r\nSet of 3 Jars\r\n'),
(8, 'Fall Themed Customized Jars', 'RS. 4860', 'Jars/images (4).jpg', 'Material: Glass\r\nSet of 3 Jars\r\n'),
(9, 'WOODLAND CHRISTMAS KILNER JARS', 'RS. 2418', 'Jars/images (5).jpg', 'Hand Painted\r\nStag & Robin and Woodland Dears Design\r\n\r\n'),
(10, 'ELEGANT MINI JAR', 'RS. 1\r\n-199', 'Jars/images (6).jpg', 'Material: Ceramic\r\nSet of 2 Jars\r\n'),
(11, 'Aesthetic Jars', 'RS. 1060', 'Jars/images (7).jpg', 'Material: Glass\r\nSet of 2 Jars\r\n\r\n'),
(12, 'Antique Jars', 'RS. 2199', 'Jars/images (8).jpg', 'Material: Aluminum');

-- --------------------------------------------------------

--
-- Table structure for table `product_living_room`
--

CREATE TABLE `product_living_room` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_living_room`
--

INSERT INTO `product_living_room` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Sofa Bed', 'RS. 10999', 'living/download.jpg', 'Specifications: 2 cusions, Blue Color\r\nMaterial: Fabric\r\n'),
(2, 'Fabric Sofa Set', 'RS. 10799', 'living/download (1).jpg', 'Specifications: 2 Cusions, Grey Color\r\nMaterial: Fabric\r\n'),
(3, 'Rocking Chair', 'RS. 6520', 'living/download (2).jpg', 'Material: Wood, Leather'),
(4, 'Leatherette Chair', 'RS. 4999', 'living/download (3).jpg', 'Material: Leather, Steel'),
(5, 'Natural Curved Back Moris Chair', 'RS. 6599', 'living/download (4).jpg', 'Material: Fabric, Wood\r\n'),
(6, 'Shelby Chair', 'RS. 7560', 'living/download (5).jpg', 'Material: Velvet, Steel'),
(7, 'Wooden Center Table', 'RS. 3999', 'living/download (6).jpg', 'Material: Wood'),
(8, 'Fabric Sofa', 'RS. 17449', 'living/images.jpg', 'Material: Fabric, Wood'),
(9, 'Velvet Sofa', 'RS. 15699', 'living/images (1).jpg', 'Specifications: 3 round cusion, 3 square cusion\r\nMaterial: Wood, Velvet\r\n'),
(10, 'Marriott Wooden Sofa Set', 'RS. 29599', 'living/images (2).jpg', 'Specifications: 6 Pillows\r\nMaterial: Wood\r\n'),
(11, 'Corner Sofa Set & Center Table', 'RS. 18500', 'living/images (3).jpg', 'Specifications: 2 pillows\r\nMaterial: Wood, Fabric\r\n'),
(12, 'Leather Sofa', 'RS. 15999', 'living/images (4).jpg', 'Material: Wood, Leather'),
(13, 'Sofa Set', 'RS. 10499', 'living/images (5).jpg', 'Specifications: 4 Pillows\r\n Material: Fabric, Wood\r\n'),
(14, 'Dinning Chairs', 'RS. 4999', 'living/images (6).jpg', 'Specifications: Set of 2 Chairs\r\nMaterial: Wood, Leather\r\n'),
(15, 'Zurich Center Table', 'RS. 5499', 'living/images (7).jpg', 'Material: Wood, Metal'),
(16, 'Dinning Table & Chairs', 'RS. 8999', 'living/images (8).jpg', 'Specifications: Set of 2 Chairs with Dinning table\r\nMaterial: Wood\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_objects_and_figurines`
--

CREATE TABLE `product_objects_and_figurines` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_objects_and_figurines`
--

INSERT INTO `product_objects_and_figurines` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Rajasthani Musician Dolls', 'RS. 5100', 'Objects and figurines/download.jpg', 'Material: Brass\r\nSize: 6.6In x 5In\r\n'),
(2, 'Cartoon Dolls Figurines', 'RS. 1538', 'Objects and figurines/download (2).jpg', 'Material: Resin'),
(3, 'Nyrwana Plastic Monk Sculpture', 'RS.  999', 'Objects and figurines/images.jpg', 'Material: Polyresin'),
(4, 'Child Monk Showpiece', 'RS. 2999', 'Objects and figurines/images (1).jpg', 'Material: Polyresin, Ceramic\r\nSet of 4\r\n'),
(5, 'Sphere Showpiece', 'RS. 3600', 'Objects and figurines/images (2).jpg', 'Material: Stone\r\nSet of 3\r\n'),
(6, 'Laughing Buddha', 'RS. 1999', 'Objects and figurines/images (3).jpg', 'Material: Resin\r\nSize: 12.7 x 12.7 x 17.8cm\r\n'),
(7, 'Octopus Figurine', 'RS. 4583', 'Objects and figurines/images (4).jpg', 'Material: Aluminum\r\nSize: 13.5 x 18 x 15 inches\r\n'),
(8, 'Ganesha Idol Showpiece', 'RS. 1699', 'Objects and figurines/images (6).jpg', 'Material Wood\r\nSize: 18cm x 15cm x 15cm\r\n'),
(9, 'HEART SHOWPIECE', 'RS. 2609', 'Objects and figurines/images (7).jpg', 'Material: Wood, Stone'),
(10, 'JAGUAR SSHOWPIECE', 'RS. 3590', 'Objects and figurines/images (8).jpg', 'Material: Metal\r\nSize: 36 x 9.5 x 19cm\r\n'),
(11, 'BIRDS IN RING', 'RS. 1199', 'Objects and figurines/image (9).jpg', 'Material: Polyresin'),
(12, 'CAT DESIGN FIGURINE:', 'RS. 2025', 'Objects and figurines/images (5).jpg', 'Material: Resin');

-- --------------------------------------------------------

--
-- Table structure for table `product_photo_frames`
--

CREATE TABLE `product_photo_frames` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_photo_frames`
--

INSERT INTO `product_photo_frames` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'BUDDHA FRAME', 'RS. 1399', 'photo frames/images (1).jpg', 'Color: Multi\r\nSize: 40 In x 40 In\r\n'),
(2, 'OCEAN FRAME', 'RS. 3500', 'photo frames/images (2).jpg', 'Size: 40 In x 40 In'),
(3, 'SCENERY', 'RS. 3010', 'photo frames/images (3).jpg', 'Size: 16 In x 24 In'),
(4, 'FLYING WITCH FRAME', 'RS. 2423', 'photo frames/images (4).jpg', 'Semi Hard wood frame\r\n75in Thick\r\n'),
(5, 'FIVE PIECES CANVAS', 'RS. 3299', 'photo frames/images (5).jpg', 'Color: Multi\r\nSize: 24In H x 8In W x 5 panels'),
(6, 'METAL WALLART SCULPTURE', 'RS. 3597', 'photo frames/images (6).jpg', 'Material: Metal, Bronze, Wood'),
(7, 'SIGNFORD CANVAS', 'RS. 3010', 'photo frames/images (7).jpg', 'Size: 16 In x 24In white'),
(8, 'WOODEN FRAME', 'RS. 3601', 'photo frames/images (8).jpg', 'Material: Wooden\r\nShape: Rectangle\r\n'),
(9, 'TWO IN ONE FRAME', 'RS. 3699', 'photo frames/images (9).jpg', 'Size: 40In x 40In\r\nColor: Multi\r\n'),
(10, 'PHOTO FRAME', 'RS. 2999', 'photo frames/images.jpg', 'Size: 40In x 40In\r\nColor: Gold\r\n'),
(11, 'FAMILY PHOTO FRAME', 'RS. 2299', 'photo frames/images (10).jpg', 'Material: Synthetic Wood, Acrylic, PVC'),
(12, 'HANGING FRAME', 'RS. 1027', 'photo frames/download (1).jpg', 'Size: 7.5 x 4.5 x 7 cm\r\nMaterial: Resin with gold gilt paint edging\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_table_lamps`
--

CREATE TABLE `product_table_lamps` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_table_lamps`
--

INSERT INTO `product_table_lamps` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Drum Designer Lamp', 'RS. 1300', 'table lamps/download.jpg', 'Material: Iron'),
(2, 'Woven Lamp', 'RS. 2109', 'table lamps/download (3).jpg', 'Material: Wood, Wool'),
(3, 'Sphere & Stem Lamp ', 'RS. 3729', 'table lamps/images.jpg', 'Material: Metal body in an Antique Brass finish'),
(4, 'Multi Trendy Table Lamp', 'RS. 1499', 'table lamps/images (1).jpg', 'Material: Glass'),
(5, 'USB LED Lamp ', 'RS. 3999', 'table lamps/images (2).jpg', 'Material: ABS'),
(6, 'Venix Pro Uplight Wall Lamp', 'RS. 399', 'table lamps/images (3).jpg', 'Material: Plastic'),
(7, 'Table Lamp ', 'RS. 1998', 'table lamps/images (4).jpg', 'Material: Wood'),
(8, 'Tree Shaped Lamp ', 'RS. 1018', 'table lamps/images (5).jpg', 'Material: Plastic, Iron'),
(9, 'Modern Table Lamp', 'RS. 3871', 'table lamps/images(6).jpg', 'Material: Fabric'),
(10, 'Orange Metal Lamp', 'RS. 1684', 'table lamps/images (7).jpg', 'Material: Metal, Fabric'),
(11, 'Pen & Mobile Holder Lamp', 'RS. 2999', 'table lamps/images (8).jpg', '16 integrated LED'),
(12, 'Gainseville Beige Lamp', 'RS. 4600', 'table lamps/download (1).jpg', 'Material: Wood, Fabric');

-- --------------------------------------------------------

--
-- Table structure for table `product_vases`
--

CREATE TABLE `product_vases` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_vases`
--

INSERT INTO `product_vases` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'BLACK VASES', 'RS. 3690', 'vases/download (2).jpg', 'Material: Ceramic'),
(2, 'TRANSPARENT SPHERICAL VASES\r\n', 'RS. 1960', 'vases/download (3).jpg', 'Material: Glass'),
(3, 'Vase', 'RS. 3912', 'vases/images.jpg', 'Material: Ceramic\r\nSet of 2\r\n'),
(4, 'Elongated Vases', 'RS. 4609', 'vases/images (1).jpg', 'Material: Ceramic\r\nSet of 2\r\n\r\n'),
(5, 'Antique Vase', 'RS.2690', 'vases/images (2).jpg', 'Material: Ceramic'),
(6, 'Embossed Vases', 'RS. 2345', 'vases/images (3).jpg', 'Material: Ceramic'),
(7, 'Floral Printed Vases', 'RS. 3500', 'vases/images (4).jpg', 'Material: Ceramic'),
(8, 'Textured Metal Vases', 'RS. 3285', 'vases/images (5).jpg', 'Material: Metal'),
(9, 'Devotion Sky Blue Vase', 'RS. 5625', 'vases/images (6).jpg', 'Material: Ceramic\r\n\r\n'),
(10, 'Eva 2 Tone Vase', 'RS. 1445', 'vases/images (7).jpg', 'Material: Glass'),
(11, 'Red Colored Vase', 'RS. 3499', 'vases/images (8).jpg', 'Material: Glass, Metal\r\nSet of 2\r\n'),
(12, 'Chinese Vase', 'RS. 3692', 'vases/images (9).jpg', 'Material: Metal(Copper)');

-- --------------------------------------------------------

--
-- Table structure for table `product_wall_mirror`
--

CREATE TABLE `product_wall_mirror` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_wall_mirror`
--

INSERT INTO `product_wall_mirror` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'RECTANGULAR DRESSER MIRROR', 'RS. 2599', 'Wall mirror/images (1).jpg', 'Shape: Rectangle\r\nFinish: Grey\r\n'),
(2, 'WALL MIRROR', 'RS. 2500', 'Wall mirror/images (2).jpg', 'Shape: Rectangle'),
(3, 'DIAMOND MIRROR', 'RS. 954', 'Wall mirror/images (3).jpg', 'Material: Mirror, Copper foil, Solder\r\nSize: 5.9In H x 3.9In W'),
(4, 'HEXAGO WALL MIRROR', 'RS. 6999', 'Wall mirror/images (4).jpg', 'Shape: Hexagon\r\nFinish: Grey\r\n'),
(5, 'FEATHER TAPESTRY MIRROR', 'RS. 2129', 'Wall mirror/images (5).jpg', 'Size: 32x52 cm\r\nStyle: Nordic style\r\n'),
(6, 'BATHROOM MIRROR', 'RS. 1099', 'Wall mirror/images (6).jpg', 'Shape: Oval \r\nFrameless\r\n'),
(7, 'STATI D\'ANIMO\r\n\r\n', 'RS. 3499\r\n', 'Wall mirror/images.jpg', 'Type: Mirrors'),
(8, 'MIRROR WALL HANGING', 'RS. 1350', 'Wall mirror/download.jpg', 'Shape: Round'),
(9, 'SILOAM DRESSER MIRROR', 'RS. 4799', 'Wall mirror/images (7).jpg', 'Finish: Gold'),
(10, 'DRESSER MIRROR', 'RS. 3699', 'Wall mirror/images (8).jpg', 'Shape: Rectangle\r\nFinish: Rose gold\r\n'),
(11, 'CIRCLE MIRROR', 'RS. 2110', 'Wall mirror/images (10).jpg', 'Frameless\r\nShape: Circle\r\n'),
(12, 'DECORATIVE MIRROR', 'RS. 1899', 'Wall mirror/images (9).jpg', 'Frameless');

-- --------------------------------------------------------

--
-- Table structure for table `product_wall_plates`
--

CREATE TABLE `product_wall_plates` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_wall_plates`
--

INSERT INTO `product_wall_plates` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Dragon Designed Plate', 'RS. 2100', 'wall plates/images (1).jpg', 'Diameter: 8in'),
(2, 'Antique Royal Plates', 'RS. 4600', 'wall plates/images (2).jpg', 'Diameter:24cm'),
(3, 'Flower Printed Plates', 'RS. 1560', 'wall plates/images (3).jpg', 'Material: Ceramic\r\nDiameter: 24.9cm\r\n'),
(4, 'Majestic Paisley Plate', 'RS. 1349', 'wall plates/images (4).jpg', 'Material: Ceramic\r\nDiameter: 10in\r\n'),
(5, 'Arabic Wall Plates', 'RS. 2054', 'wall plates/images (5).jpg', 'Diameter: 29.4cm'),
(6, 'Tin Wall Plaques', 'RS. 3989', 'wall plates/images (6).jpg', 'Size: 14in'),
(7, 'Multicolor Ceramic Plate', 'RS. 1299', 'wall plates/images (7).jpg', 'Diameter: 8in'),
(8, 'Vintage Decorative Plate', 'RS. 1360', 'wall plates/images (8).jpg', 'Diameter: 9in\r\nMaterial: Ceramic\r\n'),
(9, 'Antique Japanese Wall Plates', 'RS. 12599', 'wall plates/images (11).jpg', 'Size: 25.4Diameter x 1W(cm)'),
(10, 'Wall Plate', 'RS. 9909', 'wall plates/images.jpg', 'Diameter: 25.9cm\r\nMaterial: Ceramic\r\n'),
(11, 'Tree Of Life', 'RS. 2400', 'wall plates/download (1).jpg', 'Hand printed Waterproof\r\nDiameter: 9in\r\n'),
(12, 'Antique Wall Plates', 'RS. 6955', 'wall plates/download.jpg', 'Material: Brass & Tin');

-- --------------------------------------------------------

--
-- Table structure for table `product_wind_chimes`
--

CREATE TABLE `product_wind_chimes` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_wind_chimes`
--

INSERT INTO `product_wind_chimes` (`id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Cup and Saucer Wind Chime', 'RS. 699.00', 'Wind chimes/download.jpg', 'Material: Ceramic'),
(2, 'Black Hanging Bells', 'RS. 370.00', 'Wind chimes/download (2).jpg', 'Material: Ceramic\r\nArt type: Hand Crafted\r\n'),
(3, 'Love Angle Wind Chime', 'RS. 1699.00', 'Wind chimes/images (1).jpg', 'Material: Metal & Glass'),
(4, 'Wind Chime Bell', 'RS. 599.00', 'Wind chimes/images (2).jpg', 'Material: Metal'),
(5, 'Wooden Nursery Wind Chime', 'RS. 220.00', 'Wind chimes/images (3).jpg', 'Material: Acrylic'),
(6, 'Pagan Wind Chime', 'RS. 850.00', 'Wind chimes/images (4).jpg', 'Material: Metal,  Wooden Beads'),
(7, 'Swaying with Robins Wind Chime', 'RS. 1399.00', 'Wind chimes/images.jpg', 'Material: Metal\r\nArt Type: Hand Crafted & Hand Painted\r\n'),
(8, 'Bronze Tubes Yard', 'RS. 259.00', 'Wind chimes/images (5).jpg', 'Material: Metal'),
(9, 'Caldipree Bamboo', 'RS. 999.00', 'Wind chimes/images (9).jpg', 'Material: Wood'),
(10, 'Garden Wind Bell Hanging', 'RS. 499.00', 'Wind chimes/images (6).jpg', 'Material: Metal, Wood'),
(11, 'Metal Tube Wind Chime', 'RS. 499.00', 'Wind chimes/images (7).jpg', 'Material: Metal'),
(12, 'Parrot Bell Wind Chime', 'RS. 450.00', 'Wind chimes/images 10.jpg', 'Material: Metal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(4, 'admin', 'admin@admin.com', '7815696ecbf1c96e6894b779456d330e'),
(5, 'aayushi', 'aayushishah.2507@gmail.com', '1e904e335d984ee4b4c145743102d4ce');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_bedroom`
--
ALTER TABLE `product_bedroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_bookends`
--
ALTER TABLE `product_bookends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_candle_ware`
--
ALTER TABLE `product_candle_ware`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_carpet_and_rugs`
--
ALTER TABLE `product_carpet_and_rugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ceiling_and_wall_lights`
--
ALTER TABLE `product_ceiling_and_wall_lights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_chandelier`
--
ALTER TABLE `product_chandelier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_clocks`
--
ALTER TABLE `product_clocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_figurine_lamps`
--
ALTER TABLE `product_figurine_lamps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_garden_stools`
--
ALTER TABLE `product_garden_stools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_jars`
--
ALTER TABLE `product_jars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_living_room`
--
ALTER TABLE `product_living_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_objects_and_figurines`
--
ALTER TABLE `product_objects_and_figurines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_photo_frames`
--
ALTER TABLE `product_photo_frames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_table_lamps`
--
ALTER TABLE `product_table_lamps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_vases`
--
ALTER TABLE `product_vases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_wall_mirror`
--
ALTER TABLE `product_wall_mirror`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_wall_plates`
--
ALTER TABLE `product_wall_plates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_wind_chimes`
--
ALTER TABLE `product_wind_chimes`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `product_bedroom`
--
ALTER TABLE `product_bedroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_bookends`
--
ALTER TABLE `product_bookends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_candle_ware`
--
ALTER TABLE `product_candle_ware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_carpet_and_rugs`
--
ALTER TABLE `product_carpet_and_rugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_ceiling_and_wall_lights`
--
ALTER TABLE `product_ceiling_and_wall_lights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_chandelier`
--
ALTER TABLE `product_chandelier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_clocks`
--
ALTER TABLE `product_clocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_figurine_lamps`
--
ALTER TABLE `product_figurine_lamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_garden_stools`
--
ALTER TABLE `product_garden_stools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_jars`
--
ALTER TABLE `product_jars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_living_room`
--
ALTER TABLE `product_living_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_objects_and_figurines`
--
ALTER TABLE `product_objects_and_figurines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_photo_frames`
--
ALTER TABLE `product_photo_frames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_table_lamps`
--
ALTER TABLE `product_table_lamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_vases`
--
ALTER TABLE `product_vases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_wall_mirror`
--
ALTER TABLE `product_wall_mirror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_wall_plates`
--
ALTER TABLE `product_wall_plates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_wind_chimes`
--
ALTER TABLE `product_wind_chimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
