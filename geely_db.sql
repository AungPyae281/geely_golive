-- --------------------------------------------------------
-- Host:                         therestpos.com
-- Server version:               5.7.42-cll-lve - MySQL Community Server - (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for geely_db1
CREATE DATABASE IF NOT EXISTS `geely_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `geely_db`;

-- Dumping structure for table geely_db1.account_transfer
DROP TABLE IF EXISTS `account_transfer`;
CREATE TABLE IF NOT EXISTS `account_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_code_from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `transfer_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `upload_receipt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.advance
DROP TABLE IF EXISTS `advance`;
CREATE TABLE IF NOT EXISTS `advance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `due_days` int(11) NOT NULL DEFAULT '0',
  `gl_code_to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `advance_by` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `upload_receipt` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping structure for table geely_db1.advance_claim
DROP TABLE IF EXISTS `advance_claim`;
CREATE TABLE IF NOT EXISTS `advance_claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_receipt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `advance_claim_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.approval
DROP TABLE IF EXISTS `approval`;
CREATE TABLE IF NOT EXISTS `approval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `main_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_no` int(11) NOT NULL DEFAULT '0',
  `process` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `approve_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.approval_assign
DROP TABLE IF EXISTS `approval_assign`;
CREATE TABLE IF NOT EXISTS `approval_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process` varchar(100) NOT NULL DEFAULT '' COMMENT 'Confirm Order',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `approval_staff_id` int(11) NOT NULL DEFAULT '0',
  `permission_edit` tinyint(4) NOT NULL DEFAULT '0',
  `order_no` int(11) NOT NULL DEFAULT '0',
  `condition` varchar(50) NOT NULL DEFAULT '' COMMENT 'AND, OR',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping structure for table geely_db1.bank_account
DROP TABLE IF EXISTS `bank_account`;
CREATE TABLE IF NOT EXISTS `bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bank_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `branch` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `swift_code` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_no` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opening_balance` float NOT NULL DEFAULT '0',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.bank_account_transfer
DROP TABLE IF EXISTS `bank_account_transfer`;
CREATE TABLE IF NOT EXISTS `bank_account_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_code_from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount_from` float NOT NULL DEFAULT '0',
  `amount_to` float NOT NULL DEFAULT '0',
  `exchange_rate` float NOT NULL DEFAULT '0',
  `upload_receipt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.brand
DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.brand: ~4 rows (approximately)
INSERT INTO `brand` (`id`, `brand`) VALUES
	(1, 'Geely'),
	(2, 'FAW');

-- Dumping structure for table geely_db1.broker
DROP TABLE IF EXISTS `broker`;
CREATE TABLE IF NOT EXISTS `broker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `dob` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nrc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `register_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.broker_bank_account
DROP TABLE IF EXISTS `broker_bank_account`;
CREATE TABLE IF NOT EXISTS `broker_bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `broker_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.car_list
DROP TABLE IF EXISTS `car_list`;
CREATE TABLE IF NOT EXISTS `car_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model_year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grade_id` int(11) NOT NULL DEFAULT '0',
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_power` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `interior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exterior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.car_outbound_transfer
DROP TABLE IF EXISTS `car_outbound_transfer`;
CREATE TABLE IF NOT EXISTS `car_outbound_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_stock_id` int(11) NOT NULL DEFAULT '0',
  `from_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `transfer_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `estimated_arrival_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `transporter_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `transporter_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.car_price_change
DROP TABLE IF EXISTS `car_price_change`;
CREATE TABLE IF NOT EXISTS `car_price_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_list_id` int(11) NOT NULL DEFAULT '0',
  `date_from` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_to` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `old_vehicle_price` int(11) NOT NULL DEFAULT '0',
  `vehicle_price` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.car_stock
DROP TABLE IF EXISTS `car_stock`;
CREATE TABLE IF NOT EXISTS `car_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_list_id` int(11) NOT NULL DEFAULT '0',
  `production_order_id` int(11) NOT NULL DEFAULT '0',
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_id` int(11) NOT NULL DEFAULT '0',
  `lot_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bl_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `import_license_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bounded_approval_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_power` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `interior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exterior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vin_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stock_status` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.car_stock_transfer
DROP TABLE IF EXISTS `car_stock_transfer`;
CREATE TABLE IF NOT EXISTS `car_stock_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_stock_id` int(11) NOT NULL DEFAULT '0',
  `from` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `transfer_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `transfer_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `arrival_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `arrival_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `estimated_arrival_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `departure_mileage` int(11) NOT NULL DEFAULT '0',
  `departure_fuel_level` int(11) NOT NULL DEFAULT '0',
  `arrival_mileage` int(11) NOT NULL DEFAULT '0',
  `arrival_fuel_level` int(11) NOT NULL DEFAULT '0',
  `transfer_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver_id` int(11) NOT NULL DEFAULT '0',
  `transporter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inspection_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inspection_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.currency
DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.currency: ~4 rows (approximately)
INSERT INTO `currency` (`id`, `currency`) VALUES
	(1, 'USD'),
	(2, 'SGD'),
	(3, 'CNY'),
	(4, 'MMK');

-- Dumping structure for table geely_db1.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `staff_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_center` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nrc_no` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dob` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vehicle_of_interest` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btc_am` tinyint(1) NOT NULL DEFAULT '0',
  `btc_pm` tinyint(1) NOT NULL DEFAULT '0',
  `soi_phone_inout` tinyint(1) NOT NULL DEFAULT '0',
  `soi_facebook` tinyint(1) NOT NULL DEFAULT '0',
  `soi_advert` tinyint(1) NOT NULL DEFAULT '0',
  `soi_road_show` tinyint(1) NOT NULL DEFAULT '0',
  `soi_television` tinyint(1) NOT NULL DEFAULT '0',
  `soi_website` tinyint(1) NOT NULL DEFAULT '0',
  `soi_existing_customer` tinyint(1) NOT NULL DEFAULT '0',
  `soi_review` tinyint(1) NOT NULL DEFAULT '0',
  `soi_walkin` tinyint(1) NOT NULL DEFAULT '0',
  `soi_car_magazine` tinyint(1) NOT NULL DEFAULT '0',
  `soi_broker` tinyint(1) NOT NULL DEFAULT '0',
  `soi_other` tinyint(1) NOT NULL DEFAULT '0',
  `soi_other_remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `needs_requirements` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimate_delivery_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `close_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `case_close` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_telephone_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `home_phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pcm_mobile` tinyint(1) NOT NULL DEFAULT '0',
  `pcm_email` tinyint(1) NOT NULL DEFAULT '0',
  `pcm_other` tinyint(1) NOT NULL DEFAULT '0',
  `business` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `township` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vip` tinyint(4) NOT NULL DEFAULT '0',
  `customer_history` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cv_model_year` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cv_rtad_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cv_mileage` int(11) NOT NULL DEFAULT '0',
  `cv_vehicle_as_commercial` tinyint(1) NOT NULL DEFAULT '0',
  `cvd_outstanding_payments` tinyint(1) NOT NULL DEFAULT '0',
  `cv_private` tinyint(4) NOT NULL DEFAULT '0',
  `cv_business` tinyint(4) NOT NULL DEFAULT '0',
  `cv_off_road` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cv_travelling` tinyint(4) NOT NULL DEFAULT '0',
  `cv_dislike_about_car` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cv_would_you_like_to_have_that_not_already_have` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cv_annual_usage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cv_who_will_be_using_vehicle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lifestyle_family_members` int(11) NOT NULL DEFAULT '0',
  `lifestyle_dream_brand` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lifestyle_dream_car` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lifestyle_interested_model` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lifestyle_hobbies_interests` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lifestyle_expectations_of_new_vehicle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ls_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.delivery_note
DROP TABLE IF EXISTS `delivery_note`;
CREATE TABLE IF NOT EXISTS `delivery_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vin_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `colour_ext_int` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registration_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_person` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `generate_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `generate_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.department
DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.department: ~9 rows (approximately)
INSERT INTO `department` (`id`, `department`) VALUES
	(7, 'PAL Management - HO'),
	(8, 'Brand & Sales Management'),
	(9, 'Aftersales Management'),
	(10, 'Service'),
	(11, 'Marketing'),
	(12, 'SCM & Import & Logistics'),
	(13, 'HR & Admin'),
	(14, 'Finance');

-- Dumping structure for table geely_db1.deposit_receipt
DROP TABLE IF EXISTS `deposit_receipt`;
CREATE TABLE IF NOT EXISTS `deposit_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_bank_or_cash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `r_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `r_payment_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receipt_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receipt_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.deposit_refund
DROP TABLE IF EXISTS `deposit_refund`;
CREATE TABLE IF NOT EXISTS `deposit_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_bank_or_cash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT '0',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.driver
DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nrc_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `license_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.due_date_setting
DROP TABLE IF EXISTS `due_date_setting`;
CREATE TABLE IF NOT EXISTS `due_date_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `due_day` int(11) NOT NULL DEFAULT '0',
  `due_hour` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.due_date_setting: ~2 rows (approximately)
INSERT INTO `due_date_setting` (`id`, `process`, `due_day`, `due_hour`) VALUES
	(1, 'Deposit Collect', 3, 0),
	(2, 'Payment (Sales)', 30, 0),
	(3, 'Payment (After Sales)', 2, 0);

-- Dumping structure for table geely_db1.exchange_rate
DROP TABLE IF EXISTS `exchange_rate`;
CREATE TABLE IF NOT EXISTS `exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'USD, SGD, CNY',
  `rate` float NOT NULL DEFAULT '0' COMMENT 'MMK',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.exterior_color
DROP TABLE IF EXISTS `exterior_color`;
CREATE TABLE IF NOT EXISTS `exterior_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.exterior_color: ~4 rows (approximately)
INSERT INTO `exterior_color` (`id`, `color`) VALUES
	(1, 'Black'),
	(2, 'White'),
	(3, 'Silver'),
	(4, 'Green');

-- Dumping structure for table geely_db1.gl_account
DROP TABLE IF EXISTS `gl_account`;
CREATE TABLE IF NOT EXISTS `gl_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` int(11) NOT NULL DEFAULT '0',
  `max_amount` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.gl_account: ~12 rows (approximately)
INSERT INTO `gl_account` (`id`, `type`, `category`, `gl_code`, `name`, `min_amount`, `max_amount`, `entry_by`, `entry_date_time`) VALUES
	(1, 'Current Asset', 'Advance', '3004/002', 'Advance (Geely)', 0, 0, 'smo', '2023-06-30 13:43:38'),
	(2, 'Current Asset', 'Advance', '3004/010', 'Advance (Faw)', 0, 0, 'smo', '2023-06-30 13:43:52'),
	(3, 'Current Asset', 'Advance', '3009/000', 'Staff Advance', 0, 0, 'smo', '2023-06-30 13:44:07'),
	(4, 'Current Asset', 'Advance', '3009/003', 'Khin Aye Mu - Advance', 0, 0, 'smo', '2023-06-30 13:46:35'),
	(5, 'Current Asset', 'Advance', '3009/004', 'Khin Tun(U)- Advance', 0, 0, 'smo', '2023-06-30 13:46:44'),
	(6, 'Current Asset', 'Advance', '3100/002', 'Advance IT', 0, 0, 'smo', '2023-06-30 13:47:02'),
	(9, 'Current Asset', 'Bank', '3015/003', 'MAB - 0020123002030170015', 0, 0, 'smo', '2023-06-30 13:48:12'),
	(10, 'Current Asset', 'Bank', '3015/004', 'AYA (Special Current-10004165034)', 0, 0, 'smo', '2023-06-30 13:49:01'),
	(11, 'Current Asset', 'Bank', '3015/005', 'MCB USD - 000110010004693', 0, 0, 'smo', '2023-06-30 13:49:37'),
	(14, 'Current Asset', 'Cash', '1000/001', 'Cash in Hand-MDY', 1000000, 3000000, 'smo', '2023-06-30 13:54:21'),
	(15, 'Current Asset', 'Cash', '1000/002', 'Main Cash - YGN', 2000000, 10000000, 'smo', '2023-06-30 13:54:52'),
	(16, 'Current Asset', 'Cash', '1000/004', 'YGN Showroom - Cash In Hand', 2000000, 10000000, 'smo', '2023-06-30 13:55:21'),
	(17, 'Current Asset', 'Customer', '4013/001', 'Deposit', 0, 0, 'smo', '2023-07-03 14:42:02'),
	(18, 'Current Asset', 'Customer', '4013/002', 'Advance Payment', 0, 0, 'smo', '2023-07-03 14:42:12'),
	(19, 'Current Asset', 'Customer', '4013/003', 'Payment', 0, 0, 'smo', '2023-07-15 19:08:47');

-- Dumping structure for table geely_db1.gl_category
DROP TABLE IF EXISTS `gl_category`;
CREATE TABLE IF NOT EXISTS `gl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.gl_category: ~6 rows (approximately)
INSERT INTO `gl_category` (`id`, `type`, `category`) VALUES
	(1, 'Current Asset', 'Bank'),
	(2, 'Current Asset', 'Cash'),
	(3, 'Current Asset', 'Advance'),
	(4, 'Current Asset', 'Supplier'),
	(5, 'Current Asset', 'Customer'),
	(6, 'Current Asset', 'Expense'),
	(7, 'Current Asset', 'Income');

-- Dumping structure for table geely_db1.gl_type
DROP TABLE IF EXISTS `gl_type`;
CREATE TABLE IF NOT EXISTS `gl_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.gl_type: ~23 rows (approximately)
INSERT INTO `gl_type` (`id`, `type`) VALUES
	(1, 'Accounts Payable'),
	(2, 'Accounts Receivable'),
	(3, 'Bank'),
	(4, 'Bank Revaluations'),
	(5, 'Current Asset'),
	(6, 'Current Liability'),
	(7, 'Direct Costs'),
	(8, 'Equity'),
	(9, 'Expense'),
	(10, 'Fixed Asset'),
	(11, 'Historical Adjustment'),
	(12, 'Inventory'),
	(13, 'Non-Current Asset'),
	(14, 'Other Income'),
	(15, 'Realized Currency Gains'),
	(16, 'Retained Earnings'),
	(17, 'Revenue'),
	(18, 'Rounding'),
	(19, 'Sales Tax'),
	(20, 'Tracking'),
	(21, 'Unpaid Expense Claims'),
	(22, 'Unrealized Currency Gains'),
	(23, 'Wages Payable');

-- Dumping structure for table geely_db1.grade
DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL DEFAULT '0',
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_power` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rtad_tax` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.interior_color
DROP TABLE IF EXISTS `interior_color`;
CREATE TABLE IF NOT EXISTS `interior_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.interior_color: ~3 rows (approximately)
INSERT INTO `interior_color` (`id`, `color`) VALUES
	(1, 'Red + Black'),
	(2, 'Orange + Black'),
	(3, 'Black');

-- Dumping structure for table geely_db1.lookup_category
DROP TABLE IF EXISTS `lookup_category`;
CREATE TABLE IF NOT EXISTS `lookup_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.lookup_category: ~8 rows (approximately)
INSERT INTO `lookup_category` (`id`, `category`) VALUES
	(1, 'Work Preparation'),
	(2, 'Visual Inspection'),
	(3, 'Check the engine compartment'),
	(4, 'Check chassis'),
	(5, 'Driving test'),
	(6, 'Final check & Clean'),
	(7, 'Appearance remark: the damaged part of the car body is marked with red pen in the picture below'),
	(8, 'Nameless');

-- Dumping structure for table geely_db1.lookup_category_cl_name
DROP TABLE IF EXISTS `lookup_category_cl_name`;
CREATE TABLE IF NOT EXISTS `lookup_category_cl_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_list_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_no` int(11) NOT NULL DEFAULT '0',
  `group_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.lookup_category_cl_name: ~8 rows (approximately)
INSERT INTO `lookup_category_cl_name` (`id`, `check_list_name`, `category_id`, `category`, `order_no`, `group_order`) VALUES
	(1, 'PDI', 1, 'Work Preparation', 1, 1),
	(2, 'PDI', 2, 'Visual Inspection', 2, 1),
	(3, 'PDI', 3, 'Check the engine compartment', 3, 1),
	(4, 'PDI', 4, 'Check chassis', 4, 2),
	(5, 'PDI', 5, 'Driving test', 5, 2),
	(6, 'PDI', 6, 'Final check & Clean', 6, 2),
	(7, 'PDI', 7, 'Appearance remark: the damaged part of the car body is marked with red pen in the picture below', 7, 2),
	(8, 'PDI', 8, 'Nameless', 8, 2);

-- Dumping structure for table geely_db1.lookup_check_list
DROP TABLE IF EXISTS `lookup_check_list`;
CREATE TABLE IF NOT EXISTS `lookup_check_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subcategory_id` int(11) NOT NULL DEFAULT '0',
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `check_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '- Check Box\r\n- Text Box\r\n- Date\r\n- Car Sheet',
  `order_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.lookup_check_list: ~86 rows (approximately)
INSERT INTO `lookup_check_list` (`id`, `category_id`, `category`, `subcategory_id`, `subcategory`, `check_list`, `type`, `order_no`) VALUES
	(1, 1, 'Work Preparation', 0, '', '01. Tyre gauge, Torque wrench, Tire socket, multimeter, Tools', 'Check Box', 1),
	(2, 1, 'Work Preparation', 0, '', '02. Chair cover, Steering wheel cover, foot pad, fender pad, cotton cloth', 'Check Box', 2),
	(3, 1, 'Work Preparation', 0, '', '⚫03. Install accessories', 'Check Box', 3),
	(4, 1, 'Work Preparation', 0, '', '04. Battary detector', 'Check Box', 4),
	(5, 1, 'Work Preparation', 0, '', '05. Check safety compliance sticker, VIN, Engine number, vehicle identification label', 'Check Box', 5),
	(6, 2, 'Visual Inspection', 1, 'Vehicle peripheral inspection', '01. Body paint, glass', 'Check Box', 6),
	(7, 2, 'Visual Inspection', 1, 'Vehicle peripheral inspection', '02. Check wheel rims deformation/scratch', 'Check Box', 7),
	(8, 2, 'Visual Inspection', 1, 'Vehicle peripheral inspection', '03. Grab handle', 'Check Box', 8),
	(9, 2, 'Visual Inspection', 1, 'Vehicle peripheral inspection', '04. Mirror and glass', 'Check Box', 9),
	(10, 2, 'Visual Inspection', 1, 'Vehicle peripheral inspection', '05. Headlight surface, Taillight surface', 'Check Box', 10),
	(11, 2, 'Visual Inspection', 1, 'Vehicle peripheral inspection', '06. Hub trim cover plate(If equipped)', 'Check Box', 11),
	(12, 2, 'Visual Inspection', 1, 'Vehicle peripheral inspection', '07. Door/glass seal rubber strip(No breakage, damage)', 'Check Box', 12),
	(13, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '01. Check the warning light, Horn(Key, Headlight)', 'Check Box', 13),
	(14, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '02. Check the engine performance, Stability, Noise and Vibration', 'Check Box', 14),
	(15, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '03. Working condition of electrical components', 'Check Box', 15),
	(16, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Headlights, clearance lights, Daytime running light, console lights', 'Check Box', 16),
	(17, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Tail lamp, License plate lamp', 'Check Box', 17),
	(18, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Stop lamp, BAckup lamp', 'Check Box', 18),
	(19, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Turning light lamp, Alarm lamp', 'Check Box', 19),
	(20, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Windshield wiper, Wipper nozzle, Horn', 'Check Box', 20),
	(21, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Defogging function, Cigarette lighter', 'Check Box', 21),
	(22, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Clock(Set time)', 'Check Box', 22),
	(23, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Sun Visor, Makeup light, Makeup mirror', 'Check Box', 23),
	(24, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Interior light', 'Check Box', 24),
	(25, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '&nbsp;&nbsp;&nbsp;&nbsp;- Car sunroof operation', 'Check Box', 25),
	(26, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '04. Check the inner mirror, Outer mirror(adjustable)', 'Check Box', 26),
	(27, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '05. Check the steering wheel operation', 'Check Box', 27),
	(28, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '06. Multimedia language Settings, Mobile phone connection, FM functions Instrument language, time, each function indicator light', 'Check Box', 28),
	(29, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '07. Check the storage containers, customer materials and cup holders', 'Check Box', 29),
	(30, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '08. Check the operation and contamiantion of seats and seat belts', 'Check Box', 30),
	(31, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '09. Check if the engine cover, trunk and fuel hole cover can be opened normally', 'Check Box', 31),
	(32, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '10. Check the operation of the wndow glass lifter', 'Check Box', 32),
	(33, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '11. Check the door lock, Keyless entry system', 'Check Box', 33),
	(34, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '12. Check the child safety lock switch', 'Check Box', 34),
	(35, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '13. Check the trunk light', 'Check Box', 35),
	(36, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '14. Inspection of turnk lining and padding', 'Check Box', 36),
	(37, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '15. Check the air pressure and immobilization of ther spare tire', 'Check Box', 37),
	(38, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '16. Check the hydraulitc turck jack, tool package, tripods and traction hooks', 'Check Box', 38),
	(39, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '17. Check ther hood and door clearance', 'Check Box', 39),
	(40, 2, 'Visual Inspection', 2, 'Inspection of body electrical, interior, instrument indication', '18. EPD, AUTO-HOLD', 'Check Box', 40),
	(41, 3, 'Check the engine compartment', 0, '', '01. Check the quantity and quality of oil', 'Check Box', 41),
	(42, 3, 'Check the engine compartment', 0, '', '&nbsp;&nbsp;&nbsp;&nbsp;- Engine oil', 'Check Box', 42),
	(43, 3, 'Check the engine compartment', 0, '', '&nbsp;&nbsp;&nbsp;&nbsp;- Steering pump oil pressure(Non-electronic power steering)', 'Check Box', 43),
	(44, 3, 'Check the engine compartment', 0, '', '&nbsp;&nbsp;&nbsp;&nbsp;- Brake Fluid', 'Check Box', 44),
	(45, 3, 'Check the engine compartment', 0, '', '&nbsp;&nbsp;&nbsp;&nbsp;- Cooling liquid', 'Check Box', 45),
	(46, 3, 'Check the engine compartment', 0, '', '02. Check the tubing connections and leakage.', 'Check Box', 46),
	(47, 3, 'Check the engine compartment', 0, '', '03. Check the installation of battery pile head', 'Check Box', 47),
	(48, 3, 'Check the engine compartment', 0, '', '04. Measure the battery voltage(standard value>=12.5v), and use the battery detector to test and print and save the test results', 'Check Box', 48),
	(49, 3, 'Check the engine compartment', 0, '', '05. Check the Battery level', 'Check Box', 49),
	(50, 3, 'Check the engine compartment', 0, '', '06. Wiring harness and plug(no extrusion, loosening)', 'Check Box', 50),
	(51, 4, 'Check chassis', 0, '', '01. The torque of the tire nut', 'Check Box', 51),
	(52, 4, 'Check chassis', 0, '', '02. Adjust the tire pressure', 'Check Box', 52),
	(53, 4, 'Check chassis', 0, '', '03. Check tire damage', 'Check Box', 53),
	(54, 4, 'Check chassis', 0, '', '04. Install accessories', 'Check Box', 54),
	(55, 4, 'Check chassis', 0, '', '05. Check the brake hose, ABS Sensor connector', 'Check Box', 55),
	(56, 4, 'Check chassis', 0, '', '06. Check the oil leakage', 'Check Box', 56),
	(57, 4, 'Check chassis', 0, '', '07. Check the mounting and fastening of chassis bolts', 'Check Box', 57),
	(58, 4, 'Check chassis', 0, '', '08. Check the chassis damage and rust', 'Check Box', 58),
	(59, 4, 'Check chassis', 0, '', '09. Check the exhaust pipe is fixed', 'Check Box', 59),
	(60, 4, 'Check chassis', 0, '', '10. Check the dust jacket on the drive shaft', 'Check Box', 60),
	(61, 5, 'Driving test', 0, '', '01. Check the pedals are working properly', 'Check Box', 61),
	(62, 5, 'Driving test', 0, '', '02. Check the engine starting and idling', 'Check Box', 62),
	(63, 5, 'Driving test', 0, '', '03. Driving performance(accelerate, constant speed, decelerate, sensitivity, etc.)', 'Check Box', 63),
	(64, 5, 'Driving test', 0, '', '04. Check the working condition of instrument panel and indicator light', 'Check Box', 64),
	(65, 5, 'Driving test', 0, '', '05. Check the clutch and transmission bridge', 'Check Box', 65),
	(66, 5, 'Driving test', 0, '', '06. Check the brake performance, abnormal noise, parking brake', 'Check Box', 66),
	(67, 5, 'Driving test', 0, '', '07. Check the situation of steering', 'Check Box', 67),
	(68, 5, 'Driving test', 0, '', '08. Check the sound insulation, noise, vibration and stability', 'Check Box', 68),
	(69, 5, 'Driving test', 0, '', '09. Check the air conditions and heating unit for proper operation', 'Check Box', 69),
	(70, 5, 'Driving test', 0, '', '10. Check the Parking camera, radar system', 'Check Box', 70),
	(71, 6, 'Final check & Clean', 0, '', '01. Remove the car label and cover', 'Check Box', 71),
	(72, 6, 'Final check & Clean', 0, '', '⚫02. Check the installation and deface of the car interior', 'Check Box', 72),
	(73, 6, 'Final check & Clean', 0, '', '⚫03. Confirm the relevant materials such as driving manual', 'Check Box', 73),
	(74, 6, 'Final check & Clean', 0, '', '04. Car washing(Interior, Exteriors)', 'Check Box', 74),
	(75, 6, 'Final check & Clean', 0, '', '05. Use an exclusive diagnostic device to check out the fault codes', 'Check Box', 75),
	(76, 6, 'Final check & Clean', 0, '', '06. Check the warning lights', 'Check Box', 76),
	(77, 6, 'Final check & Clean', 0, '', '07. Set up maintenance mileage using a special diagnostic instrument', 'Check Box', 77),
	(78, 7, 'Appearance remark: the damaged part of the car body is marked with red pen in the picture below', 0, '', 'https://clusclient.com/geelydemo/img/car-sheet.png', 'Car Sheet', 78),
	(79, 8, 'Nameless', 0, '', 'Job Card', 'Text Box', 79),
	(80, 8, 'Nameless', 0, '', 'Engine Number', 'Text Box', 80),
	(81, 8, 'Nameless', 0, '', 'Inspector', 'Text Box', 81),
	(82, 8, 'Nameless', 0, '', 'Quality Inspector', 'Text Box', 82),
	(83, 8, 'Nameless', 0, '', 'VIN', 'Text Box', 83),
	(84, 8, 'Nameless', 0, '', 'kilo', 'Text Box', 84),
	(85, 8, 'Nameless', 0, '', 'Retailer', 'Text Box', 85),
	(86, 8, 'Nameless', 0, '', 'Date', 'Date', 86);

-- Dumping structure for table geely_db1.lookup_subcategory
DROP TABLE IF EXISTS `lookup_subcategory`;
CREATE TABLE IF NOT EXISTS `lookup_subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.lookup_subcategory: ~3 rows (approximately)
INSERT INTO `lookup_subcategory` (`id`, `category_id`, `category`, `subcategory`) VALUES
	(1, 2, 'Visual Inspection', 'Vehicle peripheral inspection'),
	(2, 2, 'Visual Inspection', 'Inspection of body electrical, interior, instrument indication'),
	(4, 3, 'Check the engine compartment', 'Vehicle peripheral inspection');

-- Dumping structure for table geely_db1.model
DROP TABLE IF EXISTS `model`;
CREATE TABLE IF NOT EXISTS `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model_year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.nrc_code
DROP TABLE IF EXISTS `nrc_code`;
CREATE TABLE IF NOT EXISTS `nrc_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `states_divisions_code` int(11) NOT NULL DEFAULT '0',
  `townships_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table geely_db1.nrc_code: 429 rows
/*!40000 ALTER TABLE `nrc_code` DISABLE KEYS */;
INSERT INTO `nrc_code` (`id`, `states_divisions_code`, `townships_code`) VALUES
	(1, 1, 'SaBaTa'),
	(2, 1, 'SaDaNa'),
	(3, 1, 'YaBaYa'),
	(4, 1, 'KaPaTa'),
	(5, 1, 'PaWaNa'),
	(6, 1, 'KaMaTa'),
	(7, 1, 'MaLaNa'),
	(8, 1, 'AhGaYa'),
	(9, 1, 'BaMaNa'),
	(10, 1, 'DaPhaYa'),
	(11, 1, 'HaPaNa'),
	(12, 1, 'KaMaNa'),
	(13, 1, 'KhaBaDa'),
	(14, 1, 'KhaLaPha'),
	(15, 1, 'KhaPhaNa'),
	(16, 1, 'LaGaNa'),
	(17, 1, 'MaKaNa'),
	(18, 1, 'MaKaTa'),
	(19, 1, 'MaKhaBa'),
	(20, 1, 'MaMaNa'),
	(21, 1, 'NaMaNa'),
	(22, 1, 'MaNyaNa'),
	(23, 1, 'MaSaNa'),
	(24, 1, 'PaNaDa'),
	(25, 1, 'PaTaAh'),
	(26, 1, 'SaLaNa'),
	(27, 1, 'SaPaBa'),
	(28, 1, 'TaNaNa'),
	(29, 1, 'WaMaNa'),
	(30, 1, 'YaKaNa'),
	(31, 2, 'BaLaKha'),
	(32, 2, 'DaMaSa'),
	(33, 2, 'LaKaNa'),
	(34, 2, 'MaSaNa'),
	(35, 2, 'PhaSaNa'),
	(36, 2, 'PhaYaSa'),
	(37, 2, 'YaTaNa'),
	(38, 2, 'YaThaNa'),
	(39, 3, 'YaYaTha'),
	(40, 3, 'LaThaNa'),
	(41, 3, 'BaGaLa'),
	(42, 3, 'KaMaMa'),
	(43, 3, 'SaKaLa'),
	(44, 3, 'WaLaMa'),
	(45, 3, 'BaAhNa'),
	(46, 3, 'BaThaSa'),
	(47, 3, 'KaSaKa'),
	(48, 3, 'KaDaNa'),
	(49, 3, 'KaKaYa'),
	(50, 3, 'LaBaNa'),
	(51, 3, 'MaWaTa'),
	(52, 3, 'PaKaNa'),
	(53, 3, 'PhaPaNa'),
	(54, 3, 'ThaTaKa'),
	(55, 3, 'ThaTaNa'),
	(56, 4, 'SaMaNa'),
	(57, 4, 'HaKhaNa'),
	(58, 4, 'HtaTaLa'),
	(59, 4, 'KaKhaNa'),
	(60, 4, 'KaPaLa'),
	(61, 4, 'MaTaNa'),
	(62, 4, 'MaTaPa'),
	(63, 4, 'PaLaWa'),
	(64, 4, 'PhaLaNa'),
	(65, 4, 'TaTaNa'),
	(66, 4, 'TaZaNa'),
	(67, 4, 'YaKhaDa'),
	(68, 4, 'YaZaNa'),
	(69, 5, 'KhaPaNa'),
	(70, 5, 'DaHaNa'),
	(71, 5, 'MaPaLa'),
	(72, 5, 'HtaPaKha'),
	(73, 5, 'SaMaYa'),
	(74, 5, 'AhTaNa'),
	(75, 5, 'AhYaTa'),
	(76, 5, 'BaMaNa'),
	(77, 5, 'BaTaLa'),
	(78, 5, 'DaPaYa'),
	(79, 5, 'HaMaLa'),
	(80, 5, 'HtaKhaNa'),
	(81, 5, 'KaBaLa'),
	(82, 5, 'KaLaHta'),
	(83, 5, 'KaLaNa'),
	(84, 5, 'KaLaTa'),
	(85, 5, 'KaLaWa'),
	(86, 5, 'KaNaNa'),
	(87, 5, 'KaMaNa'),
	(88, 5, 'KhaTaNa'),
	(89, 5, 'KaThaNa'),
	(90, 5, 'KhaOuNa'),
	(91, 5, 'KhaOuTa'),
	(92, 5, 'LaHaNa'),
	(93, 5, 'LaYaNa'),
	(94, 5, 'MaKaNa'),
	(95, 5, 'MaLaNa'),
	(96, 5, 'MaMaTa'),
	(97, 5, 'MaThaNa'),
	(98, 5, 'NaYaNa'),
	(99, 5, 'NgaZaNa'),
	(100, 5, 'PaLaNa'),
	(101, 5, 'PaSaNa'),
	(102, 5, 'SaKaNa'),
	(103, 5, 'SaLaKa'),
	(104, 5, 'TaSaNa'),
	(105, 5, 'WaLaNa'),
	(106, 5, 'YaBaNa'),
	(107, 5, 'YaMaPa'),
	(108, 5, 'MaMaNa'),
	(109, 5, 'MaYaNa'),
	(110, 5, 'PaLaBa'),
	(111, 5, 'PhaPaNa'),
	(112, 5, 'TaMaNa'),
	(113, 5, 'WaThaNa'),
	(114, 5, 'YaOuNa'),
	(115, 6, 'KaLaAh'),
	(116, 6, 'PaLaTa'),
	(117, 6, 'PaKaMa'),
	(118, 6, 'BaPaNa'),
	(119, 6, 'HtaWaNa'),
	(120, 6, 'KaThaNa'),
	(121, 6, 'KaYaYa'),
	(122, 6, 'LaLaNa'),
	(123, 6, 'MaAhNa'),
	(124, 6, 'MaAhYa'),
	(125, 6, 'PaLaNa'),
	(126, 6, 'TaThaYa'),
	(127, 6, 'YaPhaNa'),
	(128, 6, 'MaMaNa'),
	(129, 6, 'KaSaNa'),
	(130, 6, 'KhaMaKa'),
	(131, 6, 'MaTaNa'),
	(132, 6, 'ThaYaKha'),
	(133, 7, 'AhPhaNa'),
	(134, 7, 'DaOuNa'),
	(135, 7, 'HtaTaPa'),
	(136, 7, 'KaPaKa'),
	(137, 7, 'KaTaKha'),
	(138, 7, 'LaPaTa'),
	(139, 7, 'MaLaNa'),
	(140, 7, 'NaTaLa'),
	(141, 7, 'NyaLaPa'),
	(142, 7, 'PaKhaNa'),
	(143, 7, 'PaMaNa'),
	(144, 7, 'PaTaNa'),
	(145, 7, 'PhaMaNa'),
	(146, 7, 'TaNgaNa'),
	(147, 7, 'ThaNaPa'),
	(148, 7, 'ThaWaTa'),
	(149, 7, 'YaKaNa'),
	(150, 7, 'YaTaNa'),
	(151, 7, 'ZaKaNa'),
	(152, 7, 'AhTaNa'),
	(153, 7, 'KaKaNa'),
	(154, 7, 'KaWaNa'),
	(155, 7, 'MaNyaNa'),
	(156, 7, 'PaKhaTa'),
	(157, 7, 'PaTaTa'),
	(158, 7, 'ThaKaNa'),
	(159, 7, 'WaMaNa'),
	(160, 7, 'YaTaYa'),
	(161, 8, 'MaHtaNa'),
	(162, 8, 'AhLaNa'),
	(163, 8, 'HtaLaNa'),
	(164, 8, 'KaHtaNa'),
	(165, 8, 'KhaMaNa'),
	(166, 8, 'MaBaNa'),
	(167, 8, 'MaLaNa'),
	(168, 8, 'MaMaNa'),
	(169, 8, 'MaTaNa'),
	(170, 8, 'NaMaNa'),
	(171, 8, 'NgaPhaNa'),
	(172, 8, 'PaMaNa'),
	(173, 8, 'PaPhaNa'),
	(174, 8, 'SaMaNa'),
	(175, 8, 'SaPaWa'),
	(176, 8, 'SaTaYa'),
	(177, 8, 'TaTaKa'),
	(178, 8, 'YaNaKha'),
	(179, 8, 'YaSaKa'),
	(180, 8, 'GaGaNa'),
	(181, 8, 'KaMaNa'),
	(182, 8, 'MaKaNa'),
	(183, 8, 'MaThaNa'),
	(184, 8, 'PaKhaKa'),
	(185, 8, 'SaLaNa'),
	(186, 8, 'SaPhaNa'),
	(187, 8, 'ThaYaNa'),
	(188, 9, 'NgaZaNa'),
	(189, 9, 'AhMaZa'),
	(190, 9, 'KaPaTa'),
	(191, 9, 'KaSaNa'),
	(192, 9, 'KhaMaSa'),
	(193, 9, 'LaWaNa'),
	(194, 9, 'MaHtaLa'),
	(195, 9, 'MaKaNa'),
	(196, 9, 'MaLaNa'),
	(197, 9, 'MaMaNa'),
	(198, 9, 'MaNaTa'),
	(199, 9, 'MaTaYa'),
	(200, 9, 'MaYaMa'),
	(201, 9, 'MaYaTa'),
	(202, 9, 'NgaThaYa'),
	(203, 9, 'NyaOuNa'),
	(204, 9, 'PaBaNa'),
	(205, 9, 'PaMaNa'),
	(206, 9, 'PaOuLa'),
	(207, 9, 'SaKaNa'),
	(208, 9, 'SaKaTa'),
	(209, 9, 'TaKaTa'),
	(210, 9, 'TaTaOu'),
	(211, 9, 'ThaPaKa'),
	(212, 9, 'ThaSaNa'),
	(213, 9, 'YaMaTha'),
	(214, 9, 'OuTaTha'),
	(215, 9, 'ZaYaTha'),
	(216, 9, 'PaBaTha'),
	(217, 9, 'DaKhaTha'),
	(218, 9, 'ZaBaTha'),
	(219, 9, 'AhMaYa'),
	(220, 9, 'KhaAhZa'),
	(221, 9, 'MaHaMa'),
	(222, 9, 'MaKhaNa'),
	(223, 9, 'MaNaMa'),
	(224, 9, 'MaThaNa'),
	(225, 9, 'NaHtaKa'),
	(226, 9, 'PaKaKha'),
	(227, 9, 'PaThaKa'),
	(228, 9, 'TaKaNa'),
	(229, 9, 'TaThaNa'),
	(230, 9, 'WaTaNa'),
	(231, 10, 'KhaZaNa'),
	(232, 10, 'BaLaNa'),
	(233, 10, 'KaMaYa'),
	(234, 10, 'KhaSaNa'),
	(235, 10, 'LaMaNa'),
	(236, 10, 'MaLaMa'),
	(237, 10, 'PaMaNa'),
	(238, 10, 'ThaPhaYa'),
	(239, 10, 'YaMaNa'),
	(240, 10, 'KaHtaNa'),
	(241, 10, 'MaDaNa'),
	(242, 10, 'ThaHtaNa'),
	(243, 11, 'TaPaWa'),
	(244, 11, 'BaThaTa'),
	(245, 11, 'GaMaNa'),
	(246, 11, 'KaPhaNa'),
	(247, 11, 'KaTaNa'),
	(248, 11, 'MaAhNa'),
	(249, 11, 'MaAhTa'),
	(250, 11, 'MaPaTa'),
	(251, 11, 'MaOuNa'),
	(252, 11, 'MaPaNa'),
	(253, 11, 'MaTaNa'),
	(254, 11, 'PaNaKa'),
	(255, 11, 'PaTaNa'),
	(256, 11, 'SaTaNa'),
	(257, 11, 'TaKaNa'),
	(258, 11, 'ThaTaNa'),
	(259, 11, 'YaBaNa'),
	(260, 11, 'YaThaTa'),
	(261, 11, 'AhMaNa'),
	(262, 11, 'KaTaLa'),
	(263, 12, 'AhLaNa'),
	(264, 12, 'AhSaNa'),
	(265, 12, 'BaHaNa'),
	(266, 12, 'BaTaHta'),
	(267, 12, 'DaGaMa'),
	(268, 12, 'DaGaNa'),
	(269, 12, 'DaGaSa'),
	(270, 12, 'DaGaTa'),
	(271, 12, 'DaGaYa'),
	(272, 12, 'DaLaNa'),
	(273, 12, 'DaPaNa'),
	(274, 12, 'HtaTaPa'),
	(275, 12, 'KaKaKa'),
	(276, 12, 'KaKhaKa'),
	(277, 12, 'KaMaNa'),
	(278, 12, 'KaMaTa'),
	(279, 12, 'KaMaYa'),
	(280, 12, 'KaTaNa'),
	(281, 12, 'KaTaTa'),
	(282, 12, 'KhaYaNa'),
	(283, 12, 'LaKaNa'),
	(284, 12, 'LaMaNa'),
	(285, 12, 'LaMaTa'),
	(286, 12, 'LaThaNa'),
	(287, 12, 'LaThaYa'),
	(288, 12, 'MaBaNa'),
	(289, 12, 'MaGaDa'),
	(290, 12, 'MaGaTa'),
	(291, 12, 'MaYaKa'),
	(292, 12, 'OuKaMa'),
	(293, 12, 'OuKaTa'),
	(294, 12, 'PaBaTa'),
	(295, 12, 'PaZaTa'),
	(296, 12, 'SaKaKha'),
	(297, 12, 'SaKaNa'),
	(298, 12, 'SaKhaNa'),
	(299, 12, 'TaKaNa'),
	(300, 12, 'TaMaNa'),
	(301, 12, 'TaTaNa'),
	(302, 12, 'TaTaTa'),
	(303, 12, 'ThaGaKa'),
	(304, 12, 'ThaKaTa'),
	(305, 12, 'ThaKhaNa'),
	(306, 12, 'ThaLaNa'),
	(307, 12, 'YaKaNa'),
	(308, 12, 'YaPaTha'),
	(309, 13, 'KaTaLa'),
	(310, 13, 'NaTaYa'),
	(311, 13, 'KhaLaNa'),
	(312, 13, 'KaLaDa'),
	(313, 13, 'PaSaNa'),
	(314, 13, 'MaKaHta'),
	(315, 13, 'PaSaTa'),
	(316, 13, 'MaLaTa'),
	(317, 13, 'PaLaHta'),
	(318, 13, 'MaYaNa'),
	(319, 13, 'MaSaNa'),
	(320, 13, 'MaHtaNa'),
	(321, 13, 'AhTaNa'),
	(322, 13, 'HaMaNa'),
	(323, 13, 'HaPaNa'),
	(324, 13, 'HaPaTa'),
	(325, 13, 'KaHaNa'),
	(326, 13, 'KaKaNa'),
	(327, 13, 'KaKhaNa'),
	(328, 13, 'KaLaHta'),
	(329, 13, 'KaLaNa'),
	(330, 13, 'KaLaTa'),
	(331, 13, 'KaMaNa'),
	(332, 13, 'KaTaKa'),
	(333, 13, 'KaTaNa'),
	(334, 13, 'KaTaTa'),
	(335, 13, 'KaThaNa'),
	(336, 13, 'KhaYaHa'),
	(337, 13, 'LaKaNa'),
	(338, 13, 'LaKhaNa'),
	(339, 13, 'LaKhaTa'),
	(340, 13, 'LaLaNa'),
	(341, 13, 'LaYaNa'),
	(342, 13, 'MaBaNa'),
	(343, 13, 'MaHaYa'),
	(344, 13, 'MaKaNa'),
	(345, 13, 'MaKaTa'),
	(346, 13, 'MaKhaNa'),
	(347, 13, 'MaKhaTa'),
	(348, 13, 'MaLaNa'),
	(349, 13, 'MaMaHta'),
	(350, 13, 'MaMaNa'),
	(351, 13, 'MaMaTa'),
	(352, 13, 'MaNaNa'),
	(353, 13, 'MaNaTa'),
	(354, 13, 'MaNgaNa'),
	(355, 13, 'MaPaHta'),
	(356, 13, 'MaPaNa'),
	(357, 13, 'MaPaTa'),
	(358, 13, 'MaPhaNa'),
	(359, 13, 'MaPhaTa'),
	(360, 13, 'MaSaNa'),
	(361, 13, 'MaSaTa'),
	(362, 13, 'MaHtaTa'),
	(363, 13, 'MaTaNa'),
	(364, 13, 'MaTaTa'),
	(365, 13, 'MaYaHta'),
	(366, 13, 'MaYaTa'),
	(367, 13, 'MaYaNa'),
	(368, 13, 'MaYaTa'),
	(369, 13, 'NaKhaNa'),
	(370, 13, 'NaKhaTa'),
	(371, 13, 'NaMaTa'),
	(372, 13, 'NaPhaNa'),
	(373, 13, 'NaSaNa'),
	(374, 13, 'NaSaNa'),
	(375, 13, 'NaTaNa'),
	(376, 13, 'NyaYaNa'),
	(377, 13, 'PhaKhaNa'),
	(378, 13, 'PaLaNa'),
	(379, 13, 'PaLaTa'),
	(380, 13, 'PaPaKa'),
	(381, 13, 'PaTaYa'),
	(382, 13, 'PaWaNa'),
	(383, 13, 'PaYaNa'),
	(384, 13, 'SaSaNa'),
	(385, 13, 'TaKaNa'),
	(386, 13, 'TaKhaLa'),
	(387, 13, 'TaLaNa'),
	(388, 13, 'TaMaNya'),
	(389, 13, 'TaTaNa'),
	(390, 13, 'TaYaNa'),
	(391, 13, 'ThaNaNa'),
	(392, 13, 'ThaPaNa'),
	(393, 13, 'YaNgaNa'),
	(394, 13, 'YaSaNa'),
	(395, 14, 'KaKaHta'),
	(396, 14, 'AhGaPa'),
	(397, 14, 'AhMaNa'),
	(398, 14, 'AhMaTa'),
	(399, 14, 'BaKaLa'),
	(400, 14, 'DaDaYa'),
	(401, 14, 'DaNaPha'),
	(402, 14, 'HaKaKa'),
	(403, 14, 'HaThaTa'),
	(404, 14, 'KaKaTa'),
	(405, 14, 'KaKaNa'),
	(406, 14, 'KaKhaNa'),
	(407, 14, 'KaLaNa'),
	(408, 14, 'KaPaNa'),
	(409, 14, 'LaMaNa'),
	(410, 14, 'LaPaTa'),
	(411, 14, 'MaAhNa'),
	(412, 14, 'MaAhPa'),
	(413, 14, 'MaMaKa'),
	(414, 14, 'MaMaNa'),
	(415, 14, 'NgaPaTa'),
	(416, 14, 'NgaSaNa'),
	(417, 14, 'NgaThaKha'),
	(418, 14, 'NgaYaKa'),
	(419, 14, 'NyaTaNa'),
	(420, 14, 'PaSaLa'),
	(421, 14, 'PaTaNa'),
	(422, 14, 'PaThaNa'),
	(423, 14, 'PaThaYa'),
	(424, 14, 'PhaPaNa'),
	(425, 14, 'ThaPaNa'),
	(426, 14, 'WaKhaMa'),
	(427, 14, 'YaKaNa'),
	(428, 14, 'YaThaYa'),
	(429, 14, 'ZaLaNa');
/*!40000 ALTER TABLE `nrc_code` ENABLE KEYS */;

-- Dumping structure for table geely_db1.order
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `broker_id` int(11) NOT NULL DEFAULT '0',
  `broker_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vehicle_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vin_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exterior_color` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `interior_color` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_center` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vehicle_price` int(11) NOT NULL DEFAULT '0',
  `commercial_tax` int(11) NOT NULL DEFAULT '0',
  `rtad_tax` int(11) NOT NULL DEFAULT '0',
  `promotion_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `promotion_discount` int(11) NOT NULL DEFAULT '0',
  `selling_price` int(11) NOT NULL DEFAULT '0',
  `payment_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cash, HP, InHouse',
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_percent` int(11) NOT NULL DEFAULT '0',
  `payment_term` int(11) NOT NULL DEFAULT '0',
  `deposit` int(11) NOT NULL DEFAULT '0',
  `same_as_buyer` tinyint(4) NOT NULL DEFAULT '0',
  `rtad_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rtad_nrc_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rtad_mobile_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rtad_township` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company_register_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping structure for table geely_db1.payment
DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_bank_or_cash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `paid_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receive_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.payment_percent
DROP TABLE IF EXISTS `payment_percent`;
CREATE TABLE IF NOT EXISTS `payment_percent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.payment_percent: ~4 rows (approximately)
INSERT INTO `payment_percent` (`id`, `payment_percent`) VALUES
	(2, 30),
	(3, 40),
	(5, 20),
	(6, 50);

-- Dumping structure for table geely_db1.payment_term
DROP TABLE IF EXISTS `payment_term`;
CREATE TABLE IF NOT EXISTS `payment_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.payment_term: ~5 rows (approximately)
INSERT INTO `payment_term` (`id`, `payment_term`) VALUES
	(7, '12'),
	(8, '24'),
	(9, '36'),
	(10, '48'),
	(11, '60');

-- Dumping structure for table geely_db1.pdi_check_list
DROP TABLE IF EXISTS `pdi_check_list`;
CREATE TABLE IF NOT EXISTS `pdi_check_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_1` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_2` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_3` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_4` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_5` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_6` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_7` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_8` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_9` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_10` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_11` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_12` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_13` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_14` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_15` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_16` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_17` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_18` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_19` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_20` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_21` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_22` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_23` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_24` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_25` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_26` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_27` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_28` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_29` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_30` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_31` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_32` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_33` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_34` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_35` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_36` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_37` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_38` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_39` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_40` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_41` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_42` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_43` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_44` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_45` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_46` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_47` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_48` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_49` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_50` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_51` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_52` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_53` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_54` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_55` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_56` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_57` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_58` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_59` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_60` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_61` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_62` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_63` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_64` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_65` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_66` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_67` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_68` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_69` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_70` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_71` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_72` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_73` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_74` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_75` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_76` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_77` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_78` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_79` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_80` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_81` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_82` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_83` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_84` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_85` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cl_86` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.position
DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.position: ~64 rows (approximately)
INSERT INTO `position` (`id`, `department`, `position`) VALUES
	(10, 'PAL Management - HO', 'Chairman'),
	(11, 'PAL Management - HO', 'Chief Executive Officer'),
	(12, 'PAL Management - HO', 'GM'),
	(13, 'Brand & Sales Management', 'Sales Manager'),
	(14, 'Brand & Sales Management', 'Sales Admin Supervisor'),
	(15, 'Brand & Sales Management', 'Operation Supervisor'),
	(16, 'Brand & Sales Management', 'Dealer Development and Corporate Mgr'),
	(17, 'Brand & Sales Management', 'Dealer Development AM'),
	(18, 'Brand & Sales Management', 'Dealer Development Executive'),
	(19, 'Brand & Sales Management', 'Corporate Sales Executive'),
	(20, 'Brand & Sales Management', 'Sales Supervisor'),
	(21, 'Brand & Sales Management', 'Sales Executive'),
	(22, 'Brand & Sales Management', 'Sale Admin Executive'),
	(23, 'Brand & Sales Management', 'Sale Support'),
	(24, 'Brand & Sales Management', 'Cleaner'),
	(25, 'Brand & Sales Management', 'RTA Admin(Supply Chain)'),
	(26, 'Brand & Sales Management', 'Sales Admin'),
	(27, 'Brand & Sales Management', 'Cashier'),
	(28, 'Brand & Sales Management', 'Receptionist'),
	(29, 'Brand & Sales Management', 'Security Guard'),
	(30, 'Aftersales Management', 'Service Mgr'),
	(31, 'Aftersales Management', 'Parts Supervisor'),
	(32, 'Aftersales Management', 'Warranty Officer'),
	(33, 'Aftersales Management', 'Technical & Training Specialist'),
	(34, 'Aftersales Management', 'CRM Executive'),
	(35, 'Service', 'Service Manager'),
	(36, 'Service', 'Service Advisor'),
	(37, 'Service', 'Parts Supervisor'),
	(38, 'Service', 'Parts Specialist'),
	(39, 'Service', 'Senior Technician'),
	(40, 'Service', 'Technician'),
	(41, 'Service', 'Jr Texhnician'),
	(42, 'Service', 'Detailing Assistant'),
	(43, 'Service', 'Senior Service Advisor'),
	(44, 'Service', 'Trainee'),
	(45, 'Service', 'Cashier'),
	(46, 'Service', 'Security Guard'),
	(47, 'Marketing', 'Marketing Manager'),
	(48, 'Marketing', 'Asst. Marketing Manager(Digital Marketing)'),
	(49, 'Marketing', 'Graphic Designer'),
	(50, 'Marketing', 'Digirtal Marketing Specialist'),
	(51, 'Marketing', 'Marketing Executive'),
	(52, 'SCM & Import & Logistics', 'SCM Manager'),
	(53, 'SCM & Import & Logistics', 'Logistic Specialist'),
	(54, 'SCM & Import & Logistics', 'Custom Specialist'),
	(55, 'SCM & Import & Logistics', 'Import License Specialist'),
	(56, 'SCM & Import & Logistics', 'YGN RTA Admin'),
	(57, 'SCM & Import & Logistics', 'MDY RTA Admin'),
	(58, 'HR & Admin', 'HR & Admin Manager'),
	(59, 'HR & Admin', 'HR & Admin Specialist'),
	(60, 'HR & Admin', 'IT Supervisor'),
	(61, 'HR & Admin', 'Fleet & Admin Executive'),
	(62, 'HR & Admin', 'M & E Supervisor'),
	(63, 'HR & Admin', 'HR & Admin Supervisor'),
	(64, 'HR & Admin', 'HR & Admin Executive'),
	(65, 'HR & Admin', 'Driver'),
	(66, 'Finance', 'Finance Manager'),
	(67, 'Finance', 'Chief Accountant'),
	(68, 'Finance', 'Faw Finance'),
	(69, 'Finance', 'Geely Finance'),
	(70, 'Finance', 'Faw Cashier'),
	(71, 'Finance', 'Geely Cashier'),
	(72, 'Brand & Sales Management', 'Showroom Manager'),
	(73, 'SCM & Import & Logistics', 'Operation Supervisor'),
	(74, 'Brand & Sales Management', 'Brand Manager'),
	(75, 'Service', 'Junior Technician');

-- Dumping structure for table geely_db1.production_order
DROP TABLE IF EXISTS `production_order`;
CREATE TABLE IF NOT EXISTS `production_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_list_id` int(11) NOT NULL DEFAULT '0',
  `order_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `vehicle_price` int(11) NOT NULL DEFAULT '0',
  `invoice_amount` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.promotion
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount` int(11) NOT NULL DEFAULT '0',
  `date_from` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_to` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `terms_n_conditions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.purchase_permit
DROP TABLE IF EXISTS `purchase_permit`;
CREATE TABLE IF NOT EXISTS `purchase_permit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permit_submission_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permit_received_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nrc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_center` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ac_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `foreign_currency_balance` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `balance_date` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vehicle_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_power` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_of_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `commission` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `according_to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `other_nrc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `other_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping structure for table geely_db1.ready_to_deliver
DROP TABLE IF EXISTS `ready_to_deliver`;
CREATE TABLE IF NOT EXISTS `ready_to_deliver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ai_sidestep` tinyint(4) DEFAULT '0',
  `ai_floor_mat` tinyint(4) DEFAULT '0',
  `ai_power_tail_gate` tinyint(4) DEFAULT '0',
  `ai_other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wfi_60` tinyint(4) DEFAULT '0',
  `wfi_80` tinyint(4) DEFAULT '0',
  `wfi_other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `detailing_complete` tinyint(4) DEFAULT '0',
  `detailing_general` tinyint(4) DEFAULT '0',
  `gift` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.reject
DROP TABLE IF EXISTS `reject`;
CREATE TABLE IF NOT EXISTS `reject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `main_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_no` int(11) NOT NULL DEFAULT '0',
  `process` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reject_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.route
DROP TABLE IF EXISTS `route`;
CREATE TABLE IF NOT EXISTS `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dashboard` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `route` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `process` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `update` tinyint(4) NOT NULL DEFAULT '0',
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  `export` tinyint(4) NOT NULL DEFAULT '0',
  `print` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.route: ~80 rows (approximately)
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES
	(1, 'admin', 'Admin', 'admin/userrole.php', 'Userrole', 'Userrole Entry', 1, 0, 0, 0, 0, 0),
	(2, 'admin', 'Admin', 'admin/userrole.php?act=edit&dashboard=&name=', 'Userrole', 'Userrole Edit', 0, 0, 1, 0, 0, 0),
	(3, 'admin', 'Admin', 'admin/userrolelist.php', 'Userrole', 'Userrole List', 0, 1, 0, 1, 0, 0),
	(4, 'admin', 'Admin', 'admin/createaccount.php', 'User Define', 'Create New User', 1, 0, 0, 0, 0, 0),
	(5, 'admin', 'Admin', 'admin/userlist.php', 'User Define', 'User List', 0, 1, 0, 1, 0, 0),
	(6, 'admin', 'Admin', 'admin/createaccount.php?act=edit&id=', 'User Define', 'User Edit', 0, 0, 1, 0, 0, 0),
	(9, 'hr', 'HR', 'hr/staff.php', 'Staff', 'Staff Entry', 1, 0, 0, 0, 0, 0),
	(16, 'supply_chain', 'Logistic', 'supply_chain/production_order.php', 'Production Order', 'Production Order Entry', 1, 0, 0, 0, 0, 0),
	(17, 'sales', 'Logistic', 'supply_chain/car_stock.php', 'Car Stock', 'Car Stock Entry', 1, 0, 0, 0, 0, 0),
	(18, 'supply_chain', 'Logistic', 'supply_chain/supply_chain.php', 'Supply Chain Transfer', 'Supply Chain Entry', 1, 0, 0, 0, 0, 0),
	(19, 'supply_chain', 'Logistic', 'supply_chain/car_stock_transfer.php', 'Car Stock Transfer', 'Car Stock Transfer Entry', 1, 0, 0, 0, 0, 0),
	(20, 'finance', 'Finance', 'finance/define_price_production_car.php', 'Define Purchase Price', 'Purchase Price Entry', 1, 0, 0, 0, 0, 0),
	(21, 'finance', 'Finance', 'finance/car_price.php', 'Car Price', 'Car Price Entry', 1, 1, 1, 0, 0, 0),
	(22, 'supply_chain', 'Logistic', 'supply_chain/grade.php', 'New Model', 'Grade Entry', 1, 1, 0, 0, 0, 0),
	(23, 'supply_chain', 'Logistic', 'supply_chain/car_list.php', 'Car List', 'Car List Entry', 1, 1, 1, 0, 0, 0),
	(24, 'supply_chain', 'Logistic', 'supply_chain/test_drive_car.php', 'Test Drive Car', 'Test Drive Car Entry', 1, 1, 0, 1, 0, 0),
	(25, 'supply_chain', 'Logistic', 'supply_chain/brand.php', 'Brand', 'Brand Entry', 1, 1, 0, 0, 0, 0),
	(26, 'supply_chain', 'Logistic', 'supply_chain/model.php', 'Model', 'Model Entry', 1, 1, 0, 0, 0, 0),
	(28, 'supply_chain', 'Logistic', 'upload/upload_interior_color.php?for=interior&id=', 'Upload Interior Photo', 'Upload Interior Photo', 1, 1, 0, 1, 0, 0),
	(29, 'supply_chain', 'Logistic', 'upload/upload_exterior_color.php?for=exterior&id=', 'Upload Exterior Photo', 'Upload Exterior Photo', 1, 1, 0, 1, 0, 0),
	(30, 'finance', 'Finance', 'finance/rtad_tax_change.php', 'RTAD Tax', 'RTAD Tax Update', 1, 0, 0, 0, 0, 0),
	(32, 'hr', 'Sales', 'sales/showroom_assign.php', 'Showroom Assign', 'Showroom Assign', 1, 1, 0, 1, 0, 0),
	(33, 'sales', 'Sales', 'sales/showroom_assign.php', 'Showroom Assign', 'Showroom Assign', 1, 1, 0, 1, 0, 0),
	(34, 'sales', 'Sales', 'sales/customer_list.php', 'Customer Detail', 'Customer Detail List', 0, 1, 0, 0, 0, 0),
	(35, 'sales', 'Sales', 'sales/customer.php', 'Customer Detail', 'Customer Detail Entry', 1, 0, 0, 0, 0, 0),
	(36, 'sales', 'Sales', 'sales/customer.php?act=detail&rid=', 'Customer Detail', 'Customer Detail View', 0, 1, 0, 0, 0, 0),
	(37, 'sales', 'Sales', 'sales/customer.php?act=edit&cid=', 'Customer Detail', 'Customer Detail Edit', 0, 0, 1, 0, 0, 0),
	(38, 'sales', 'Sales', 'sales/order.php?act=entry&cid=', 'Order Detail', 'Order Detail Entry', 1, 0, 0, 0, 0, 0),
	(39, 'sales', 'Sales', 'sales/broker.php', 'Broker', 'Broker Entry', 1, 0, 0, 0, 0, 0),
	(40, 'sales', 'Sales', 'admin/broker.php?act=edit&bid=', 'Broker', 'Broker Edit', 0, 0, 1, 0, 0, 0),
	(41, 'sales', 'Payment Config', 'payment_config/promotion.php', 'Promotion', 'Promotion Entry', 1, 0, 0, 0, 0, 0),
	(42, 'sales', 'Sales', 'sales/se_assign.php', 'SE Assign', 'SE Assign', 1, 1, 0, 1, 0, 0),
	(43, 'sales', 'Sales', 'sales/order_processing_list.php', 'Order Detail', 'Order Detail List', 0, 1, 1, 0, 0, 0),
	(44, 'sales', 'Sales', 'sales/order_edit.php?act=edit&oc_no=', 'Order Detail', 'Order Detail Edit', 0, 1, 1, 0, 0, 0),
	(45, 'finance', 'Sales', 'sales/order_processing_list.php', 'Order Detail', 'Order Detail List', 0, 1, 1, 0, 0, 0),
	(46, 'finance', 'Sales', 'sales/order_edit.php?act=edit&oc_no=', 'Order Detail', 'Order Detail Edit', 0, 1, 1, 0, 0, 0),
	(47, 'sales', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(48, 'supply_chain', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(49, 'finance', 'Sales', 'sales/deposit_collect.php?act=edit&oc_no=', '2. Deposit Collect', 'Deposit Collect', 1, 1, 0, 0, 0, 0),
	(50, 'finance', 'Sales', 'sales/payment.php?act=edit&oc_no=', '3. Payment', 'Payment', 1, 1, 0, 0, 0, 0),
	(51, 'supply_chain', 'Sales', 'sales/supply_chain.php?act=edit&oc_no=', '4. Purchase Permit | RTA Appointment | Plate No.', 'Purchase Permit | RTA Appointment | Plate No.', 1, 1, 1, 1, 1, 0),
	(52, 'sales', 'Sales', 'sales/owner.php?act=edit&oc_no=', '5. Owner Info | Income Tax', 'Owner Info | Income Tax', 1, 1, 1, 1, 1, 0),
	(53, 'service', 'Sales', 'sales/fill_fuel.php?act=edit&oc_no=', '6. Fill the Fuel', 'Fill the Fuel', 1, 1, 0, 0, 0, 0),
	(54, 'service', 'Sales', 'sales/pdi_check_list.php?act=edit&oc_no=', '7. PDI Check List', 'PDI Check List', 1, 1, 0, 0, 0, 0),
	(55, 'service', 'Sales', 'sales/ready_to_deliver.php?act=edit&oc_no=', '8. Ready to Deliver', 'Ready to Deliver', 1, 1, 0, 0, 0, 0),
	(56, 'sales', 'Sales', 'sales/sales.php?act=edit&oc_no=', '9. Car Handover | Owner Book Handover', 'Car Handover | Owner Book Handover', 1, 1, 0, 0, 0, 0),
	(58, 'sales', 'Sales', 'sales/order_confirmation.php?act=entry&oc_no=', 'Order Confirmation', 'Order Confirmation Entry', 1, 0, 0, 0, 0, 0),
	(60, 'hr', 'HR', 'hr/approval_assign.php', 'Approval Assign', 'Approval Assign', 1, 1, 0, 1, 0, 0),
	(62, 'admin', 'Admin', 'admin/due_date_setting.php', 'Due Date Setting', 'Due Date Setting', 0, 1, 1, 0, 0, 0),
	(64, 'hr', 'HR', 'reports/staff.php', 'Staff Report', 'Staff Report', 0, 1, 1, 0, 1, 0),
	(65, 'service', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(66, 'finance', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(67, 'service', 'Service', 'service/promotion.php', 'Service Promotion', 'Service Promotion Entry', 1, 0, 0, 0, 0, 0),
	(68, 'service', 'Service', 'service/service_package.php', 'Service Package', 'Service Package Entry', 1, 0, 0, 0, 0, 0),
	(69, 'service', 'Service', 'service/service_item.php', 'Service Item', 'Service Item Entry', 1, 1, 1, 0, 0, 0),
	(70, 'service', 'Service', 'service/service_item_task.php', 'Service Item Task', 'Service Item Task Entry', 1, 1, 1, 0, 0, 0),
	(71, 'service', 'Service', 'service/service_center_bay.php', 'Service Center Bay', 'Service Center Bay Entry', 1, 1, 0, 0, 0, 0),
	(72, 'service', 'Service', 'service/service_bay_services.php', 'Service Bay Services', 'Service Bay Services Entry', 1, 1, 1, 0, 0, 0),
	(73, 'service', 'Service', 'service/service_center_store.php', 'Service Center Store', 'Service Center Store Entry', 1, 1, 0, 0, 0, 0),
	(74, 'finance', 'Finance', 'finance/exchange_rate.php', 'Exchange Rate', 'Exchange Rate Entry', 1, 1, 0, 0, 0, 0),
	(75, 'finance', 'Finance', 'finance/bank_account.php', 'Bank Account', 'Bank Account Entry', 1, 1, 0, 0, 0, 0),
	(76, 'finance', 'Finance', 'finance/bank_account_transfer.php', 'Bank Account Transfer', 'Bank Account Transfer', 1, 1, 0, 0, 0, 0),
	(77, 'finance', 'Finance', 'finance/account_transaction.php', 'Account Transaction', 'Account Transaction', 0, 1, 0, 0, 0, 0),
	(78, 'finance', 'Finance', 'finance/bank_account_transfer.php?act=entry&accno=', 'Bank Account Transfer', 'Bank Account Transfer', 1, 1, 0, 0, 0, 0),
	(79, 'finance', 'Finance', 'finance/gl_account.php', 'G/L Account', 'G/L Account', 1, 1, 0, 0, 0, 0),
	(80, 'finance', 'Finance', 'finance/advance.php', 'Advance Entry', 'Advance Entry', 1, 0, 0, 0, 0, 0),
	(81, 'finance', 'Finance', 'finance/account_transfer.php', 'Account Transfer', 'Account Transfer', 1, 0, 0, 0, 0, 0),
	(82, 'finance', 'Finance', 'finance/account_transaction.php?act=detail&glcode=', 'Account Transaction', 'Account Transaction', 0, 1, 0, 0, 0, 0),
	(83, 'finance', 'Finance', 'finance/invoices.php', 'Invoices', 'Invoices', 0, 1, 0, 0, 0, 0),
	(84, 'finance', 'Finance', 'finance/invoice_detail.php?act=detail&ivn=', 'Invoices', 'Invoices', 0, 1, 0, 0, 0, 0),
	(85, 'finance', 'Sales', 'reports/sales_finance.php', 'Sales Report', 'Sales Report', 0, 1, 0, 0, 0, 0),
	(86, 'finance', 'Finance', 'finance/deposit_refund.php?act=entry&oc_no=', 'Deposit Refund', 'Deposit Refund', 1, 0, 0, 0, 0, 0),
	(87, 'finance', 'Finance', 'finance/advance_claim.php', 'Advance Claim', 'Advance Claim', 1, 0, 0, 0, 0, 0),
	(88, 'finance', 'Finance', 'sales/sales_detail.php?act=detail&oc_no=', 'Sales Detail', 'Sales Detail', 0, 1, 0, 0, 0, 0),
	(89, 'service', 'Sparepart', 'sparepart/store.php', 'Store', 'Store Entry', 1, 1, 0, 0, 0, 0),
	(90, 'service', 'Sparepart', 'sparepart/sub_store.php', 'Sub Store', 'Sub Store Entry', 1, 1, 0, 0, 0, 0),
	(91, 'service', 'Sparepart', 'sparepart/store_stock_level.php', 'Store Stock Level', 'Store Stock Level Entry', 1, 1, 0, 0, 0, 0),
	(92, 'service', 'Sparepart', 'sparepart/group.php', 'Group', 'Group Entry', 1, 1, 0, 0, 0, 0),
	(93, 'service', 'Sparepart', 'sparepart/sub_group.php', 'Sub Group', 'Sub Group Entry', 1, 1, 0, 0, 0, 0),
	(94, 'service', 'Sparepart', 'sparepart/sparepart.php', 'Sparepart', 'Sparepart Entry', 1, 0, 0, 0, 0, 0),
	(96, 'service', 'Sparepart', 'upload/upload_sparepart.php?for=sparepart&code=', 'Upload Sparepart Photo', 'Upload Sparepart Photo', 1, 1, 0, 0, 0, 0),
	(97, 'service', 'Sparepart', 'sparepart/sparepart.php?act=edit&code=', 'Sparepart', 'Sparepart Edit', 0, 0, 1, 0, 0, 0),
	(98, 'service', 'Sparepart', 'reports/sparepart.php', 'Sparepart', 'Sparepart Report', 0, 1, 0, 0, 0, 0),
	(99, 'service', 'Service', 'service/promotion.php?act=edit&id=', 'Service Promotion', 'Service Promotion Edit', 0, 0, 1, 0, 0, 0),
	(100, 'service', 'Service', 'reports/service_promotion.php', 'Service Promotion', 'Service Promotion Report', 0, 1, 0, 0, 0, 0),
	(101, 'service', 'Service', 'service/survey.php', 'Survey', 'Survey Entry', 1, 0, 0, 0, 0, 0),
	(102, 'service', 'Service', 'reports/service_customer.php', 'Service Customer', 'Service Customer Report', 0, 1, 0, 0, 0, 0),
	(103, 'service', 'Service', 'service/service_customer_car.php?act=entry&id=', 'Service Customer Car', 'Service Customer Car Entry', 1, 0, 0, 0, 0, 0),
	(104, 'service', 'Service', 'service/service_car.php?act=entry&cid=', 'Service Car', 'Service Car Entry', 1, 0, 0, 0, 0, 0),
	(105, 'service', 'Service', 'service/service_car.php', 'Service Car', 'Service Car Entry', 1, 0, 0, 0, 0, 0),
	(106, 'service', 'Service', 'reports/service_car.php', 'Service Car', 'Service Car Report', 0, 1, 0, 0, 0, 0),
	(107, 'service', 'Service', 'service/service_appointment_list.php', 'Service Appointment', 'Service Appointment List', 0, 1, 0, 0, 0, 0),
	(108, 'service', 'Service', 'service/service_appointment.php', 'Service Appointment', 'Service Appointment Entry', 1, 0, 0, 0, 0, 0),
	(109, 'service', 'Service', 'service/inspection.php?act=entry&id=', 'Inspection', 'Inspection Entry', 1, 0, 0, 0, 0, 0),
	(110, 'service', 'Service', 'service/inspection.php?act=edit&id=', 'Inspection', 'Inspection Edit', 0, 0, 1, 0, 0, 0),
	(111, 'service', 'Service', 'service/servicing_list.php', 'Servicing List', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(112, 'service', 'Service', 'service/service.php?act=entry&id=', 'Service', 'Service Entry', 1, 0, 0, 0, 0, 0),
	(113, 'service', 'Service', 'service/service.php?act=edit&id=', 'Service', 'Service Edit', 0, 0, 1, 0, 0, 0),
	(114, 'service', 'Service', 'service/service_customer.php?act=entry&s=', 'Service Customer', 'Service Customer Entry', 1, 0, 0, 0, 0, 0),
	(115, 'service', 'Service', 'service/job_card.php?act=entry&id=', 'Job Card', 'Job Card', 1, 0, 0, 0, 0, 0),
	(116, 'service', 'Service', 'service/final_inspection.php?act=entry&id=', 'Final Inspection', 'Final Inspection Entry', 1, 0, 0, 0, 0, 0),
	(117, 'service', 'Sparepart', 'service/issue_note.php?act=entry&id=', 'Issue Note', 'Issue Note', 0, 1, 0, 0, 0, 0),
	(118, 'service', 'Sparepart', 'sparepart/sparepart_issue_note.php', 'Issue Note', 'Issue Note Entry', 1, 0, 0, 0, 0, 0),
	(119, 'service', 'Sparepart', 'sparepart/sparepart_waiting_list.php', 'Waiting List', 'Waiting List', 0, 1, 0, 0, 0, 0),
	(120, 'service', 'Service', 'reports/warranty_car.php', 'Warranty Car', 'Warranty Car Report', 0, 1, 0, 0, 0, 0),
	(121, 'service', 'Service', 'reports/service.php', 'Service', 'Service Report', 0, 1, 0, 0, 0, 0),
	(122, 'service', 'Sparepart', 'sparepart/sp_waiting_list.php', 'Waiting List', 'Waiting List', 0, 1, 0, 0, 0, 0),
	(123, 'service', 'Sparepart', 'sparepart/sparepart_pre_order.php?act=entry&id=', 'Pre Order', 'Pre Order Entry', 1, 0, 0, 0, 0, 0),
	(124, 'service', 'Sparepart', 'sparepart/sparepart_waiting_list.php', 'Waiting List', 'Waiting List', 1, 0, 0, 0, 0, 0),
	(125, 'service', 'Sparepart', 'sparepart/sparepart_waiting_list.php?act=edit&id=', 'Waiting List', 'Waiting List', 0, 0, 1, 0, 0, 0),
	(126, 'service', 'Sparepart', 'sparepart/sparepart_order.php', 'Order', 'Order Entry', 1, 0, 0, 0, 0, 0),
	(127, 'service', 'Sparepart', 'sparepart/sparepart_pre_order.php?act=detail&id=', 'Pre Order', 'Pre Order Detail', 0, 1, 0, 0, 0, 0),
	(128, 'service', 'Sparepart', 'sparepart/sparepart_receiving.php', 'Receiving', 'Receiving Entry', 1, 0, 0, 0, 0, 0),
	(129, 'service', 'Sparepart', 'sparepart/sparepart_stock_out.php', 'Stock Out', 'Stock Out Entry', 1, 1, 0, 1, 0, 0),
	(130, 'service', 'Sparepart', 'sparepart/sparepart_stock_transfer.php', 'Stock Transfer', 'Stock Transfer Entry', 1, 0, 0, 0, 0, 0),
	(131, 'service', 'Sparepart', 'sparepart/sparepart_stock_receive.php', 'Stock Receive', 'Stock Receive Entry', 1, 0, 0, 0, 0, 0),
	(132, 'service', 'Sparepart', 'sparepart/sparepart_stock_return.php', 'Stock Return', 'Stock Return Entry', 1, 0, 0, 0, 0, 0),
	(133, 'sales', 'Sales', 'print/order_confirmation_print.php?act=print&oc_no=', 'Order Confirmation', 'Order Confirmation Print', 0, 0, 0, 0, 0, 1),
	(134, 'service', 'Service', 'service/service_center_assign.php', 'Service Center Assign', 'Service Center Assign Entry', 1, 1, 1, 0, 0, 0),
	(135, 'finance', 'Sparepart', 'finance/sparepart_pre_order_list.php', 'Pre Order List', 'Pre Order List', 0, 1, 0, 0, 0, 0),
	(136, 'finance', 'Sparepart', 'finance/sparepart_pre_order_payment.php?act=entry&id=', 'Pre Order Payment', 'Pre Order Payment Entry', 1, 1, 0, 0, 0, 0),
	(137, 'finance', 'Service', 'finance/servicing_list.php', 'Servicing List', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(138, 'finance', 'Service', 'finance/servicing_detail.php?act=detail&id=', 'Servicing List', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(139, 'finance', 'Finance', 'finance/invoice_detail_service.php?act=detail&id=', 'Invoices', 'Invoices', 0, 1, 0, 0, 0, 0),
	(140, 'finance', 'Finance', 'service/exist_form.php?act=entry&id=', 'Exist Form', 'Exist Form', 0, 1, 0, 0, 0, 0),
	(141, 'sales', 'Sales', 'reports/sales_s.php', 'Sales Report', 'Sales Report', 0, 1, 0, 0, 1, 0),
	(142, 'sales', 'Sales', 'reports/order_s.php', 'Order Report', 'Order Report', 0, 1, 0, 0, 1, 0),
	(143, 'sales', 'Sales', 'reports/customer_s.php', 'Customer Report', 'Customer Report', 0, 1, 0, 0, 1, 0),
  (144, 'sales', 'Sales', 'sales/sales_detail.php?act=detail&oc_no=', 'Sales Detail', 'Sales Detail', 0, 1, 0, 0, 0, 0),
  (145, 'sales', 'Sales', 'sales/order_detail.php?act=detail&oc_no=', 'Order Detail', 'Order Detail', 0, 1, 0, 0, 0, 0);

-- Dumping structure for table geely_db1.rtad_tax_change_log
DROP TABLE IF EXISTS `rtad_tax_change_log`;
CREATE TABLE IF NOT EXISTS `rtad_tax_change_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL DEFAULT '0',
  `change_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oc_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `broker_id` int(11) NOT NULL DEFAULT '0',
  `broker_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vehicle_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vin_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exterior_color` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `interior_color` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_center` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vehicle_price` int(11) NOT NULL DEFAULT '0',
  `commercial_tax` int(11) NOT NULL DEFAULT '0',
  `rtad_tax` int(11) NOT NULL DEFAULT '0',
  `promotion_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `promotion_discount` int(11) NOT NULL DEFAULT '0',
  `selling_price` int(11) NOT NULL DEFAULT '0',
  `payment_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cash, HP, InHouse',
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_percent` int(11) NOT NULL DEFAULT '0',
  `payment_term` int(11) NOT NULL DEFAULT '0',
  `deposit` int(11) NOT NULL DEFAULT '0',
  `same_as_buyer` tinyint(4) NOT NULL DEFAULT '0',
  `rtad_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rtad_nrc_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rtad_mobile_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rtad_township` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company_register_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `dc_due_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_due_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `additional_discount` int(11) NOT NULL DEFAULT '0',
  `dc_nrc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_census` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_bl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_custom_statement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_purchase_permit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_income_tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_rta_fees_slip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_sale_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_sale_contract` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_delivery_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_owner_book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dc_others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pp_done` tinyint(4) NOT NULL DEFAULT '0',
  `it_done` tinyint(4) NOT NULL DEFAULT '0',
  `appt_done` tinyint(4) NOT NULL DEFAULT '0',
  `pn_done` tinyint(4) NOT NULL DEFAULT '0',
  `ff_done` tinyint(4) NOT NULL DEFAULT '0',
  `pdi_done` tinyint(4) NOT NULL DEFAULT '0',
  `rtd_done` tinyint(4) NOT NULL DEFAULT '0',
  `income_tax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Claim or Payment',
  `income_tax_amount` int(11) NOT NULL DEFAULT '0',
  `it_submission_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `it_received_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appointment_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appointment_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rta_office_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `special_plate` tinyint(4) NOT NULL DEFAULT '0',
  `plate_no_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fuel_amount` int(11) NOT NULL DEFAULT '0',
  `handover_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `handover_vehicle_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `owner_book_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `processing` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Deposit Collect,\r\nPayment,\r\nPurchase Permit,\r\nIncome Tax,\r\nRTA Appointment,\r\nPlate Number,\r\nFill the Fuel,\r\nPDI Check List,\r\nReady to Deliver,\r\nCar Handover,\r\nOwner Book Handover,\r\n''''',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping structure for table geely_db1.sales_center
DROP TABLE IF EXISTS `sales_center`;
CREATE TABLE IF NOT EXISTS `sales_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.sales_center: 8 rows
/*!40000 ALTER TABLE `sales_center` DISABLE KEYS */;
INSERT INTO `sales_center` (`id`, `name`, `is_delete`) VALUES
	(4, 'Mandalay', 0),
	(5, 'Junction Square', 0),
	(6, 'Ygn Main Show Room', 0),
	(7, 'Capital Hypermarket', 0),
	(8, 'Ever Thrive', 0);
/*!40000 ALTER TABLE `sales_center` ENABLE KEYS */;

-- Dumping structure for table geely_db1.service
DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appointment_id` int(11) NOT NULL DEFAULT '0',
  `service_car_id` int(11) NOT NULL DEFAULT '0',
  `service_customer_id` int(11) NOT NULL DEFAULT '0',
  `plate_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_center` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inspection_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_due_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kilometer` int(11) NOT NULL DEFAULT '0',
  `car_receive_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `car_receive_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `car_return_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `car_return_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `car_inspection_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `insp_service_booklet` tinyint(4) NOT NULL DEFAULT '0',
  `insp_jack_and_handle` tinyint(4) NOT NULL DEFAULT '0',
  `insp_paking_sign` tinyint(4) NOT NULL DEFAULT '0',
  `insp_spare_wheel` tinyint(4) NOT NULL DEFAULT '0',
  `insp_mobile_charger` tinyint(4) NOT NULL DEFAULT '0',
  `insp_car_key` tinyint(4) NOT NULL DEFAULT '0',
  `insp_wheel_tax` tinyint(4) NOT NULL DEFAULT '0',
  `insp_fuel_level` int(11) NOT NULL DEFAULT '0',
  `insp_other_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `insp_remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sa_id` int(11) NOT NULL DEFAULT '0',
  `main_technician_id` int(11) NOT NULL DEFAULT '0',
  `visit_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total_waiting_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_drive_agree` tinyint(4) NOT NULL DEFAULT '0',
  `discount` int(11) NOT NULL DEFAULT '0',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '(Arrival Inspection, Service, Job Card, Final Inspection, Paid)',
  `complain` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_appointment
DROP TABLE IF EXISTS `service_appointment`;
CREATE TABLE IF NOT EXISTS `service_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_car_id` int(11) NOT NULL DEFAULT '0',
  `service_customer_id` int(11) NOT NULL DEFAULT '0',
  `plate_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appointment_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appointment_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appointment_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact_person` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_center` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total_waiting_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_appointment_item
DROP TABLE IF EXISTS `service_appointment_item`;
CREATE TABLE IF NOT EXISTS `service_appointment_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_appointment_id` int(11) NOT NULL DEFAULT '0',
  `service_item_id` int(11) NOT NULL DEFAULT '0',
  `waiting_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_bay_services
DROP TABLE IF EXISTS `service_bay_services`;
CREATE TABLE IF NOT EXISTS `service_bay_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_center_bay_id` int(11) NOT NULL DEFAULT '0',
  `service_item_id` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_car
DROP TABLE IF EXISTS `service_car`;
CREATE TABLE IF NOT EXISTS `service_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_customer_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exterior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vin_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `engine_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plate_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_center
DROP TABLE IF EXISTS `service_center`;
CREATE TABLE IF NOT EXISTS `service_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.service_center: ~4 rows (approximately)
INSERT INTO `service_center` (`id`, `name`) VALUES
	(1, 'YGN Main'),
	(2, 'YGN Kamayut'),
	(3, 'YGN Hlaing'),
	(4, 'MDY Main');

-- Dumping structure for table geely_db1.service_center_bay
DROP TABLE IF EXISTS `service_center_bay`;
CREATE TABLE IF NOT EXISTS `service_center_bay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_center_id` int(11) NOT NULL DEFAULT '0',
  `bay_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_center_store
DROP TABLE IF EXISTS `service_center_store`;
CREATE TABLE IF NOT EXISTS `service_center_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_center_id` int(11) NOT NULL DEFAULT '0',
  `service_center` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_customer
DROP TABLE IF EXISTS `service_customer`;
CREATE TABLE IF NOT EXISTS `service_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nrc_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alternative_phone_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `township` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Sales,\r\nService,\r\nWaiting List',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_customer_car
DROP TABLE IF EXISTS `service_customer_car`;
CREATE TABLE IF NOT EXISTS `service_customer_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_customer_id` int(11) NOT NULL DEFAULT '0',
  `service_car_id` int(11) NOT NULL DEFAULT '0',
  `plate_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_detail_service_item
DROP TABLE IF EXISTS `service_detail_service_item`;
CREATE TABLE IF NOT EXISTS `service_detail_service_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `service_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item_wt` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `package_price` int(11) NOT NULL DEFAULT '0',
  `warranty` tinyint(4) NOT NULL DEFAULT '0',
  `technician_id` int(11) NOT NULL DEFAULT '0',
  `bay_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `end_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_detail_sparepart
DROP TABLE IF EXISTS `service_detail_sparepart`;
CREATE TABLE IF NOT EXISTS `service_detail_sparepart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `qty` int(11) NOT NULL DEFAULT '0',
  `receive_qty` int(11) NOT NULL DEFAULT '0',
  `warranty` tinyint(4) NOT NULL DEFAULT '0',
  `fixed_price` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_final_inspection
DROP TABLE IF EXISTS `service_final_inspection`;
CREATE TABLE IF NOT EXISTS `service_final_inspection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `service_booklet` tinyint(4) NOT NULL DEFAULT '0',
  `jack_and_handle` tinyint(4) NOT NULL DEFAULT '0',
  `paking_sign` tinyint(4) NOT NULL DEFAULT '0',
  `spare_wheel` tinyint(4) NOT NULL DEFAULT '0',
  `mobile_charger` tinyint(4) NOT NULL DEFAULT '0',
  `car_key` tinyint(4) NOT NULL DEFAULT '0',
  `wheel_tax` tinyint(4) NOT NULL DEFAULT '0',
  `fuel_level` tinyint(4) NOT NULL DEFAULT '0',
  `other_items` tinyint(4) NOT NULL DEFAULT '0',
  `remark` tinyint(4) NOT NULL DEFAULT '0',
  `customer_complaint` tinyint(4) NOT NULL DEFAULT '0',
  `restored_position` tinyint(4) NOT NULL DEFAULT '0',
  `road_test_done` tinyint(4) NOT NULL DEFAULT '0',
  `battery_health` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Good, Average, Poor',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_gift
DROP TABLE IF EXISTS `service_gift`;
CREATE TABLE IF NOT EXISTS `service_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.service_gift: ~4 rows (approximately)
INSERT INTO `service_gift` (`id`, `name`) VALUES
	(1, 'Umbrella'),
	(2, 'T-shirt'),
	(3, 'Watch'),
	(4, 'Holder Car Mount');

-- Dumping structure for table geely_db1.service_item
DROP TABLE IF EXISTS `service_item`;
CREATE TABLE IF NOT EXISTS `service_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `waiting_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_item_task
DROP TABLE IF EXISTS `service_item_task`;
CREATE TABLE IF NOT EXISTS `service_item_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_item_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tips` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requirements` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_package
DROP TABLE IF EXISTS `service_package`;
CREATE TABLE IF NOT EXISTS `service_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_package_detail
DROP TABLE IF EXISTS `service_package_detail`;
CREATE TABLE IF NOT EXISTS `service_package_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_package_id` int(11) NOT NULL DEFAULT '0',
  `service_item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_payment
DROP TABLE IF EXISTS `service_payment`;
CREATE TABLE IF NOT EXISTS `service_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_bank_or_cash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `paid_by` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_receipt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_promotion
DROP TABLE IF EXISTS `service_promotion`;
CREATE TABLE IF NOT EXISTS `service_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `end_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_promotion_gift
DROP TABLE IF EXISTS `service_promotion_gift`;
CREATE TABLE IF NOT EXISTS `service_promotion_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_promotion_id` int(11) NOT NULL DEFAULT '0',
  `service_gift_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_promotion_package
DROP TABLE IF EXISTS `service_promotion_package`;
CREATE TABLE IF NOT EXISTS `service_promotion_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_promotion_id` int(11) NOT NULL DEFAULT '0',
  `service_package_id` int(11) NOT NULL DEFAULT '0',
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.service_promotion_sparepart
DROP TABLE IF EXISTS `service_promotion_sparepart`;
CREATE TABLE IF NOT EXISTS `service_promotion_sparepart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_promotion_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart
DROP TABLE IF EXISTS `sparepart`;
CREATE TABLE IF NOT EXISTS `sparepart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sub_group_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `origin` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sales_price` int(11) NOT NULL DEFAULT '0',
  `dealer_price` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_group
DROP TABLE IF EXISTS `sparepart_group`;
CREATE TABLE IF NOT EXISTS `sparepart_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_order
DROP TABLE IF EXISTS `sparepart_order`;
CREATE TABLE IF NOT EXISTS `sparepart_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gic_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_center_id` int(11) NOT NULL DEFAULT '0',
  `service_center` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_order_detail
DROP TABLE IF EXISTS `sparepart_order_detail`;
CREATE TABLE IF NOT EXISTS `sparepart_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_order_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_pre_order_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_quantity` int(11) NOT NULL DEFAULT '0',
  `receive_quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_origin
DROP TABLE IF EXISTS `sparepart_origin`;
CREATE TABLE IF NOT EXISTS `sparepart_origin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_pre_order
DROP TABLE IF EXISTS `sparepart_pre_order`;
CREATE TABLE IF NOT EXISTS `sparepart_pre_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wl_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_order_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `make_order` tinyint(4) NOT NULL DEFAULT '0',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_pre_order_detail
DROP TABLE IF EXISTS `sparepart_pre_order_detail`;
CREATE TABLE IF NOT EXISTS `sparepart_pre_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_pre_order_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_pre_order_payment
DROP TABLE IF EXISTS `sparepart_pre_order_payment`;
CREATE TABLE IF NOT EXISTS `sparepart_pre_order_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_pre_order_id` int(11) NOT NULL DEFAULT '0',
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gl_code_bank_or_cash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `paid_by` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_receipt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_receiving
DROP TABLE IF EXISTS `sparepart_receiving`;
CREATE TABLE IF NOT EXISTS `sparepart_receiving` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gic_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receive_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receive_by` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_receiving_detail
DROP TABLE IF EXISTS `sparepart_receiving_detail`;
CREATE TABLE IF NOT EXISTS `sparepart_receiving_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_receiving_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_pre_order_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_stock_balance
DROP TABLE IF EXISTS `sparepart_stock_balance`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total_stock_in` int(11) NOT NULL DEFAULT '0',
  `total_issue_note` int(11) NOT NULL DEFAULT '0',
  `total_lock` int(11) NOT NULL DEFAULT '0',
  `total_damage` int(11) NOT NULL DEFAULT '0',
  `total_lost` int(11) NOT NULL DEFAULT '0',
  `total_return` int(11) NOT NULL DEFAULT '0',
  `total_transfer` int(11) NOT NULL DEFAULT '0',
  `total_receive` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_stock_balance_store
DROP TABLE IF EXISTS `sparepart_stock_balance_store`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_balance_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total_stock_in` int(11) NOT NULL DEFAULT '0',
  `total_issue_note` int(11) NOT NULL DEFAULT '0',
  `total_lock` int(11) NOT NULL DEFAULT '0',
  `total_damage` int(11) NOT NULL DEFAULT '0',
  `total_lost` int(11) NOT NULL DEFAULT '0',
  `total_return` int(11) NOT NULL DEFAULT '0',
  `total_transfer` int(11) NOT NULL DEFAULT '0',
  `total_receive` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.sparepart_stock_balance_store: ~0 rows (approximately)

-- Dumping structure for table geely_db1.sparepart_stock_balance_substore
DROP TABLE IF EXISTS `sparepart_stock_balance_substore`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_balance_substore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sub_store_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total_stock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.sparepart_stock_balance_substore: ~0 rows (approximately)

-- Dumping structure for table geely_db1.sparepart_stock_in
DROP TABLE IF EXISTS `sparepart_stock_in`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_stock_out
DROP TABLE IF EXISTS `sparepart_stock_out`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `damage` tinyint(4) NOT NULL DEFAULT '0',
  `lost` tinyint(4) NOT NULL DEFAULT '0',
  `stock_out_by` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_stock_receive
DROP TABLE IF EXISTS `sparepart_stock_receive`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `receive_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_stock_return
DROP TABLE IF EXISTS `sparepart_stock_return`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `return_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_stock_transfer
DROP TABLE IF EXISTS `sparepart_stock_transfer`;
CREATE TABLE IF NOT EXISTS `sparepart_stock_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `transfer_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_name_from` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_name_to` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `stock_transfer_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_store
DROP TABLE IF EXISTS `sparepart_store`;
CREATE TABLE IF NOT EXISTS `sparepart_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_store_stock_level
DROP TABLE IF EXISTS `sparepart_store_stock_level`;
CREATE TABLE IF NOT EXISTS `sparepart_store_stock_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_store_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minimum` int(11) NOT NULL DEFAULT '0',
  `maximum` int(11) NOT NULL DEFAULT '0',
  `entry_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_sub_group
DROP TABLE IF EXISTS `sparepart_sub_group`;
CREATE TABLE IF NOT EXISTS `sparepart_sub_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_sub_store
DROP TABLE IF EXISTS `sparepart_sub_store`;
CREATE TABLE IF NOT EXISTS `sparepart_sub_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sparepart_store_id` int(11) NOT NULL DEFAULT '0',
  `sub_store` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shelves_no` int(11) NOT NULL DEFAULT '0',
  `row` int(11) NOT NULL DEFAULT '0',
  `column` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_unit
DROP TABLE IF EXISTS `sparepart_unit`;
CREATE TABLE IF NOT EXISTS `sparepart_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_waiting_list
DROP TABLE IF EXISTS `sparepart_waiting_list`;
CREATE TABLE IF NOT EXISTS `sparepart_waiting_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wl_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_center` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_customer_id` int(11) NOT NULL DEFAULT '0',
  `service_car_id` int(11) NOT NULL DEFAULT '0',
  `plate_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_order` tinyint(4) NOT NULL DEFAULT '0',
  `cancel` tinyint(4) NOT NULL DEFAULT '0',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cancel_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cancel_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.sparepart_waiting_list_detail
DROP TABLE IF EXISTS `sparepart_waiting_list_detail`;
CREATE TABLE IF NOT EXISTS `sparepart_waiting_list_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waiting_list_id` int(11) NOT NULL DEFAULT '0',
  `sparepart_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sparepart_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.staff
DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `join_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `department` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sa_id` int(11) NOT NULL DEFAULT '0',
  `dob` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nrc_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `marital_status` tinyint(4) NOT NULL DEFAULT '0',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `contact_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `signature` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `id_card` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reporting_to_id` int(11) NOT NULL DEFAULT '0',
  `wt_monday` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wt_tuesday` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wt_wednesday` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wt_thursday` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wt_friday` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wt_saturday` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wt_sunday` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping structure for table geely_db1.staff_sales_center
DROP TABLE IF EXISTS `staff_sales_center`;
CREATE TABLE IF NOT EXISTS `staff_sales_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `sales_center_id` int(11) NOT NULL DEFAULT '0',
  `sales_center` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.staff_service_center
DROP TABLE IF EXISTS `staff_service_center`;
CREATE TABLE IF NOT EXISTS `staff_service_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `service_center_id` int(11) NOT NULL DEFAULT '0',
  `service_center` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.supplier
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.supplier: ~2 rows (approximately)
INSERT INTO `supplier` (`id`, `name`, `entry_by`, `entry_date_time`) VALUES
	(1, 'Geely', '', ''),
	(2, 'FAW', '', '');

-- Dumping structure for table geely_db1.survey
DROP TABLE IF EXISTS `survey`;
CREATE TABLE IF NOT EXISTS `survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ser_one` tinyint(255) NOT NULL DEFAULT '0',
  `ser_two` tinyint(4) NOT NULL DEFAULT '0',
  `ser_three` tinyint(4) NOT NULL DEFAULT '0',
  `ser_four` tinyint(4) NOT NULL DEFAULT '0',
  `ser_five` int(11) NOT NULL DEFAULT '0',
  `contact_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.test_drive_car
DROP TABLE IF EXISTS `test_drive_car`;
CREATE TABLE IF NOT EXISTS `test_drive_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plate_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.township
DROP TABLE IF EXISTS `township`;
CREATE TABLE IF NOT EXISTS `township` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_division` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `township` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.township: ~447 rows (approximately)
INSERT INTO `township` (`id`, `state_division`, `city`, `township`) VALUES
	(1, 'Magway Region', 'Gangaw', 'Gangaw'),
	(2, 'Magway Region', 'Gangaw', 'Kyaukhtu'),
	(3, 'Magway Region', 'Gangaw', 'Saw'),
	(4, 'Magway Region', 'Gangaw', 'Tilin'),
	(5, 'Magway Region', 'Magway', 'Chauck'),
	(6, 'Magway Region', 'Magway', 'Magway'),
	(7, 'Magway Region', 'Magway', 'Myothit'),
	(8, 'Magway Region', 'Magway', 'Natmauk'),
	(9, 'Magway Region', 'Magway', 'Taungdwingyi'),
	(10, 'Magway Region', 'Magway', 'Yenangyaung'),
	(11, 'Magway Region', 'Minbu', 'Minbu'),
	(12, 'Magway Region', 'Minbu', 'Ngape'),
	(13, 'Magway Region', 'Minbu', 'Pwintbyu'),
	(14, 'Magway Region', 'Minbu', 'Salin'),
	(15, 'Magway Region', 'Minbu', 'Sidoktaya'),
	(16, 'Magway Region', 'Pakokku', 'Myaing'),
	(17, 'Magway Region', 'Pakokku', 'Pakokku'),
	(18, 'Magway Region', 'Pakokku', 'Pauk'),
	(19, 'Magway Region', 'Pakokku', 'Seikphyu'),
	(20, 'Magway Region', 'Pakokku', 'Yesagyo'),
	(21, 'Magway Region', 'Thayet', 'Aunglan'),
	(22, 'Magway Region', 'Thayet', 'Kamma'),
	(23, 'Magway Region', 'Thayet', 'Mindon'),
	(24, 'Magway Region', 'Thayet', 'Minhla'),
	(25, 'Magway Region', 'Thayet', 'Sinbaungwe'),
	(26, 'Magway Region', 'Thayet', 'Thayet'),
	(27, 'Mandalay Region', 'Kyaukse', 'Kyaukse'),
	(28, 'Mandalay Region', 'Kyaukse', 'Myittha'),
	(29, 'Mandalay Region', 'Kyaukse', 'Sintgaing'),
	(30, 'Mandalay Region', 'Kyaukse', 'Tada-U'),
	(31, 'Mandalay Region', 'Mandalay', 'Amarapura'),
	(32, 'Mandalay Region', 'Mandalay', 'Aungmyethazan'),
	(33, 'Mandalay Region', 'Mandalay', 'Chanayethazan'),
	(34, 'Mandalay Region', 'Mandalay', 'Chanmyathazi'),
	(35, 'Mandalay Region', 'Mandalay', 'Mahaaungmye'),
	(36, 'Mandalay Region', 'Mandalay', 'Patheingyi'),
	(37, 'Mandalay Region', 'Mandalay', 'Pyigyidagun'),
	(38, 'Mandalay Region', 'Meiktila', 'Mahlaing'),
	(39, 'Mandalay Region', 'Meiktila', 'Meiktila'),
	(40, 'Mandalay Region', 'Meiktila', 'Thazi'),
	(41, 'Mandalay Region', 'Meiktila', 'Wundwin'),
	(42, 'Mandalay Region', 'Myingyan', 'Myingyan'),
	(43, 'Mandalay Region', 'Myingyan', 'Natogyi'),
	(44, 'Mandalay Region', 'Myingyan', 'Nganzun'),
	(45, 'Mandalay Region', 'Myingyan', 'Thaungtha'),
	(46, 'Mandalay Region', 'Nyaung-U', 'Kyaukpadaung'),
	(47, 'Mandalay Region', 'Nyaung-U', 'Ngathayauk'),
	(48, 'Mandalay Region', 'Nyaung-U', 'Nyaung-U'),
	(49, 'Mandalay Region', 'Pyinoolwin', 'Madaya'),
	(50, 'Mandalay Region', 'Pyinoolwin', 'Mogok'),
	(51, 'Mandalay Region', 'Pyinoolwin', 'Pyinoolwin'),
	(52, 'Mandalay Region', 'Pyinoolwin', 'Singu'),
	(53, 'Mandalay Region', 'Pyinoolwin', 'Tagaung'),
	(54, 'Mandalay Region', 'Pyinoolwin', 'Thabeikkyin'),
	(55, 'Mandalay Region', 'Yamethin', 'Pyawbwe'),
	(56, 'Mandalay Region', 'Yamethin', 'Yamethin'),
	(57, 'Naypyidaw Union Territory', 'Dekkhina (South Naypyidaw)', 'Dekkhinathiri'),
	(58, 'Naypyidaw Union Territory', 'Dekkhina (South Naypyidaw)', 'Lewe'),
	(59, 'Naypyidaw Union Territory', 'Dekkhina (South Naypyidaw)', 'Pyinmana'),
	(60, 'Naypyidaw Union Territory', 'Dekkhina (South Naypyidaw)', 'Zabuthiri'),
	(61, 'Naypyidaw Union Territory', 'Ottara (North Naypyidaw)', 'Ottarathiri'),
	(62, 'Naypyidaw Union Territory', 'Ottara (North Naypyidaw)', 'Pobbathiri'),
	(63, 'Naypyidaw Union Territory', 'Ottara (North Naypyidaw)', 'Tatkon'),
	(64, 'Naypyidaw Union Territory', 'Ottara (North Naypyidaw)', 'Zeyarthiri'),
	(65, 'Kayah State', 'Bawlakhe', 'Bawlakhe'),
	(66, 'Kayah State', 'Bawlakhe', 'Hpasawng'),
	(67, 'Kayah State', 'Bawlakhe', 'Mese'),
	(68, 'Kayah State', 'Bawlakhe', 'Ywathit'),
	(69, 'Kayah State', 'Loikaw', 'Demoso'),
	(70, 'Kayah State', 'Loikaw', 'Hpruso'),
	(71, 'Kayah State', 'Loikaw', 'Loikaw'),
	(72, 'Kayah State', 'Loikaw', 'Shadaw'),
	(73, 'Shan State', 'Kengtung', 'Kengtung'),
	(74, 'Shan State', 'Kengtung', 'Mine Pauk'),
	(75, 'Shan State', 'Kengtung', 'Minelar'),
	(76, 'Shan State', 'Kengtung', 'Mong Khet'),
	(77, 'Shan State', 'Kengtung', 'Mong La'),
	(78, 'Shan State', 'Kengtung', 'Mong Yang'),
	(79, 'Shan State', 'Mong Hpayak', 'Mineyu'),
	(80, 'Shan State', 'Mong Hpayak', 'Mong Hpayak'),
	(81, 'Shan State', 'Mong Hpayak', 'Mong Yawng'),
	(82, 'Shan State', 'Mong Hsat', 'Minekoke'),
	(83, 'Shan State', 'Mong Hsat', 'Monehta'),
	(84, 'Shan State', 'Mong Hsat', 'Mong Hsat'),
	(85, 'Shan State', 'Mong Hsat', 'Mong Ping'),
	(86, 'Shan State', 'Mong Hsat', 'Mong Tong'),
	(87, 'Shan State', 'Mong Hsat', 'Ponparkyin'),
	(88, 'Shan State', 'Mong Hsat', 'Tontar'),
	(89, 'Shan State', 'Tachileik', 'Kyaing Lap'),
	(90, 'Shan State', 'Tachileik', 'Tachileik'),
	(91, 'Shan State', 'Tachileik', 'Talay'),
	(92, 'Shan State', 'Kunlong', 'Kunlong'),
	(93, 'Shan State', 'Kyaukme', 'Hsipaw'),
	(94, 'Shan State', 'Kyaukme', 'Kyaukme'),
	(95, 'Shan State', 'Kyaukme', 'Mantong'),
	(96, 'Shan State', 'Kyaukme', 'Minelon'),
	(97, 'Shan State', 'Kyaukme', 'Minengaw'),
	(98, 'Shan State', 'Kyaukme', 'Namhsan'),
	(99, 'Shan State', 'Kyaukme', 'Namtu'),
	(100, 'Shan State', 'Kyaukme', 'Nawnghkio'),
	(101, 'Shan State', 'Lashio', 'Hsenwi'),
	(102, 'Shan State', 'Lashio', 'Lashio'),
	(103, 'Shan State', 'Lashio', 'Mongyai'),
	(104, 'Shan State', 'Lashio', 'Tangyan'),
	(105, 'Shan State', 'Laukkaing', 'Chinshwehaw'),
	(106, 'Shan State', 'Laukkaing', 'Konkyan'),
	(107, 'Shan State', 'Laukkaing', 'Laukkaing'),
	(108, 'Shan State', 'Laukkaing', 'Mawhtike'),
	(109, 'Shan State', 'Mu Se', 'Kutkai'),
	(110, 'Shan State', 'Mu Se', 'Manhero'),
	(111, 'Shan State', 'Mu Se', 'Monekoe'),
	(112, 'Shan State', 'Mu Se', 'Mu Se'),
	(113, 'Shan State', 'Mu Se', 'Namhkam'),
	(114, 'Shan State', 'Mu Se', 'Pansai'),
	(115, 'Shan State', 'Mu Se', 'Tamoenye'),
	(116, 'Shan State', 'Hopang', 'Hopang'),
	(117, 'Shan State', 'Hopang', 'Mongmao'),
	(118, 'Shan State', 'Hopang', 'Namtit'),
	(119, 'Shan State', 'Hopang', 'Pangwaun'),
	(120, 'Shan State', 'Hopang', 'Panlong'),
	(121, 'Shan State', 'Matman', 'Man Kan'),
	(122, 'Shan State', 'Matman', 'Matman'),
	(123, 'Shan State', 'Matman', 'Namphan'),
	(124, 'Shan State', 'Matman', 'Pangsang Township'),
	(125, 'Shan State', 'Mongmit', 'Mabein'),
	(126, 'Shan State', 'Mongmit', 'Mongmit'),
	(127, 'Shan State', 'Langkho', 'Homane'),
	(128, 'Shan State', 'Langkho', 'Kengtaung'),
	(129, 'Shan State', 'Langkho', 'Langkho'),
	(130, 'Shan State', 'Langkho', 'Mawkmai'),
	(131, 'Shan State', 'Langkho', 'Mong Nai'),
	(132, 'Shan State', 'Langkho', 'Mong Pan'),
	(133, 'Shan State', 'Loilen', 'Karli'),
	(134, 'Shan State', 'Loilen', 'Kholan'),
	(135, 'Shan State', 'Loilen', 'Kunhing'),
	(136, 'Shan State', 'Loilen', 'Kyethi'),
	(137, 'Shan State', 'Loilen', 'Lai-Hka'),
	(138, 'Shan State', 'Loilen', 'Loilen'),
	(139, 'Shan State', 'Loilen', 'Minenaung'),
	(140, 'Shan State', 'Loilen', 'Minesan'),
	(141, 'Shan State', 'Loilen', 'Mong Hsu'),
	(142, 'Shan State', 'Loilen', 'Mong Kung'),
	(143, 'Shan State', 'Loilen', 'Nansang'),
	(144, 'Shan State', 'Loilen', 'Panglong'),
	(145, 'Shan State', 'Taunggyi', 'Hopong'),
	(146, 'Shan State', 'Taunggyi', 'Hsi Hseng'),
	(147, 'Shan State', 'Taunggyi', 'Indaw'),
	(148, 'Shan State', 'Taunggyi', 'Kalaw'),
	(149, 'Shan State', 'Taunggyi', 'Kyauktalongyi'),
	(150, 'Shan State', 'Taunggyi', 'Lawksawk'),
	(151, 'Shan State', 'Taunggyi', 'Naungtayar'),
	(152, 'Shan State', 'Taunggyi', 'Nyaungshwe'),
	(153, 'Shan State', 'Taunggyi', 'Pekon'),
	(154, 'Shan State', 'Taunggyi', 'Pingdaya'),
	(155, 'Shan State', 'Taunggyi', 'Pinlaung'),
	(156, 'Shan State', 'Taunggyi', 'Taunggyi'),
	(157, 'Shan State', 'Taunggyi', 'Ywangan'),
	(158, 'Ayeyarwady Region', 'Hinthada', 'Hinthada'),
	(159, 'Ayeyarwady Region', 'Hinthada', 'Ingapu'),
	(160, 'Ayeyarwady Region', 'Hinthada', 'Kyangin'),
	(161, 'Ayeyarwady Region', 'Hinthada', 'Lemyethna'),
	(162, 'Ayeyarwady Region', 'Hinthada', 'Myanaung'),
	(163, 'Ayeyarwady Region', 'Hinthada', 'Zalun'),
	(164, 'Ayeyarwady Region', 'Labutta', 'Labutta'),
	(165, 'Ayeyarwady Region', 'Labutta', 'Mawlamyinegyun'),
	(166, 'Ayeyarwady Region', 'Labutta', 'Pyinsalu'),
	(167, 'Ayeyarwady Region', 'Ma-ubin', 'Danuphyu'),
	(168, 'Ayeyarwady Region', 'Ma-ubin', 'Ma-ubin'),
	(169, 'Ayeyarwady Region', 'Ma-ubin', 'Nyaungdon'),
	(170, 'Ayeyarwady Region', 'Ma-ubin', 'Pantanaw'),
	(171, 'Ayeyarwady Region', 'Myaungmya', 'Einme'),
	(172, 'Ayeyarwady Region', 'Myaungmya', 'Myaungmya'),
	(173, 'Ayeyarwady Region', 'Myaungmya', 'Wakema'),
	(174, 'Ayeyarwady Region', 'Pathein', 'Hainggyikyun'),
	(175, 'Ayeyarwady Region', 'Pathein', 'Kangyidaunk'),
	(176, 'Ayeyarwady Region', 'Pathein', 'Kyaunggon'),
	(177, 'Ayeyarwady Region', 'Pathein', 'Kyonpyaw'),
	(178, 'Ayeyarwady Region', 'Pathein', 'Ngapudaw'),
	(179, 'Ayeyarwady Region', 'Pathein', 'Ngathaingchaung'),
	(180, 'Ayeyarwady Region', 'Pathein', 'Ngayokaung'),
	(181, 'Ayeyarwady Region', 'Pathein', 'Ngwehsaung'),
	(182, 'Ayeyarwady Region', 'Pathein', 'Pathein'),
	(183, 'Ayeyarwady Region', 'Pathein', 'Shwethaungyan'),
	(184, 'Ayeyarwady Region', 'Pathein', 'Thabaung'),
	(185, 'Ayeyarwady Region', 'Pathein', 'Yekyi'),
	(186, 'Ayeyarwady Region', 'Pyapon', 'Ahmar'),
	(187, 'Ayeyarwady Region', 'Pyapon', 'Bogale'),
	(188, 'Ayeyarwady Region', 'Pyapon', 'Dedaye'),
	(189, 'Ayeyarwady Region', 'Pyapon', 'Kyaiklat'),
	(190, 'Ayeyarwady Region', 'Pyapon', 'Pyapon'),
	(191, 'Bago Region', 'Bago', 'Aungmyin'),
	(192, 'Bago Region', 'Bago', 'Bago'),
	(193, 'Bago Region', 'Bago', 'Daik-U'),
	(194, 'Bago Region', 'Bago', 'Hpayargyi'),
	(195, 'Bago Region', 'Bago', 'Intagaw'),
	(196, 'Bago Region', 'Bago', 'Kawa'),
	(197, 'Bago Region', 'Bago', 'Kyauktaga'),
	(198, 'Bago Region', 'Bago', 'Madauk'),
	(199, 'Bago Region', 'Bago', 'Nyaunglebin'),
	(200, 'Bago Region', 'Bago', 'Peinzalot'),
	(201, 'Bago Region', 'Bago', 'Penwegon'),
	(202, 'Bago Region', 'Bago', 'Pyuntaza'),
	(203, 'Bago Region', 'Bago', 'Shwegyin'),
	(204, 'Bago Region', 'Bago', 'Thanatpin'),
	(205, 'Bago Region', 'Bago', 'Waw'),
	(206, 'Bago Region', 'Taungoo', 'Kanyutkwin'),
	(207, 'Bago Region', 'Taungoo', 'Kaytumadi'),
	(208, 'Bago Region', 'Taungoo', 'Kyaukkyi'),
	(209, 'Bago Region', 'Taungoo', 'Kywebwe'),
	(210, 'Bago Region', 'Taungoo', 'Mone'),
	(211, 'Bago Region', 'Taungoo', 'Myohla'),
	(212, 'Bago Region', 'Taungoo', 'Natthangwin'),
	(213, 'Bago Region', 'Taungoo', 'Nyaungbinthar'),
	(214, 'Bago Region', 'Taungoo', 'Oktwin'),
	(215, 'Bago Region', 'Taungoo', 'Pyu'),
	(216, 'Bago Region', 'Taungoo', 'Swa'),
	(217, 'Bago Region', 'Taungoo', 'Tantabin'),
	(218, 'Bago Region', 'Taungoo', 'Taungoo'),
	(219, 'Bago Region', 'Taungoo', 'Thagara'),
	(220, 'Bago Region', 'Taungoo', 'Yaeni'),
	(221, 'Bago Region', 'Taungoo', 'Yedashe'),
	(222, 'Bago Region', 'Pyay', 'Innma'),
	(223, 'Bago Region', 'Pyay', 'Okshipin'),
	(224, 'Bago Region', 'Pyay', 'Padaung'),
	(225, 'Bago Region', 'Pyay', 'Padigone'),
	(226, 'Bago Region', 'Pyay', 'Paukkaung'),
	(227, 'Bago Region', 'Pyay', 'Paungdale'),
	(228, 'Bago Region', 'Pyay', 'Paungde'),
	(229, 'Bago Region', 'Pyay', 'Pyay'),
	(230, 'Bago Region', 'Pyay', 'Shwedaung'),
	(231, 'Bago Region', 'Pyay', 'Sinmeswe'),
	(232, 'Bago Region', 'Pyay', 'Thegon'),
	(233, 'Bago Region', 'Thayarwady', 'Gyobingauk'),
	(234, 'Bago Region', 'Thayarwady', 'Letpadan'),
	(235, 'Bago Region', 'Thayarwady', 'Minhla'),
	(236, 'Bago Region', 'Thayarwady', 'Monyo'),
	(237, 'Bago Region', 'Thayarwady', 'Nattalin'),
	(238, 'Bago Region', 'Thayarwady', 'Okpho'),
	(239, 'Bago Region', 'Thayarwady', 'Ooethegone'),
	(240, 'Bago Region', 'Thayarwady', 'Sitkwin'),
	(241, 'Bago Region', 'Thayarwady', 'Tapun'),
	(242, 'Bago Region', 'Thayarwady', 'Tharrawaddy'),
	(243, 'Bago Region', 'Thayarwady', 'Thonze'),
	(244, 'Bago Region', 'Thayarwady', 'Zigon'),
	(245, 'Yangon Region', 'East Yangon', 'Botataung'),
	(247, 'Yangon Region', 'East Yangon', 'Dagon Seikkan'),
	(248, 'Yangon Region', 'East Yangon', 'Dawbon'),
	(249, 'Yangon Region', 'East Yangon', 'East Dagon'),
	(250, 'Yangon Region', 'East Yangon', 'Mingala Taungnyunt'),
	(251, 'Yangon Region', 'East Yangon', 'North Dagon'),
	(252, 'Yangon Region', 'East Yangon', 'North Okkalapa'),
	(253, 'Yangon Region', 'East Yangon', 'Pazundaung'),
	(254, 'Yangon Region', 'East Yangon', 'South Dagon'),
	(255, 'Yangon Region', 'East Yangon', 'South Okkalapa'),
	(256, 'Yangon Region', 'East Yangon', 'Tamwe'),
	(257, 'Yangon Region', 'East Yangon', 'Thaketa'),
	(258, 'Yangon Region', 'East Yangon', 'Thingangyun'),
	(259, 'Yangon Region', 'East Yangon', 'Yankin'),
	(261, 'Yangon Region', 'North Yangon', 'Hlaingthaya'),
	(262, 'Yangon Region', 'North Yangon', 'Hlegu'),
	(263, 'Yangon Region', 'North Yangon', 'Hmawbi'),
	(264, 'Yangon Region', 'North Yangon', 'Htantabin'),
	(265, 'Yangon Region', 'North Yangon', 'Insein'),
	(266, 'Yangon Region', 'North Yangon', 'Mingaladon'),
	(267, 'Yangon Region', 'North Yangon', 'Rural'),
	(268, 'Yangon Region', 'North Yangon', 'Shwepyitha'),
	(269, 'Yangon Region', 'North Yangon', 'Taikkyi'),
	(271, 'Yangon Region', 'South Yangon', 'Cocokyun'),
	(272, 'Yangon Region', 'South Yangon', 'Dala'),
	(273, 'Yangon Region', 'South Yangon', 'Kawhmu'),
	(274, 'Yangon Region', 'South Yangon', 'Kayan'),
	(275, 'Yangon Region', 'South Yangon', 'Kungyangon'),
	(276, 'Yangon Region', 'South Yangon', 'Kyauktan'),
	(277, 'Yangon Region', 'South Yangon', 'Rural'),
	(278, 'Yangon Region', 'South Yangon', 'Seikkyi Kanaungto'),
	(279, 'Yangon Region', 'South Yangon', 'Tada'),
	(280, 'Yangon Region', 'South Yangon', 'Thanlyin'),
	(281, 'Yangon Region', 'South Yangon', 'Thongwa'),
	(282, 'Yangon Region', 'South Yangon', 'Twante'),
	(283, 'Yangon Region', 'West Yangon (Downtown)', 'Ahlon'),
	(284, 'Yangon Region', 'West Yangon (Downtown)', 'Bahan'),
	(286, 'Yangon Region', 'West Yangon (Downtown)', 'Dagon'),
	(287, 'Yangon Region', 'West Yangon (Downtown)', 'Hlaing'),
	(288, 'Yangon Region', 'West Yangon (Downtown)', 'Kamayut'),
	(289, 'Yangon Region', 'West Yangon (Downtown)', 'Kyauktada'),
	(290, 'Yangon Region', 'West Yangon (Downtown)', 'Kyimyindaing'),
	(291, 'Yangon Region', 'West Yangon (Downtown)', 'Lanmadaw'),
	(292, 'Yangon Region', 'West Yangon (Downtown)', 'Latha'),
	(293, 'Yangon Region', 'West Yangon (Downtown)', 'Mayangon'),
	(294, 'Yangon Region', 'West Yangon (Downtown)', 'Pabedan'),
	(295, 'Yangon Region', 'West Yangon (Downtown)', 'Sanchaung'),
	(296, 'Yangon Region', 'West Yangon (Downtown)', 'Seikkan'),
	(297, 'Kachin State', 'Bhamo', 'Bhamo'),
	(298, 'Kachin State', 'Bhamo', 'Dotphoneyan'),
	(299, 'Kachin State', 'Bhamo', 'Lwegel'),
	(300, 'Kachin State', 'Bhamo', 'Mansi'),
	(301, 'Kachin State', 'Bhamo', 'Momauk'),
	(302, 'Kachin State', 'Bhamo', 'Myohla'),
	(303, 'Kachin State', 'Bhamo', 'Shwegu'),
	(304, 'Kachin State', 'Mohnyin', 'Hopin'),
	(305, 'Kachin State', 'Mohnyin', 'Hpakant'),
	(306, 'Kachin State', 'Mohnyin', 'Kamine'),
	(307, 'Kachin State', 'Mohnyin', 'Mogaung'),
	(308, 'Kachin State', 'Mohnyin', 'Mohnyin'),
	(309, 'Kachin State', 'Myitkyina', 'Chipwi'),
	(310, 'Kachin State', 'Myitkyina', 'Hsadone'),
	(311, 'Kachin State', 'Myitkyina', 'Hsawlaw'),
	(312, 'Kachin State', 'Myitkyina', 'Hsinbo'),
	(313, 'Kachin State', 'Myitkyina', 'Injangyang'),
	(314, 'Kachin State', 'Myitkyina', 'Kanpaikti'),
	(315, 'Kachin State', 'Myitkyina', 'Myitkyina'),
	(316, 'Kachin State', 'Myitkyina', 'Panwa'),
	(317, 'Kachin State', 'Myitkyina', 'Shinbwayyan'),
	(318, 'Kachin State', 'Myitkyina', 'Tanai'),
	(319, 'Kachin State', 'Myitkyina', 'Waingmaw'),
	(320, 'Kachin State', 'Putao', 'Kawnglanghpu'),
	(321, 'Kachin State', 'Putao', 'Machanbaw'),
	(322, 'Kachin State', 'Putao', 'Nogmung'),
	(323, 'Kachin State', 'Putao', 'Pannandin'),
	(324, 'Kachin State', 'Putao', 'Putao'),
	(325, 'Kachin State', 'Putao', 'Sumprabum'),
	(326, 'Sagaing Region', 'Hkamti', 'Donhee'),
	(327, 'Sagaing Region', 'Hkamti', 'Hkamti'),
	(328, 'Sagaing Region', 'Hkamti', 'Homalin'),
	(329, 'Sagaing Region', 'Hkamti', 'Htanparkway'),
	(330, 'Sagaing Region', 'Hkamti', 'Lahe'),
	(331, 'Sagaing Region', 'Hkamti', 'Leshi Township'),
	(332, 'Sagaing Region', 'Hkamti', 'Mobaingluk'),
	(333, 'Sagaing Region', 'Hkamti', 'Nanyun'),
	(334, 'Sagaing Region', 'Hkamti', 'Pansaung'),
	(335, 'Sagaing Region', 'Hkamti', 'Sonemara'),
	(336, 'Sagaing Region', 'Kanbalu', 'Kanbalu'),
	(337, 'Sagaing Region', 'Kanbalu', 'Kyunhla'),
	(338, 'Sagaing Region', 'Kanbalu', 'Taze'),
	(339, 'Sagaing Region', 'Kanbalu', 'Ye-U'),
	(340, 'Sagaing Region', 'Kale', 'Kale'),
	(341, 'Sagaing Region', 'Kale', 'Kalewa'),
	(342, 'Sagaing Region', 'Kale', 'Mingin'),
	(343, 'Sagaing Region', 'Katha', 'Banmauk'),
	(344, 'Sagaing Region', 'Katha', 'Indaw'),
	(345, 'Sagaing Region', 'Katha', 'Katha'),
	(346, 'Sagaing Region', 'Katha', 'Kawlin'),
	(347, 'Sagaing Region', 'Katha', 'Pinlebu'),
	(348, 'Sagaing Region', 'Katha', 'Tigyaing'),
	(349, 'Sagaing Region', 'Katha', 'Wuntho'),
	(350, 'Sagaing Region', 'Mawlaik', 'Mawlaik'),
	(351, 'Sagaing Region', 'Mawlaik', 'Paungbyin'),
	(352, 'Sagaing Region', 'Monywa', 'Ayadaw'),
	(353, 'Sagaing Region', 'Monywa', 'Budalin'),
	(354, 'Sagaing Region', 'Monywa', 'Chaung-U'),
	(355, 'Sagaing Region', 'Monywa', 'Monywa'),
	(356, 'Sagaing Region', 'Sagaing', 'Myaung'),
	(357, 'Sagaing Region', 'Sagaing', 'Myinmu'),
	(358, 'Sagaing Region', 'Sagaing', 'Sagaing'),
	(359, 'Sagaing Region', 'Shwebo', 'Khin-U'),
	(360, 'Sagaing Region', 'Shwebo', 'Kyaukmyaung'),
	(361, 'Sagaing Region', 'Shwebo', 'Shwebo'),
	(362, 'Sagaing Region', 'Shwebo', 'Tabayin'),
	(363, 'Sagaing Region', 'Shwebo', 'Wetlet'),
	(364, 'Sagaing Region', 'Tamu', 'Khampat'),
	(365, 'Sagaing Region', 'Tamu', 'Myothit'),
	(366, 'Sagaing Region', 'Tamu', 'Tamu'),
	(367, 'Sagaing Region', 'Yinmabin', 'Kani'),
	(368, 'Sagaing Region', 'Yinmabin', 'Pale'),
	(369, 'Sagaing Region', 'Yinmabin', 'Salingyi'),
	(370, 'Sagaing Region', 'Yinmabin', 'Yinmabin'),
	(371, 'Kayin State', 'Hpa-an', 'Bawgali'),
	(372, 'Kayin State', 'Hpa-an', 'Hlaignbwe'),
	(373, 'Kayin State', 'Hpa-an', 'Hpa-an'),
	(374, 'Kayin State', 'Hpa-an', 'Leiktho'),
	(375, 'Kayin State', 'Hpa-an', 'Paingkyon'),
	(376, 'Kayin State', 'Hpa-an', 'Shan Ywathit'),
	(377, 'Kayin State', 'Hpa-an', 'Thandaunggyi'),
	(378, 'Kayin State', 'Hpapun', 'Hpapun'),
	(379, 'Kayin State', 'Hpapun', 'Kamamaung'),
	(380, 'Kayin State', 'Kawkareik', 'Kawkareik'),
	(381, 'Kayin State', 'Kawkareik', 'Kyaidon'),
	(382, 'Kayin State', 'Kawkareik', 'Kyain Seikgyi'),
	(383, 'Kayin State', 'Kawkareik', 'Payarthonezu'),
	(384, 'Kayin State', 'Myawaddy', 'Myawaddy'),
	(385, 'Kayin State', 'Myawaddy', 'Sugali'),
	(386, 'Kayin State', 'Myawaddy', 'Wawlaymyaing'),
	(387, 'Mon State', 'Mawlamyine', 'Chaungzon'),
	(388, 'Mon State', 'Mawlamyine', 'Khawzar'),
	(389, 'Mon State', 'Mawlamyine', 'Kyaikkhami'),
	(390, 'Mon State', 'Mawlamyine', 'Kyaikmaraw'),
	(391, 'Mon State', 'Mawlamyine', 'Lamine'),
	(392, 'Mon State', 'Mawlamyine', 'Mawlamyine'),
	(393, 'Mon State', 'Mawlamyine', 'Mudon'),
	(394, 'Mon State', 'Mawlamyine', 'Thanbyuzayat'),
	(395, 'Mon State', 'Mawlamyine', 'Ye'),
	(396, 'Mon State', 'Thaton', 'Bilin'),
	(397, 'Mon State', 'Thaton', 'Kyaikto'),
	(398, 'Mon State', 'Thaton', 'Mottama'),
	(399, 'Mon State', 'Thaton', 'Paung'),
	(400, 'Mon State', 'Thaton', 'Suvannawadi'),
	(401, 'Mon State', 'Thaton', 'Thaton'),
	(402, 'Mon State', 'Thaton', 'Zingyeik'),
	(403, 'Tanintharyi Region', 'Dawei', 'Dawei'),
	(404, 'Tanintharyi Region', 'Dawei', 'Kaleinaung'),
	(405, 'Tanintharyi Region', 'Dawei', 'Launglon'),
	(406, 'Tanintharyi Region', 'Dawei', 'Myitta'),
	(407, 'Tanintharyi Region', 'Dawei', 'Thayetchaung'),
	(408, 'Tanintharyi Region', 'Dawei', 'Yebyu'),
	(409, 'Tanintharyi Region', 'Kawthoung', 'Bokpyin'),
	(410, 'Tanintharyi Region', 'Kawthoung', 'Karathuri'),
	(411, 'Tanintharyi Region', 'Kawthoung', 'Kawthoung'),
	(412, 'Tanintharyi Region', 'Kawthoung', 'Khamaukgyi'),
	(413, 'Tanintharyi Region', 'Kawthoung', 'Pyigyimandaing'),
	(414, 'Tanintharyi Region', 'Myeik', 'Kyunsu'),
	(415, 'Tanintharyi Region', 'Myeik', 'Myeik'),
	(416, 'Tanintharyi Region', 'Myeik', 'Palauk'),
	(417, 'Tanintharyi Region', 'Myeik', 'Palaw'),
	(418, 'Tanintharyi Region', 'Myeik', 'Tanintharyi'),
	(419, 'Chin State', 'Falam', 'Cikha'),
	(420, 'Chin State', 'Falam', 'Falam'),
	(421, 'Chin State', 'Falam', 'Rikhuadal'),
	(422, 'Chin State', 'Falam', 'Tiddim'),
	(423, 'Chin State', 'Falam', 'Ton Zang'),
	(424, 'Chin State', 'Hakha', 'Hakha'),
	(425, 'Chin State', 'Hakha', 'Htantlang'),
	(426, 'Chin State', 'Mindat', 'Kanpetlet'),
	(427, 'Chin State', 'Mindat', 'Matupi'),
	(428, 'Chin State', 'Mindat', 'Mindat'),
	(429, 'Chin State', 'Mindat', 'Paletwa'),
	(430, 'Chin State', 'Mindat', 'Reazu'),
	(431, 'Chin State', 'Mindat', 'Sami'),
	(432, 'Rakhine State', 'Kyaukpyu', 'Ann'),
	(433, 'Rakhine State', 'Kyaukpyu', 'Kyaukpyu'),
	(434, 'Rakhine State', 'Kyaukpyu', 'Manaung'),
	(435, 'Rakhine State', 'Kyaukpyu', 'Ramree'),
	(436, 'Rakhine State', 'Maungdaw', 'Buthidaung'),
	(437, 'Rakhine State', 'Maungdaw', 'Maungdaw'),
	(438, 'Rakhine State', 'Maungdaw', 'Taungpyoletwe'),
	(439, 'Rakhine State', 'Sittwe', 'Pauktaw'),
	(440, 'Rakhine State', 'Sittwe', 'Ponnagyun'),
	(441, 'Rakhine State', 'Sittwe', 'Rathedaung'),
	(442, 'Rakhine State', 'Sittwe', 'Sittwe'),
	(443, 'Rakhine State', 'Thandwe', 'Gaw'),
	(444, 'Rakhine State', 'Thandwe', 'Kyeintali'),
	(445, 'Rakhine State', 'Thandwe', 'Maei'),
	(446, 'Rakhine State', 'Thandwe', 'Thandwe'),
	(447, 'Rakhine State', 'Thandwe', 'Toungup'),
	(448, 'Rakhine State', 'Mrauk-U', 'Kyauktaw'),
	(449, 'Rakhine State', 'Mrauk-U', 'Minbya'),
	(450, 'Rakhine State', 'Mrauk-U', 'Mrauk-U'),
	(451, 'Rakhine State', 'Mrauk-U', 'Myebon');

-- Dumping structure for table geely_db1.transfer_reason
DROP TABLE IF EXISTS `transfer_reason`;
CREATE TABLE IF NOT EXISTS `transfer_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.transfer_reason: ~4 rows (approximately)
INSERT INTO `transfer_reason` (`id`, `reason`) VALUES
	(1, 'Services'),
	(2, 'Road Show'),
	(3, 'Other Showroom Display'),
	(4, 'Courtesy');

-- Dumping structure for table geely_db1.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `staff_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userrole` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dashboard` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profilepicture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.user: 20 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `staff_id`, `staff_name`, `username`, `password`, `userrole`, `dashboard`, `profilepicture`) VALUES
	(1, 0, '', 'admin', 'superadmin', 'KEY', 'admin', ''),
	(2, 0, '', 'hr_admin', 'superadmin', 'KEY', 'hr', '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table geely_db1.user_log
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE IF NOT EXISTS `user_log` (
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_time` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.user_role
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dashboard` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `process` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `update` tinyint(4) NOT NULL DEFAULT '0',
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  `export` tinyint(4) NOT NULL DEFAULT '0',
  `print` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1772 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.user_role: ~147 rows (approximately)
INSERT INTO `user_role` (`id`, `dashboard`, `role_name`, `process`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES
	(14, 'sales', 'Sales Manager', 'Promotion', 1, 0, 0, 0, 0, 0),
	(15, 'sales', 'Sales Manager', 'Order Detail', 0, 1, 1, 0, 0, 0),
	(16, 'sales', 'Sales Manager', 'SE Assign', 1, 1, 0, 1, 0, 0),
	(17, 'sales', 'Sales Manager', 'Showroom Assign', 1, 1, 0, 1, 0, 0),
	(23, 'sales', 'Sales Supervisor', 'Promotion', 1, 0, 0, 0, 0, 0),
	(24, 'sales', 'Sales Supervisor', '2. Deposit Collect', 1, 1, 0, 0, 0, 0),
	(25, 'sales', 'Sales Supervisor', '5. Owner Info | Income Tax', 1, 1, 1, 1, 1, 0),
	(26, 'sales', 'Sales Supervisor', '9. Car Handover | Owner Book Handover', 1, 1, 0, 0, 0, 0),
	(27, 'sales', 'Sales Supervisor', 'Customer Detail', 0, 1, 0, 0, 0, 0),
	(28, 'sales', 'Sales Supervisor', 'Order Confirmation', 1, 0, 0, 0, 0, 0),
	(29, 'sales', 'Sales Supervisor', 'Order Detail', 0, 1, 1, 0, 0, 0),
	(52, 'sales', 'Sales Executive', '1. Sales List', 0, 1, 0, 0, 0, 0),
	(53, 'sales', 'Sales Executive', '5. Owner Info | Income Tax', 1, 1, 1, 1, 1, 0),
	(54, 'sales', 'Sales Executive', 'Broker', 1, 0, 1, 0, 0, 0),
	(55, 'sales', 'Sales Executive', 'Customer Detail', 1, 1, 1, 0, 0, 0),
	(56, 'sales', 'Sales Executive', 'Order Confirmation', 1, 0, 0, 0, 0, 0),
	(57, 'sales', 'Sales Executive', 'Order Detail', 1, 1, 1, 0, 0, 0),
	(203, 'supply_chain', 'Supply Chain Manager', 'Brand', 1, 1, 0, 0, 0, 0),
	(204, 'supply_chain', 'Supply Chain Manager', 'Car List', 1, 1, 1, 0, 0, 0),
	(205, 'supply_chain', 'Supply Chain Manager', 'Car Stock Transfer', 1, 0, 0, 0, 0, 0),
	(206, 'supply_chain', 'Supply Chain Manager', 'Model', 1, 1, 0, 0, 0, 0),
	(207, 'supply_chain', 'Supply Chain Manager', 'New Model', 1, 1, 0, 0, 0, 0),
	(208, 'supply_chain', 'Supply Chain Manager', 'Production Order', 1, 0, 0, 0, 0, 0),
	(209, 'supply_chain', 'Supply Chain Manager', 'Supply Chain Transfer', 1, 0, 0, 0, 0, 0),
	(210, 'supply_chain', 'Supply Chain Manager', 'Test Drive Car', 1, 1, 0, 1, 0, 0),
	(211, 'supply_chain', 'Supply Chain Manager', 'Upload Exterior Photo', 1, 1, 0, 1, 0, 0),
	(212, 'supply_chain', 'Supply Chain Manager', 'Upload Interior Photo', 1, 1, 0, 1, 0, 0),
	(213, 'supply_chain', 'Supply Chain Manager', '1. Sales List', 0, 1, 0, 0, 0, 0),
	(214, 'supply_chain', 'Supply Chain Manager', '4. Purchase Permit | RTA Appointment | Plate No.', 1, 1, 1, 1, 1, 0),
	(1554, 'sales', 'Brand Manager', 'Car Stock', 1, 0, 0, 0, 0, 0),
	(1555, 'sales', 'Brand Manager', 'Promotion', 1, 0, 0, 0, 0, 0),
	(1556, 'sales', 'Brand Manager', '1. Sales List', 0, 1, 0, 0, 0, 0),
	(1557, 'sales', 'Brand Manager', '5. Owner Info | Income Tax', 1, 1, 1, 1, 1, 0),
	(1558, 'sales', 'Brand Manager', '9. Car Handover | Owner Book Handover', 1, 1, 0, 0, 0, 0),
	(1559, 'sales', 'Brand Manager', 'Broker', 1, 0, 1, 0, 0, 0),
	(1560, 'sales', 'Brand Manager', 'Customer Detail', 1, 1, 1, 0, 0, 0),
	(1561, 'sales', 'Brand Manager', 'Order Confirmation', 1, 0, 0, 0, 0, 0),
	(1562, 'sales', 'Brand Manager', 'Order Detail', 1, 1, 1, 0, 0, 0),
	(1563, 'sales', 'Brand Manager', 'SE Assign', 1, 1, 0, 1, 0, 0),
	(1564, 'sales', 'Brand Manager', 'Showroom Assign', 1, 1, 0, 1, 0, 0),
	(1586, 'sales', 'Sales Admin', 'Car Stock', 1, 0, 0, 0, 0, 0),
	(1587, 'sales', 'Sales Admin', '1. Sales List', 0, 1, 0, 0, 0, 0),
	(1588, 'sales', 'Sales Admin', '9. Car Handover | Owner Book Handover', 1, 1, 0, 0, 0, 0),
	(1589, 'sales', 'Sales Admin', 'Customer Detail', 0, 1, 0, 0, 0, 0),
	(1590, 'sales', 'Sales Admin', 'Order Confirmation', 1, 0, 0, 0, 0, 1),
	(1591, 'sales', 'Sales Admin', 'Order Detail', 0, 1, 1, 0, 0, 0),
	(1592, 'service', 'Operation Supervisor', '1. Sales List', 0, 1, 0, 0, 0, 0),
	(1593, 'service', 'Operation Supervisor', '6. Fill the Fuel', 1, 1, 0, 0, 0, 0),
	(1594, 'service', 'Operation Supervisor', '7. PDI Check List', 1, 1, 0, 0, 0, 0),
	(1595, 'service', 'Operation Supervisor', '8. Ready to Deliver', 1, 1, 0, 0, 0, 0),
	(1596, 'service', 'Operation Supervisor', 'Final Inspection', 1, 0, 0, 0, 0, 0),
	(1597, 'service', 'Operation Supervisor', 'Inspection', 1, 0, 1, 0, 0, 0),
	(1598, 'service', 'Operation Supervisor', 'Job Card', 1, 0, 0, 0, 0, 0),
	(1599, 'service', 'Operation Supervisor', 'Service', 1, 1, 1, 0, 0, 0),
	(1600, 'service', 'Operation Supervisor', 'Service Appointment', 1, 1, 0, 0, 0, 0),
	(1601, 'service', 'Operation Supervisor', 'Service Bay Services', 1, 1, 1, 0, 0, 0),
	(1602, 'service', 'Operation Supervisor', 'Service Car', 1, 1, 0, 0, 0, 0),
	(1603, 'service', 'Operation Supervisor', 'Service Center Bay', 1, 1, 0, 0, 0, 0),
	(1604, 'service', 'Operation Supervisor', 'Service Center Store', 1, 1, 0, 0, 0, 0),
	(1605, 'service', 'Operation Supervisor', 'Service Customer', 1, 1, 0, 0, 0, 0),
	(1606, 'service', 'Operation Supervisor', 'Service Customer Car', 1, 0, 0, 0, 0, 0),
	(1607, 'service', 'Operation Supervisor', 'Service Item', 1, 1, 1, 0, 0, 0),
	(1608, 'service', 'Operation Supervisor', 'Service Item Task', 1, 1, 1, 0, 0, 0),
	(1609, 'service', 'Operation Supervisor', 'Service Package', 1, 0, 0, 0, 0, 0),
	(1610, 'service', 'Operation Supervisor', 'Service Promotion', 1, 1, 1, 0, 0, 0),
	(1611, 'service', 'Operation Supervisor', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(1612, 'service', 'Operation Supervisor', 'Survey', 1, 0, 0, 0, 0, 0),
	(1613, 'service', 'Operation Supervisor', 'Warranty Car', 0, 1, 0, 0, 0, 0),
	(1614, 'service', 'Operation Supervisor', 'Group', 1, 1, 0, 0, 0, 0),
	(1615, 'service', 'Operation Supervisor', 'Issue Note', 1, 1, 0, 0, 0, 0),
	(1616, 'service', 'Operation Supervisor', 'Order', 1, 0, 0, 0, 0, 0),
	(1617, 'service', 'Operation Supervisor', 'Pre Order', 1, 1, 0, 0, 0, 0),
	(1618, 'service', 'Operation Supervisor', 'Receiving', 1, 0, 0, 0, 0, 0),
	(1619, 'service', 'Operation Supervisor', 'Sparepart', 1, 1, 1, 0, 0, 0),
	(1620, 'service', 'Operation Supervisor', 'Stock Out', 1, 1, 0, 1, 0, 0),
	(1621, 'service', 'Operation Supervisor', 'Stock Receive', 1, 0, 0, 0, 0, 0),
	(1622, 'service', 'Operation Supervisor', 'Stock Return', 1, 0, 0, 0, 0, 0),
	(1623, 'service', 'Operation Supervisor', 'Stock Transfer', 1, 0, 0, 0, 0, 0),
	(1624, 'service', 'Operation Supervisor', 'Store', 1, 1, 0, 0, 0, 0),
	(1625, 'service', 'Operation Supervisor', 'Service Center Assign', 1, 1, 1, 0, 0, 0),
	(1626, 'service', 'Operation Supervisor', 'Store Stock Level', 1, 1, 0, 0, 0, 0),
	(1627, 'service', 'Operation Supervisor', 'Sub Group', 1, 1, 0, 0, 0, 0),
	(1628, 'service', 'Operation Supervisor', 'Sub Store', 1, 1, 0, 0, 0, 0),
	(1629, 'service', 'Operation Supervisor', 'Upload Sparepart Photo', 1, 1, 0, 0, 0, 0),
	(1630, 'service', 'Operation Supervisor', 'Waiting List', 1, 1, 1, 0, 0, 0),
	(1672, 'finance', 'Finance Manager', 'Account Transaction', 0, 1, 0, 0, 0, 0),
	(1673, 'finance', 'Finance Manager', 'Account Transfer', 1, 0, 0, 0, 0, 0),
	(1674, 'finance', 'Finance Manager', 'Advance Claim', 1, 0, 0, 0, 0, 0),
	(1675, 'finance', 'Finance Manager', 'Advance Entry', 1, 0, 0, 0, 0, 0),
	(1676, 'finance', 'Finance Manager', 'Bank Account', 1, 1, 0, 0, 0, 0),
	(1677, 'finance', 'Finance Manager', 'Bank Account Transfer', 1, 1, 0, 0, 0, 0),
	(1678, 'finance', 'Finance Manager', 'Car Price', 1, 1, 1, 0, 0, 0),
	(1679, 'finance', 'Finance Manager', 'Define Purchase Price', 1, 0, 0, 0, 0, 0),
	(1680, 'finance', 'Finance Manager', 'Deposit Refund', 1, 0, 0, 0, 0, 0),
	(1681, 'finance', 'Finance Manager', 'Exchange Rate', 1, 1, 0, 0, 0, 0),
	(1682, 'finance', 'Finance Manager', 'G/L Account', 1, 1, 0, 0, 0, 0),
	(1683, 'finance', 'Finance Manager', 'Invoices', 0, 1, 0, 0, 0, 0),
	(1684, 'finance', 'Finance Manager', 'RTAD Tax', 1, 0, 0, 0, 0, 0),
	(1685, 'finance', 'Finance Manager', 'Sales Detail', 0, 1, 0, 0, 0, 0),
	(1686, 'finance', 'Finance Manager', '1. Sales List', 0, 1, 0, 0, 0, 0),
	(1687, 'finance', 'Finance Manager', '2. Deposit Collect', 1, 1, 0, 0, 0, 0),
	(1688, 'finance', 'Finance Manager', '3. Payment', 1, 1, 0, 0, 0, 0),
	(1689, 'finance', 'Finance Manager', 'Order Detail', 0, 1, 1, 0, 0, 0),
	(1690, 'finance', 'Finance Manager', 'Sales Report', 0, 1, 0, 0, 0, 0),
	(1691, 'finance', 'Finance Manager', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(1692, 'finance', 'Finance Manager', 'Pre Order List', 0, 1, 0, 0, 0, 0),
	(1693, 'finance', 'Finance Manager', 'Pre Order Payment', 1, 1, 0, 0, 0, 0),
	(1694, 'finance', 'Finance Manager', 'Exist Form', 0, 1, 0, 0, 0, 0),
	(1733, 'service', 'Service', 'Final Inspection', 1, 0, 0, 0, 0, 0),
	(1734, 'service', 'Service', 'Inspection', 1, 0, 1, 0, 0, 0),
	(1735, 'service', 'Service', 'Job Card', 1, 0, 0, 0, 0, 0),
	(1736, 'service', 'Service', 'Service', 1, 1, 1, 0, 0, 0),
	(1737, 'service', 'Service', 'Service Appointment', 1, 1, 0, 0, 0, 0),
	(1738, 'service', 'Service', 'Service Bay Services', 1, 1, 1, 0, 0, 0),
	(1739, 'service', 'Service', 'Service Car', 1, 1, 0, 0, 0, 0),
	(1740, 'service', 'Service', 'Service Center Assign', 1, 1, 1, 0, 0, 0),
	(1741, 'service', 'Service', 'Service Center Bay', 1, 1, 0, 0, 0, 0),
	(1742, 'service', 'Service', 'Service Center Store', 1, 1, 0, 0, 0, 0),
	(1743, 'service', 'Service', 'Service Customer', 1, 1, 0, 0, 0, 0),
	(1744, 'service', 'Service', 'Service Customer Car', 1, 0, 0, 0, 0, 0),
	(1745, 'service', 'Service', 'Service Item', 1, 1, 1, 0, 0, 0),
	(1746, 'service', 'Service', 'Service Item Task', 1, 1, 1, 0, 0, 0),
	(1747, 'service', 'Service', 'Service Package', 1, 0, 0, 0, 0, 0),
	(1748, 'service', 'Service', 'Service Promotion', 1, 1, 1, 0, 0, 0),
	(1749, 'service', 'Service', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(1750, 'service', 'Service', 'Survey', 1, 0, 0, 0, 0, 0),
	(1751, 'service', 'Service', 'Warranty Car', 0, 1, 0, 0, 0, 0),
	(1752, 'service', 'Service', 'Group', 1, 1, 0, 0, 0, 0),
	(1753, 'service', 'Service', 'Issue Note', 1, 1, 0, 0, 0, 0),
	(1754, 'service', 'Service', 'Order', 1, 0, 0, 0, 0, 0),
	(1755, 'service', 'Service', 'Pre Order', 1, 1, 0, 0, 0, 0),
	(1756, 'service', 'Service', 'Receiving', 1, 0, 0, 0, 0, 0),
	(1757, 'service', 'Service', 'Sparepart', 1, 1, 1, 0, 0, 0),
	(1758, 'service', 'Service', 'Stock Out', 1, 1, 0, 1, 0, 0),
	(1759, 'service', 'Service', 'Stock Receive', 1, 0, 0, 0, 0, 0),
	(1760, 'service', 'Service', 'Stock Return', 1, 0, 0, 0, 0, 0),
	(1761, 'service', 'Service', 'Stock Transfer', 1, 0, 0, 0, 0, 0),
	(1762, 'service', 'Service', 'Store', 1, 1, 0, 0, 0, 0),
	(1763, 'service', 'Service', 'Store Stock Level', 1, 1, 0, 0, 0, 0),
	(1764, 'service', 'Service', 'Sub Group', 1, 1, 0, 0, 0, 0),
	(1765, 'service', 'Service', 'Sub Store', 1, 1, 0, 0, 0, 0),
	(1766, 'service', 'Service', 'Upload Sparepart Photo', 1, 1, 0, 0, 0, 0),
	(1767, 'service', 'Service', 'Waiting List', 1, 1, 1, 0, 0, 0),
	(1768, 'sales', 'Sales Admin', 'Sales Report', 0, 1, 0, 0, 1, 0),
	(1769, 'sales', 'Sales Admin', 'Order Report', 0, 1, 0, 0, 1, 0),
	(1770, 'sales', 'Sales Admin', 'Customer Report', 0, 1, 0, 0, 1, 0),
  (1771, 'sales', 'Sales Admin', 'Sales Detail', 0, 1, 0, 0, 0, 0),
  (1772, 'sales', 'Sales Admin', 'Order Detail', 0, 1, 0, 0, 0, 0);

-- Dumping structure for table geely_db1.warranty_car
DROP TABLE IF EXISTS `warranty_car`;
CREATE TABLE IF NOT EXISTS `warranty_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expire_date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `valid_kilometer` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'null => Valid,\r\nExpire (Date),\r\nExpire (Kilometer),\r\nTerminate',
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.warranty_check_expire
DROP TABLE IF EXISTS `warranty_check_expire`;
CREATE TABLE IF NOT EXISTS `warranty_check_expire` (
  `date` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table geely_db1.warranty_rules
DROP TABLE IF EXISTS `warranty_rules`;
CREATE TABLE IF NOT EXISTS `warranty_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `valid_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'E.g.,\r\n5 years\r\n3 years\r\n2 years\r\n3 months',
  `valid_kilometer` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.warranty_rules: ~5 rows (approximately)
INSERT INTO `warranty_rules` (`id`, `warranty`, `valid_duration`, `valid_kilometer`) VALUES
	(1, 'A', '5 years', 150000),
	(2, 'B', '5 years', 150000),
	(3, 'C', '3 years', 60000),
	(4, 'D', '1 year', 20000),
	(5, 'E', '3 months', 5000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
