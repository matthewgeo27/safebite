-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2024 at 09:34 PM
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
-- Database: `safebite`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergies`
--

CREATE TABLE `allergies` (
  `allergy_id` int(11) NOT NULL,
  `name` varchar(126) NOT NULL,
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allergies`
--

INSERT INTO `allergies` (`allergy_id`, `name`, `description`) VALUES
(1, 'Peanuts', 'Allergy to peanuts and peanut-based products.'),
(2, 'Treenuts', 'Allergy to tree nuts such as almonds, walnuts, etc.'),
(3, 'Dairy', 'Allergy to dairy products like milk, cheese, and butter.'),
(4, 'Gluten', 'Allergy or intolerance to gluten, found in wheat, barley, etc.'),
(5, 'Eggs', 'Allergy to eggs and egg-based products.'),
(6, 'Soy', 'Allergy to soy and soy-based products.');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `food_item_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`food_item_id`, `restaurant_id`, `name`, `description`, `price`) VALUES
(1, 1, 'Grilled Chicken Salad', 'Freshly grilled chicken with mixed greens, tomatoes, and cucumbers.', 13),
(2, 1, 'Allergy-Free Burger', 'Juicy beef burger with lettuce, tomato, and a gluten-free bun.', 11),
(3, 2, 'Nut-Free Granola', 'Oats, honey, and dried fruits without any nuts.', 5),
(4, 2, 'Vegan Wrap', 'Whole wheat wrap with hummus, avocado, and mixed veggies.', 8),
(5, 3, 'Gluten-Free Pasta', 'Rice-based pasta with marinara sauce and fresh basil.', 11),
(6, 3, 'Dairy-Free Pizza', 'Thin crust pizza with dairy-free cheese and tomato sauce.', 13);

-- --------------------------------------------------------

--
-- Table structure for table `food_Item_allergies`
--

CREATE TABLE `food_Item_allergies` (
  `food_item_id` int(11) NOT NULL,
  `allergy_id` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_Item_allergies`
--

INSERT INTO `food_Item_allergies` (`food_item_id`, `allergy_id`) VALUES
(1, '3'),
(2, '4'),
(3, '5'),
(4, '6'),
(5, '4'),
(6, '3');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(126) NOT NULL,
  `address` varchar(256) NOT NULL,
  `phone_number` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `name`, `address`, `phone_number`, `email`) VALUES
(1, 'The Safe Plate', '123 Allergy-Free Lane, Food City', '555-1234', 'info@thesafeplate.com'),
(2, 'Healthy Bites', '456 Nut-Free Blvd, Veggie Town', '555-5678', 'contact@healthybites.com'),
(3, 'No Worries Diner', '789 Gluten-Free Road, AllergyVille', '555-9012', 'support@noworriesdiner.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`allergy_id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`food_item_id`);

--
-- Indexes for table `food_Item_allergies`
--
ALTER TABLE `food_Item_allergies`
  ADD PRIMARY KEY (`food_item_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergies`
--
ALTER TABLE `allergies`
  MODIFY `allergy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `food_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_Item_allergies`
--
ALTER TABLE `food_Item_allergies`
  MODIFY `food_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
