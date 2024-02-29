-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 01:54 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `denormalized_data` (
  -- Customer columns
  `customerID` int(11) NOT NULL,
  `customerFullName` varchar(100) NOT NULL,
  `customerEmail` varchar(100) DEFAULT NULL,
  `customerMobile` int(11) NOT NULL,
  `customerPhone2` int(11) DEFAULT NULL,
  `customerAddress` varchar(255) NOT NULL,
  `customerAddress2` varchar(255) DEFAULT NULL,
  `customerCity` varchar(30) DEFAULT NULL,
  `customerDistrict` varchar(30) NOT NULL,
  `customerStatus` varchar(255) NOT NULL DEFAULT 'Active',
  `customerCreatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,

  -- Item columns
  `itemProductID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemDiscount` float NOT NULL DEFAULT '0',
  `itemStock` int(11) NOT NULL DEFAULT '0',
  `itemUnitPrice` float NOT NULL DEFAULT '0',
  `itemImageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `itemStatus` varchar(255) NOT NULL DEFAULT 'Active',
  `itemDescription` text NOT NULL,

  -- Purchase columns
  `purchaseID` int(11) NOT NULL,
  `purchaseItemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `purchaseItemName` varchar(255) NOT NULL,
  `purchaseUnitPrice` float NOT NULL DEFAULT '0',
  `purchaseQuantity` int(11) NOT NULL DEFAULT '0',
  `purchaseVendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `purchaseVendorID` int(11) NOT NULL DEFAULT '0',

  -- Vendor columns
  `vendorID` int(11) NOT NULL,
  `vendorFullName` varchar(255) NOT NULL,
  `vendorEmail` varchar(255) DEFAULT NULL,
  `vendorMobile` int(11) NOT NULL,
  `vendorPhone2` int(11) DEFAULT NULL,
  `vendorAddress` varchar(255) NOT NULL,
  `vendorAddress2` varchar(255) DEFAULT NULL,
  `vendorCity` varchar(30) DEFAULT NULL,
  `vendorDistrict` varchar(30) NOT NULL,
  `vendorStatus` varchar(255) NOT NULL DEFAULT 'Active',
  `vendorCreatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,

  -- Sale columns
  `saleID` int(11) NOT NULL,
  `saleItemNumber` varchar(255) NOT NULL,
  `saleCustomerID` int(11) NOT NULL,
  `saleCustomerName` varchar(255) NOT NULL,
  `saleItemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `saleDiscount` float NOT NULL DEFAULT '0',
  `saleQuantity` int(11) NOT NULL DEFAULT '0',
  `saleUnitPrice` float(10,0) NOT NULL DEFAULT '0',

  -- User columns
  `userID` int(11) NOT NULL,
  `userFullName` varchar(255) NOT NULL,
  `userUsername` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userStatus` varchar(255) NOT NULL DEFAULT 'Active',

  PRIMARY KEY (`customerID`, `itemProductID`, `purchaseID`, `vendorID`, `saleID`, `userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



