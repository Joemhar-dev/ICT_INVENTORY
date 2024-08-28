-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 07:41 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ict_equipment`
--

-- --------------------------------------------------------

--
-- Table structure for table `disposed`
--

CREATE TABLE `disposed` (
  `ID` int(100) NOT NULL,
  `ITEM_NUMBER` varchar(100) NOT NULL,
  `TYPE_OF_EQUIPMENT` varchar(100) NOT NULL,
  `SERIAL_NUMBER` varchar(100) NOT NULL,
  `MODEL` varchar(100) NOT NULL,
  `BRAND_NAME` varchar(100) NOT NULL,
  `ASSET_OWNER` varchar(100) NOT NULL,
  `USER` varchar(100) NOT NULL,
  `SECTION` varchar(100) NOT NULL,
  `DATE_DISPOSED` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fixed`
--

CREATE TABLE `fixed` (
  `ID` int(100) NOT NULL,
  `ITEM_NUMBER` varchar(100) NOT NULL,
  `TYPE_OF_EQUIPMENT` varchar(100) NOT NULL,
  `SERIAL_NUMBER` varchar(100) NOT NULL,
  `MODEL` varchar(100) NOT NULL,
  `BRAND_NAME` varchar(100) NOT NULL,
  `ACQUISITION` varchar(100) NOT NULL,
  `PROCESSOR` varchar(100) NOT NULL,
  `MEMORY` varchar(100) NOT NULL,
  `HARD_DISK` varchar(100) NOT NULL,
  `LOS` varchar(100) NOT NULL,
  `MSO` varchar(100) NOT NULL,
  `OIS` varchar(100) NOT NULL,
  `ARE` varchar(100) NOT NULL,
  `PROPERTY` varchar(100) NOT NULL,
  `COST` varchar(100) NOT NULL,
  `DATE_RECEIVED` varchar(100) NOT NULL,
  `RECEIVED_FROM` varchar(100) NOT NULL,
  `SUPPLIER` varchar(100) NOT NULL,
  `ACQUISITION_DATE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(100) NOT NULL,
  `ITEM_NUMBER` varchar(100) NOT NULL,
  `TYPE` varchar(100) NOT NULL,
  `ACQUISITION` varchar(100) NOT NULL,
  `PROCESSOR` varchar(100) NOT NULL,
  `MEMORY` varchar(100) NOT NULL,
  `HARD_DISK` varchar(100) NOT NULL,
  `OPERATING_SYSTEM` varchar(100) NOT NULL,
  `MS_OFFICE` varchar(100) NOT NULL,
  `OTHER_INSTALLED_SOFTWARE` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL,
  `ARE_NUMBER` varchar(100) NOT NULL,
  `SERIAL_NUMBER` varchar(100) NOT NULL,
  `PROPERTY_NUMBER` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `MODEL` varchar(100) NOT NULL,
  `BRAND_NAME` varchar(100) NOT NULL,
  `UNIT_VALUE` varchar(100) NOT NULL,
  `END_USER` varchar(100) NOT NULL,
  `DESIGNATION` varchar(100) NOT NULL,
  `DIVISION` varchar(100) NOT NULL,
  `REGION` varchar(100) NOT NULL,
  `OFFICE` varchar(100) NOT NULL,
  `ASSET_OWNER` varchar(100) NOT NULL,
  `DATE_RECEIVED` varchar(100) NOT NULL,
  `RECEIVED_FROM` varchar(100) NOT NULL,
  `SUPPLIER` varchar(100) NOT NULL,
  `DATE_OF_AQUISITION` varchar(100) NOT NULL,
  `REMARKS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `ITEM_NUMBER`, `TYPE`, `ACQUISITION`, `PROCESSOR`, `MEMORY`, `HARD_DISK`, `OPERATING_SYSTEM`, `MS_OFFICE`, `OTHER_INSTALLED_SOFTWARE`, `STATUS`, `ARE_NUMBER`, `SERIAL_NUMBER`, `PROPERTY_NUMBER`, `DESCRIPTION`, `MODEL`, `BRAND_NAME`, `UNIT_VALUE`, `END_USER`, `DESIGNATION`, `DIVISION`, `REGION`, `OFFICE`, `ASSET_OWNER`, `DATE_RECEIVED`, `RECEIVED_FROM`, `SUPPLIER`, `DATE_OF_AQUISITION`, `REMARKS`) VALUES
(17, '1', 'Server', 'Turned over by PDWH Central', '', '8GB', '640GB', 'Windows Server 2008 R2', '', '', 'Operational', '0115', 'SGH3405CYM', 'NE-0003-006-050-2014', '', 'Proliant ML310 Gen 8 Hot Plug 4LFF CTD SERVER', 'HP', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Sanaco, Ann R.', '2014-02-18', 'Buot, Lilibeth L.', '', '2014-02-18', ''),
(18, '1a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '0115', 'ETLGLOW053947070BA4372', '2010-101-C160FE62B-0011', '', 'Acer P205H', 'Acer', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Sanaco, Ann R.', '2014-02-18', 'Buot, Lilibeth L.', '', '2014-02-18', ''),
(19, '2', 'Server', 'Turned over by PDWH Central', '', '8GB', '640GB', 'Windows Server 2008 R2', '', '', 'Operational', '', 'SGH028XYY9', 'NE-0944-004-016-10', '', 'Proliant ML 150G6', 'HP', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Sanaco, Ann R.', '', 'Buot, Lilibeth L.', '', '', ''),
(20, '2a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'S3CQ016QWRO', 'NE-0944-004-016B', '', 'PH Compaq LE1711', 'HP', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Sanaco, Ann R.', '', 'Buot, Lilibeth L.', '', '', ''),
(21, '3', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013', '', 'Operational', '0118', 'DTSMISP0031300FF4300', '2013-101-C160FE62-0001', '', 'Asphire MC605', 'Acer', '', 'Eleazar B. Salili', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Buot, Lilibeth L.', '', '', ''),
(22, '3a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0118', 'MMLXFSS001308117A58510', '2013-101-C160FE62B-0001', '', 'S200HQL', 'Acer', '', 'Eleazar B. Salili', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Buot, Lilibeth L.', '', '', ''),
(23, '4', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '', 'DTSMISP0073130102D300', '2013-101-C160FE62-0002', '', 'Asphire MC605', 'Acer', '', 'Lilibeth L. Buot', 'Engineer II', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lilibeth L. Buot', '', 'Lilibeth L. Buot', '', '', ''),
(25, '4a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLXFSS00131801FFB8510', '2013-101-C160FE62B-0002', '', 'S200HQL', 'Acer', '', 'Lilibeth L. Buot', 'Engineer II', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lilibeth L. Buot', '', 'Lilibeth L. Buot', '', '', ''),
(26, '5', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '', 'DTSMISP00731300FF9300', '2013-101-C160FE62-0003', '', 'Asphire MC605', 'Acer', '', 'Lilibeth L. Buot', 'Engineer II', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lilibeth L. Buot', '', 'Lilibeth L. Buot', '', '', ''),
(27, '5a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLXFSS00131801FOB8510', '2013-101-C160FE62B-0003', '', 'S200HQL', 'Acer', '', 'Lilibeth L. Buot', 'Engineer II', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lilibeth L. Buot', '', 'Lilibeth L. Buot', '', '', ''),
(28, '6', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '0060', 'DTSMISP0073130100C3000', '2013-101-C160FE62-0004', '', 'Asphire MC605', 'Acer', '', 'Lorenzo P. Fidel', 'BAC Secretariat', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorenzo P. Fidel', '', 'Lilibeth L. Buot', '', '', ''),
(29, '6a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0060', 'MMLXFSS00131801FOF8510', '2013-101-C160FE62B-0004', '', 'S200HQL', 'Acer', '', 'Lorenzo P. Fidel', 'BAC Secretariat', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorenzo P. Fidel', '', 'Lilibeth L. Buot', '', '', ''),
(31, '7', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '0144', 'DTSMISP00731300FF5300', '2013-101-C160FE62-0005', '', 'Asphire MC605', 'Acer', '', 'Angielyn Veloso', 'Admin Asst. II', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Angielyn Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(32, '7a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0144', 'MMLXFSS00131801F008510', '2013-101-C160FE62B-0005', '', 'S200HQL', 'Acer', '', 'Angielyn Veloso', 'Admin Asst. II', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Angielyn Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(33, '7b', 'Printer-Single Function', 'Procured', '', '', '', '', '', '', 'Operational', '0144', 'VNF3RO3R02753', '2013-101-C160FE62C-0012', '', 'HP PRO-P1102', 'HP', '', 'Angielyn Veloso', 'Admin Asst. II', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Angielyn Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(34, '8', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '0064', 'DTSMISP007313010323000', '2013-101-C160FE62-0006', '', 'Asphire MC605', 'Acer', '', 'Carolina D. Lago', 'Chief, QAS', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Carolina D. Lago', '', 'Lilibeth L. Buot', '', '', ''),
(35, '8a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0064', 'MMLXFSS00131801EBA008510', '2013-101-C160FE62B-0006', '', 'S200HQL', 'Acer', '', 'Carolina D. Lago', 'Chief, QAS', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Carolina D. Lago', '', 'Lilibeth L. Buot', '', '', ''),
(36, '8b', 'Printer-Single Function', 'Procured', '', '', '', '', '', '', 'Operational', '0064', 'VNF4K04838', '2013-101-C160FE62C-0013', '', 'HP PRO-P1102', 'HP', '', 'Carolina D. Lago', 'Chief, QAS', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Carolina D. Lago', '', 'Lilibeth L. Buot', '', '', ''),
(37, '9', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '0076', 'DTSMISP00731301009300', '2013-101-C160FE62-0007', '', 'Asphire MC605', 'Acer', '', 'Remedios D. Oliveros', 'Chief, HRMO', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Remedios D. Oliveros', '', 'Lilibeth L. Buot', '', '', ''),
(38, '9a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0076', 'MMLXFSS00131801EF-8510', '2013-101-C160FE62B-0007', '', 'S200HQL', 'Acer', '', 'Remedios D. Oliveros', 'Chief, HRMO', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Remedios D. Oliveros', '', 'Lilibeth L. Buot', '', '', ''),
(39, '10', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '0080', 'DTSMISP007313017006300', '2013-101-C160FE62-0008', '', 'Asphire MC605', 'Acer', '', 'Cheryl Glen Omega', 'PIO', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Cheryl Glen Omega', '', 'Lilibeth L. Buot', '', '', ''),
(40, '10a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0080', 'MMLXFSS00131801FOD3510', '2013-101-C160FE62B-0008', '', 'S200HQL', 'Acer', '', 'Cheryl Glen Omega', 'PIO', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Cheryl Glen Omega', '', 'Lilibeth L. Buot', '', '', ''),
(41, '11', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '0140', 'DTSMISP007731300FF3300', '2013-101-C160FE62-0009', '', 'Asphire MC605', 'Acer', '', 'Rose Ann A. Tuano', 'Admin Assistant', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rose Ann A. Tuano', '', 'Lilibeth L. Buot', '', '', ''),
(42, '11a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0140', 'MMLXFSS00131801FOA8510', '2013-101-C160FE62B-0009', '', 'S200HQL', 'Acer', '', 'Rose Ann A. Tuano', 'Admin Assistant', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rose Ann A. Tuano', '', 'Lilibeth L. Buot', '', '', ''),
(43, '12', 'Desktop', 'Procured', 'Core i3', '2GB', '1TB', 'Windows 8 Single Language', 'MS Office 2013 Professional', '', 'Operational', '0086', 'DTSMISP007313010023000', '2013-101-C160FE62-0010', '', 'Asphire MC605', 'Acer', '', 'Leo Edward Oppura', 'Asst. D.E', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '', 'Lilibeth L. Buot', '', '', ''),
(44, '12a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0086', 'MMLXFSS00131801F098510', '2013-101-C160FE62B-0010', '', 'S200HQL', 'Acer', '', 'Leo Edward Oppura', 'Asst. D.E', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '', 'Lilibeth L. Buot', '', '', ''),
(45, '13', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '0123', 'SGH303QNG1', '2013-101-C160FE62-0011', '', 'PRO-3330', 'HP', '', 'Socorro Nenette De Luna', 'Bookeeper', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Socorro Nenette De Luna', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(46, '13a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '0123', 'CNC246RNZS', '2013-101-C160FE62B-0011', '', 'Compaq LE1711', 'HP', '', 'Socorro Nenette De Luna', 'Bookeeper', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Socorro Nenette De Luna', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(47, '14', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '0031', 'SGH303QNHN', '2013-101-C160FE62-0012', '', 'PRO-3330', 'HP', '', 'Yuyi Kerra B. Roche', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(48, '14a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '0031', 'CNC246RNZL', '2013-101C160FE62B-0012', '', 'Compaq LE1711', 'HP', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(49, '15', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '0124', 'SGH303QNG5', '2013-101-C160FE62-0013', '', 'PRO-3330', 'HP', '', 'Leah G. Laurino', 'Accountant', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leah G. Laurino', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(50, '15a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '0124', 'CNC246RNZV', '2013-101C160FE62B-0013', '', 'Compaq LE1711', 'HP', '', 'Leah G. Laurino', 'Accountant', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leah G. Laurino', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(51, '16', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '0114', 'SGH303QNG4', '2013-101-C160FE62-0014', '', 'PRO-3330', 'HP', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(52, '16a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '0114', 'CNC246RNTZ', '2013-101C160FE62B-0014', '', 'Compaq LE1711', 'HP', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '2014-01-06', 'Lilibeth L. Buot', '', '2014-01-06', ''),
(54, '17a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF2D8UA00', 'NE-0118-017-705-14', '', 'E1731Sc', 'Dell', '', 'John Gayrama', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'John Gayrama', '2014-09-07', 'Lilibeth L. Buot', '', '2014-09-07', ''),
(55, '18', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', '59D2G2S', 'NE-0118-020-705-14', '', 'Optiplex 7010', 'Dell', '', 'Lilibeth Del Carmen', 'HRMO', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Remedios D. Oliveros', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(56, '18a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF3YOUA00', 'NE-0118-020-705-14', '', 'E1731Sc', 'Dell', '', 'Lilibeth Del Carmen', 'HRMO', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Remedios D. Oliveros', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(57, '18b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500302PS26M', 'NE-0118-020-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Lilibeth Del Carmen', 'HRMO', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Remedios D. Oliveros', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(58, '19', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', 'G9D2G2S', 'NE-0118-023-705-14', '', 'Optiplex 7010', 'Dell', '', 'Rainier Alibadbad', 'Engineer II', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rainier Alibadbad', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(59, '19a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF3XUUA00', 'NE-0118-023-705-14', '', 'E1731Sc', 'Dell', '', 'Rainier Alibadbad', 'Engineer II', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rainier Alibadbad', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(60, '19b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500311OS26M', 'NE-0118-023-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Rainier Alibadbad', 'Engineer II', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rainier Alibadbad', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(62, '20a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN-0DM06C-64180-2BF-3YGU', 'NE-0118-024-705-14', '', 'E1731Sc', 'Dell', '', 'Amado Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado Pobadora', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(63, '20b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500301PS26M', 'NE-0118-024-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Amado Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado Pobadora', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(64, '21', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', 'H9D2G2S', 'NE-0118-026-705-14', '', 'Optiplex 7010', 'Dell', '', 'Leo Tordillo', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Tordillo', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(65, '21a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN-0DM06C-64180-2BF-4IVU', 'NE-0118-026-705-14', '', 'E1731Sc', 'Dell', '', 'Leo Tordillo', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Tordillo', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(66, '21b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500321PS26M', 'NE-0118-026-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Leo Tordillo', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Tordillo', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(67, '22', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', '57N2G2S', 'NE-0118-003-705-14', '', 'Optiplex 7010', 'Dell', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(68, '22a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF1Y3UA00', 'NE-0118-003-705-14', '', 'E1731Sc', 'Dell', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(69, '22b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500323PS26M', 'NE-0118-003-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(70, '23', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', '1BD2G2S', 'NE-0118-007-705-14', '', 'Optiplex 7010', 'Dell', '', 'Amado Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado Pobadora', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(71, '23a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF3YGUA00', 'NE-0118-007-705-14', '', 'E1731Sc', 'Dell', '', 'Amado Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado Pobadora', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(72, '23b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'RAINER', 'NE-0118-007-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Amado Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado Pobadora', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(76, '25', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', '39D2G2S', 'NE-0118-012-705-14', '', 'Optiplex 7010', 'Dell', '', 'Leo Edward Oppura', 'OIC-District Engineer', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(77, '25a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF41GUA00', 'NE-0118-014-705-14', '', 'E1731Sc', 'Dell', '', 'Leo Edward Oppura', 'OIC-District Engineer', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(78, '25b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500330PS26M', 'NE-0118-014-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Leo Edward Oppura', 'OIC-District Engineer', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(79, '26', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', '28D2G2S', 'NE-0118-016-705-14', '', 'Optiplex 7010', 'Dell', '', 'Lorenzo P. Fidel Jr.', 'Engineer III', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorenzo P. Fidel Jr.', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(80, '26a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF1VFUA00', 'NE-0118-016-705-14', '', 'E1731Sc', 'Dell', '', 'Lorenzo P. Fidel Jr.', 'Engineer III', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorenzo P. Fidel Jr.', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(81, '26b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500303PS26M', 'NE-0118-016-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Lorenzo P. Fidel Jr.', 'Engineer III', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorenzo P. Fidel Jr.', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(82, '27', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', '39N2G2S', 'NE-0118-029-705-14', '', 'Optiplex 7010', 'Dell', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(83, '27a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF42MUA00', 'NE-0118-029-705-14', '', 'E1731Sc', 'Dell', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(84, '27b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500191PS26M', 'NE-0118-029-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(85, '28', 'Desktop', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', 'Operational', '', '68N2G2S', 'NE-0118-031-705-14', '', 'Optiplex 7010', 'Dell', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rey P. Rocabo', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(86, '28a', 'Monitor', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', 'CN0DM06C641802BF40GUA00', 'NE-0118-031-705-14', '', 'E1731Sc', 'Dell', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rey P. Rocabo', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(87, '28b', 'UPS', 'Turned over by PDWH Central', '', '', '', '', '', '', 'Operational', '', '1234500306PS26M', 'NE-0118-031-705-14', '', 'PSA1000MT3-230U', 'Emerson', '', 'Rocabo, Rey P.', 'District IT Support Officer', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rey P. Rocabo', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(91, '29', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2007', 'Sophos', 'Operational', '0142', 'v1', '2009-101-C160FE62-0002', 'Clone', 'P5G41T-MLV', 'Asustek', '', 'Marlou Tuazon', 'Admin Asst. II', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Marlou Tuazon', '', 'Lilibeth L. Buot', '', '', ''),
(92, '29a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0142', 'ET69802309SLO', '2009-101-C160FE62B-0002', '', 'T52WA', 'BenQ', '', 'Marlou Tuazon', 'Admin Officer', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Marlou Tuazon', '', 'Lilibeth L. Buot', '', '', ''),
(93, '30', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2007', 'Sophos', 'Operational', '0134', 'v2', '2007-101-C160FE62-0025', 'Clone', 'P5SD2-VM/P5', 'Asustek', '', 'Lorna Tagalog', 'Admin  Aide', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorna Tagalog', '', 'Lilibeth L. Buot', '', '', ''),
(94, '30a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0134', 'v3', '2007-101-C160FE62B-0024', '', 'SyncMaster 632NW', 'Samsung', '', 'Lorna Tagalog', 'Admin  Aide', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorna Tagalog', '', 'Lilibeth L. Buot', '', '', ''),
(95, '31', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2007', 'Sophos', 'Operational', '', 'v4', '', 'Clone', 'Acer', 'Acer', '', 'Nenette De Luna', 'Bookeeper', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Nenette De Luna', '', 'Lilibeth L. Buot', '', '', ''),
(96, '31a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'v5', '', '', 'Compaq LE1711', 'HP', '', 'Nenette De Luna', 'Bookeeper', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Nenette De Luna', '', 'Lilibeth L. Buot', '', '', ''),
(97, '32', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2007', 'Sophos', 'Operational', '0074', 'v6', '2008-101-C160FE62-0031', 'Clone', 'P5SD2-VM/P5', 'Asustek', '', 'Vivencia Lelis', 'Admin Officer', 'Office of the District Engineer', 'Region VIII', '', 'Vivencia Lelis', '', 'Lilibeth L. Buot', '', '', ''),
(98, '32a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0074', 'PE16HMBQ611964k', '2008-101-C160FE62B-0031', '', 'SyncMaster 632NW', 'Samsung', '', 'Vivencia Lelis', 'Admin Officer', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Vivencia Lelis', '', 'Lilibeth L. Buot', '', '', ''),
(99, '33', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2007', 'Sophos', 'Operational', '0129', 'WOMVZY124146', '2010-101-C160FE62-0016', 'Clone', 'G31TM-P31', 'MSI', '', 'Maricor Veloso', 'Admin  Aide', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Maricor Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(100, '33a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0129', 'V88GH9NZ429948E', '2010-101-C160FE62B-0016', '', 'SyncMaster 632NW', 'Samsung', '', 'Maricor Veloso', 'Admin  Aide', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Maricor Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(101, '34', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2007', 'Sophos', 'Operational', '', 'v7', '', 'Clone', 'P5KPL-AMP/P5', 'Asus', '', 'Jhunjeff Cobacha', 'Admin  Aide', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jhunjeff Cobacha', '', 'Lilibeth L. Buot', '', '', ''),
(102, '34a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'PE16HMBQ608410E', '', '', 'SyncMaster 632NW', 'Samsung', '', 'Gracelyn E. Suson', 'Admin  Aide', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jhunjeff Cobacha', '', 'Lilibeth L. Buot', '', '', ''),
(103, '35', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2007', 'Sophos', 'Operational', '0130', 'v8', '2008-101-C160FE62-0033', 'Clone', 'P5GC-MX/P5', 'Asustek', '', 'Ma. Rosario Elegio', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '', 'Lilibeth L. Buot', '', '', ''),
(104, '35a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0130', 'PE16HMAQ602756H', '2008-101-C160FE62B-0033', '', 'SyncMaster 632NW', 'Samsung', '', 'Ma. Rosario Elegio', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '', 'Lilibeth L. Buot', '', '', ''),
(105, '36', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2010', 'Sophos', 'Operational', '0100', 'v9', '2008-101-C160FE62-0030', 'Clone', 'P5GC-MX/P5', 'Asustek', '', 'Jessa Mae Francisco', 'Admin  Aide', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Francisco Ortega', '', 'Lilibeth L. Buot', '', '', ''),
(106, '36a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0100', 'PE16HMBQ607895B', '2008-101-C160FE62B-0030', '', 'SyncMaster 632NW', 'Samsung', '', 'Jessa Mae Francisco', 'Admin  Aide', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Francisco Ortega', '', 'Lilibeth L. Buot', '', '', ''),
(107, '37', 'Desktop', 'Procured', 'AMD Athlon II', '1GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2010', 'Sophos', 'Operational', '', 'v10', '2007-101-0160FE62-0019', 'Clone', 'EMX-MCP61MCafe', 'EMAXX', '', 'Sylvestre Abella', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Sylvestre Abella', '', 'Lilibeth L. Buot', '', '', ''),
(108, '37a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', '1601029291', '2011-101-0160FE62B-0001', '', 'CDR-KING', 'CDR-KING', '', 'Sylvestre Abella', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Sylvestre Abella', '', 'Lilibeth L. Buot', '', '', ''),
(109, '37b', 'Printer-Multifunction', 'Procured', '', '', '', '', '', '', 'Operational', '', 'E70440M2F33244', '2013-101-C160FE62C-0009', '', 'MFC-J40W', 'Brother', '', 'Sylvestre Abella', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Sylvestre Abella', '', 'Lilibeth L. Buot', '', '', ''),
(110, '38', 'Desktop', 'Procured', '', '', '', '', '', '', 'Operational', '0145', '00776N9002635', '2007-101-C160FE62-0021', '', 'RedFox Black', 'RedFox', '', 'Angielyn Veloso', 'Clerk IV', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Angielyn Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(111, '38a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '0145', 'CM16H9FS227207W1', '2009-101-C160FE62B-0003', '', 'SyncMaster 632NW', 'Samsung', '', 'Angielyn Veloso', 'Clerk IV', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Angielyn Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(112, '38b', 'Printer-Single Function', 'Procured', '', '', '', '', '', '', 'Operational', '0145', 'G8NY031115', '2009-101-C160FE62C-004', '', 'LX300+II', 'Epson', '', 'Angielyn Veloso', 'Clerk IV', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Angielyn Veloso', '', 'Lilibeth L. Buot', '', '', ''),
(113, '39', 'Desktop', 'Procured', 'Intel Core i3', '4GB', '500GB', 'Windows 7 Ultimate', 'MS Office 2010', 'Sophos', 'Operational', '', 'v11', '2010-101-C160FE62-0012', 'Clone', 'H55M-S2H', 'Gigabyte', '', 'Vevian Esmero', 'Admin  Aide', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Vevian Esmero', '', 'Lilibeth L. Buot', '', '', ''),
(114, '39a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'Q52A1-JA008285', '2010-101-C160FE62B-0012', '', 'LCD H819', 'Envision', '', 'Vevian Esmero', 'Admin  Aide', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Vevian Esmero', '', 'Lilibeth L. Buot', '', '', ''),
(115, '39b', 'Printer-Multifunction', 'Procured', '', '', '', '', '', '', 'Operational', '', 'E67793D3F282176', '2013-101-C160FE62C-0004', '', 'MFC-J220', 'Brother', '', 'Vevian Esmero', 'Admin  Aide', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Vevian Esmero', '', 'Lilibeth L. Buot', '', '', ''),
(116, '40', 'Desktop', 'Procured', 'Intel Core i3', '4GB', '500GB', 'Windows 7 Ultimate', 'MS Office 2010', 'Sophos', 'Operational', '', 'v12', '2012-101-C160FE2-0018', 'Clone', 'H61MA-D2V', 'Gigabyte', '', 'MA. Gracia Condor', 'Admin  Aide', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ma. Gracia Condor', '', 'Lilibeth L. Buot', '', '', ''),
(117, '40a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLQ6SS007219783884201', '2012-101-C160FE62B-0018', '', 'S191HQL', 'Acer', '', 'MA. Gracia Condor', 'Admin  Aide', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ma. Gracia Condor', '', 'Lilibeth L. Buot', '', '', ''),
(118, '41', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 8.1 Pro', 'MS Office 2013', '', 'Operational', '', 'v13', '', 'Clone', 'H61M-S1', 'Gigabyte', '', 'Renissa Ang', 'Admin  Aide', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Renissa Ang', '', 'Lilibeth L. Buot', '', '', ''),
(119, '41a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MRCQHYCD801241W', '', '', 'Samsung S20C150L', 'Samsung', '', 'Renissa Ang', 'Admin  Aide', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Renissa Ang', '', 'Lilibeth L. Buot', '', '', ''),
(120, '42', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 8.1 Pro', 'MS Office 2013', '', 'Operational', '', 'v14', '2012-101-C160FE62-0017', 'Clone', 'H61M-S1', 'Gigabyte', '', 'Phillip Azores', 'Architect II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Phillip Azores', '', 'Lilibeth L. Buot', '', '', ''),
(121, '42a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLQ6SS0072197AF964201', '2012-101-C160FE62B-0017', '', 'S191HQL', 'Acer', '', 'Phillip Azores', 'Architect II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Phillip Azores', '', 'Lilibeth L. Buot', '', '', ''),
(122, '43', 'Desktop', 'Procured', 'Intel Core 2 Duo', '2GB', '160GB', 'Windows 7 Ultimate', 'MS Office 2010', 'Sophos', 'Operational', '', 'v15', '2008-101-C160FE62-0003', 'Clone', 'P5GC-MX/P5', 'Asustek', '', 'Lionel De Paz', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lionel De Paz', '', 'Lilibeth L. Buot', '', '', ''),
(123, '43a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CM16H9FS227207W', '2008-101-C160FE62B-0003', '', 'SyncMaster 633NW', 'Samsung', '', 'Lionel De Paz', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lionel De Paz', '', 'Lilibeth L. Buot', '', '', ''),
(124, '43b', 'Printer-Multifunction', 'Procured', '', '', '', '', '', '', 'Operational', '', 'E6779303f282081', '2013-101-C160FE62C-0005', '', 'MFC-J220', 'Brother', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, '44', 'Printer-Single Function', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN88ZR6W30N', '2007-101-C160FE62C-0024', '', 'HP Deskjet F4185', 'HP', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, '45', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 8.1 Pro', 'MS Office 2013', '', 'Operational', '', 'YB02140240', '', '', 'Ideapad', 'Lenovo', '', 'Rainier Alibadbad', 'Engineer II', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rainier Alibadbad', '', 'Lilibeth L. Buot', '', '', ''),
(127, '46', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 8.1 Pro', 'MS Office 2013', '', 'Operational', '', 'NXMJKSP0024130C5O23400', '', '', 'Aspire E1-572G', 'Acer', '', 'Vivencia Lelis', 'Admin Officer III', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Vivencia Lelis', '', 'Lilibeth L. Buot', '', '', ''),
(128, '47', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 8.1 Pro', 'MS Office 2013', '', 'Operational', '', 'NXMJKSP0024130C5B13400', '', '', 'Aspire V5-WE2', 'Acer', '', 'James T. Pableo', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'James T. Pableo', '', 'Lilibeth L. Buot', '', '', ''),
(129, '48', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 8.1 Pro', 'MS Office 2013', '', 'Operational', '', 'NXMJKSP0024130C4CD3400', '', '', 'Aspire E1-572G', 'Acer', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '', 'Lilibeth L. Buot', '', '', ''),
(130, '49', 'Laptop', 'Procured', 'Intel Core i5', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXM5SSP00131309CA36600', '', '', 'Aspire V5-471', 'Acer', '', 'Leo Edward Oppura', 'ADE', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '', 'Lilibeth L. Buot', '', '', ''),
(131, '50', 'Laptop', 'Procured', 'Intel Core i5', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXM5USP00131309AA36600', '', '', 'Aspire V5-471', 'Acer', '', 'Miemie Aragon', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Miemie Aragon', '', 'Lilibeth L. Buot', '', '', ''),
(132, '51', 'Laptop', 'Procured', 'Intel Core i6', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXM5USP00131301E036600', '', '', 'Aspire V5-471G', 'Acer', '', 'Eleazar B. Salili', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', '', '', ''),
(133, '52', 'Laptop', 'Procured', 'Intel Core i7', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXM5USP0013122452E6600', '', '', 'Aspire V5-471G', 'Acer', '', 'Imelda De Claro', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Imelda De Claro', '', 'Lilibeth L. Buot', '', '', ''),
(134, '53', 'Laptop', 'Procured', 'Intel Core i3', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXM3USP00231209ECC6600', '', '', 'Aspire V5-471G', 'Acer', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '', 'Lilibeth L. Buot', '', '', ''),
(135, '54', 'Laptop', 'Procured', 'Intel Core i3', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXM5USP00131301E186600', '', '', 'Aspire V5-471G', 'Acer', '', 'Leo Tordillo', 'Chief, PDS', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Tordillo', '', 'Lilibeth L. Buot', '', '', ''),
(136, '55', 'Laptop', 'Procured', 'Intel Core i5', '4GB', '500GB', 'Windows 7 Ultimate', 'MS Office 2010', '', 'Operational', '', 'CB14570570', '2012-101-C160FE62F-0019', '', 'Lenovo G470', 'Lenovo', '', 'Phillip Azores', 'Architect II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Phillip Azores', '', 'Lilibeth L. Buot', '', '', ''),
(137, '56', 'Laptop', 'Procured', 'Intel Core i5', '4GB', '500GB', 'Windows 7 Ultimate', 'MS Office 2010', '', 'Operational', '', 'CB14574154', '2012-101-C160FE62F-0020', '', 'Lenovo G470', 'Lenovo', '', 'Amado Pobadora', 'Architect II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado Pobadora', '', 'Lilibeth L. Buot', '', '', ''),
(138, '57', 'Laptop', 'Procured', 'Intel Core i5', '4GB', '500GB', 'Windows 7 Ultimate', 'MS Office 2010', '', 'Operational', '', 'CB14574136', '2012-101-C160FE62F-0021', '', 'Lenovo G470', 'Lenovo', '', 'Arnold Abadiez', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Arnold Abadiez', '', 'Lilibeth L. Buot', '', '', ''),
(139, '58', 'Laptop', 'Procured', 'Intel Core i5', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXMF2SP0023341EF8B6600', '', '', 'Aspire TMP-246m', 'Acer', '', 'COA', '', '', 'Region VIII', 'LEYTE 3rd DEO', '', '', 'Lilibeth L. Buot', '', '', ''),
(140, '59', 'Laptop', 'Procured', 'Intel Core i5', '4GB', '500GB', 'Windows 8 Single Language', 'MS Office 2010', '', 'Operational', '', 'NXVA8SP0044481A60C760', '', '', 'Aspire TMP-246m', 'Acer', '', 'COA', '', '', 'Region VIII', 'LEYTE 3rd DEO', '', '', 'Lilibeth L. Buot', '', '', ''),
(141, '60', 'Desktop', 'Procured', 'Intel Core 2 Duo', '1GB', '160GB', 'Window XP Professional', 'MS Office 2007', '', 'Operational', '', 'v16', '', 'Clone', 'Asustek P5GC-MX', 'Asustek', '', 'COA', '', '', 'Region VIII', 'LEYTE 3rd DEO', '', '', 'Lilibeth L. Buot', '', '', ''),
(149, '68', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211263', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Rodjie Ann Pacino', 'Admin  Aide (Job Order)', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lionel De Paz', '', 'Lilibeth L. Buot', '', '', ''),
(150, '69', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211718', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Lut Baclea-an', 'District Engineer', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lut Baclea-an', '', 'Lilibeth L. Buot', '', '', ''),
(151, '70', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211323', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Edisyl Abella', 'Admin Aide (Job Order)', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lut Baclea-an', '', 'Lilibeth L. Buot', '', '', ''),
(152, '71', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211266', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Leo Edward Oppura', 'Asst. D.E', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '', 'Lilibeth L. Buot', '', '', ''),
(153, '72', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211276', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Edisyl Abella', 'Admin  Aide (Job Order)', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Leo Edward Oppura', '', 'Lilibeth L. Buot', '', '', ''),
(154, '73', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211243', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Lionel De Paz', 'Admin Officer V', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lionel De Paz', '', 'Lilibeth L. Buot', '', '', ''),
(155, '74', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211233', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Eleazar B. Salili', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', '', '', ''),
(156, '75', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211331', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Leo B. Tordillo', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo B. Tordillo', '', 'Lilibeth L. Buot', '', '', ''),
(157, '76', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211262', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Leo B. Tordillo', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo B. Tordillo', '', 'Lilibeth L. Buot', '', '', ''),
(158, '77', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211278', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Remedios D. Oliveros', 'HRMO', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Remedios D. Oliveros', '', 'Lilibeth L. Buot', '', '', ''),
(159, '78', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211277', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Ann R. Sanaco', 'Accountant III', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '', 'Lilibeth L. Buot', '', '', ''),
(160, '79', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211351', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Socorro Nenette De Luna', 'Budget Officer', 'Finance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '', 'Lilibeth L. Buot', '', '', ''),
(161, '80', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211232', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Angielyn Veloso', 'Clerk IV', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ann R. Sanaco', '', 'Lilibeth L. Buot', '', '', ''),
(162, '81', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211717', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Lorenzo P. Fidel', 'Procurement Officer', 'Office of the District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Lorenzo P. Fidel', '', 'Lilibeth L. Buot', '', '', ''),
(163, '82', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211337', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Michael H. Cabangisan', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Michael H. Cabangisan', '', 'Lilibeth L. Buot', '', '', ''),
(164, '83', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN0140521125', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Sheena Viagedor', 'Admin  Aide (Job Order)', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lilibeth L. Buot', '', 'Lilibeth L. Buot', '', '', ''),
(165, '84', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211255', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Sharee Ann Hernando', 'Admin  Aide (Job Order)', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Carolina Lago', '', 'Lilibeth L. Buot', '', '', ''),
(166, '85', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211242', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Leo B. Tordillo', 'Engineer III', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo B. Tordillo', '', 'Lilibeth L. Buot', '', '', ''),
(167, '86', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211258', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Michael H. Cabangisan', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Michael H. Cabangisan', '', 'Lilibeth L. Buot', '', '', ''),
(168, '87', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211230', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Eleazar B. Salili', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', '', '', ''),
(169, '88', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211330', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Carolina D. Lago', 'Chief, QAS', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Carolina D. Lago', '', 'Lilibeth L. Buot', '', '', ''),
(170, '89', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211703', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Rocabo, Rey P.', 'CMT II', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rey P. Rocabo', '', 'Lilibeth L. Buot', '', '', ''),
(171, '90', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211358', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Rey P. Rocabo', 'CMT II', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rey P. Rocabo', '', 'Lilibeth L. Buot', '', '', ''),
(172, '91', 'IP Phone', 'Procured', '', '', '', '', '', '', 'Operational', '', 'FCN01405211268', '', '', 'IP Touch 4038', 'Alcatel-Lucent', '', 'Rey P. Rocabo', 'CMT II', 'Office of the Assistant District Engineer', 'Region VIII', 'LEYTE 3rd DEO', 'Rey P. Rocabo', '', 'Lilibeth L. Buot', '', '', ''),
(173, '92', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '041', 'DTVMWSP00162902C539600', '2016-101-C160FE62-0016', '', 'Veriton X464G', 'Acer', '', 'Bernard D. Sarsalijo', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jose O. Tamaca', '', 'Lilibeth L. Buot', '', '', ''),
(174, '92a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'v17', '', '', '', 'Acer', '', 'Jose O. Tamaca', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jose O. Tamaca', '', 'Lilibeth L. Buot', '', '', ''),
(175, '92b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', 'v18', '', '', '', 'APC', '', 'Jose O. Tamaca', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jose O. Tamaca', '', 'Lilibeth L. Buot', '', '', ''),
(176, '93', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '042', 'DTVMSP00162902C7B9600', '2016-101-C160FE62-0017', '', 'Veriton X464G', 'Acer', '', 'Zosimo Arbillon', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Zosimo Arbillon', '', 'Lilibeth L. Buot', '', '', ''),
(177, '93a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS01254902B682415', '2016-101-C160FE62-0017', '', 'S200HQL', 'Acer', '', 'Zosimo Arbillon', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Zosimo Arbillon', '', 'Lilibeth L. Buot', '', '', ''),
(178, '93b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1641X09416', '2016-101-C160FE62-0017', '', 'APC 1100', 'APC', '', 'Zosimo Arbillon', 'Admin Officer III', 'Administrative Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jose O. Tamaca', '', 'Lilibeth L. Buot', '', '', ''),
(179, '94', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '', 'DTVMSP00162902D919600', '2016-101-C160FE62-0018', '', 'Veriton X464G', 'Acer', '', 'Lyndon P. Astrologo', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lyndon P. Astrologo', '', 'Lilibeth L. Buot', '', '', ''),
(180, '94a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS012549036E62415', '2016-101-C160FE62-0018', '', 'S200HQL', 'Acer', '', 'Lyndon P. Astrologo', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lyndon P. Astrologo', '', 'Lilibeth L. Buot', '', '', ''),
(181, '94b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1632X25010', '2016-101-C160FE62-0018', '', 'APC 1100', 'APC', '', 'Lyndon P. Astrologo', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lyndon P. Astrologo', '', 'Lilibeth L. Buot', '', '', '');
INSERT INTO `inventory` (`ID`, `ITEM_NUMBER`, `TYPE`, `ACQUISITION`, `PROCESSOR`, `MEMORY`, `HARD_DISK`, `OPERATING_SYSTEM`, `MS_OFFICE`, `OTHER_INSTALLED_SOFTWARE`, `STATUS`, `ARE_NUMBER`, `SERIAL_NUMBER`, `PROPERTY_NUMBER`, `DESCRIPTION`, `MODEL`, `BRAND_NAME`, `UNIT_VALUE`, `END_USER`, `DESIGNATION`, `DIVISION`, `REGION`, `OFFICE`, `ASSET_OWNER`, `DATE_RECEIVED`, `RECEIVED_FROM`, `SUPPLIER`, `DATE_OF_AQUISITION`, `REMARKS`) VALUES
(182, '95', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '', 'DTVMS00162902D269600', '2016-101-C160FE62-0019', '', 'Veriton X464G', 'Acer', '', 'Michael H. Cabangisan', 'OIC-Chief', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Michael H. Cabangisan', '', 'Lilibeth L. Buot', '', '', ''),
(183, '95a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS01254903D2E2415', '2016-101-C160FE62-0019', '', 'S200HQL', 'Acer', '', 'Michael H. Cabangisan', 'OIC-Chief', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Michael H. Cabangisan', '', 'Lilibeth L. Buot', '', '', ''),
(184, '95b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1632X25660', '2016-101-C160FE62-0019', '', 'APC 1100', 'APC', '', 'Michael H. Cabangisan', 'OIC-Chief', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'Michael H. Cabangisan', '', 'Lilibeth L. Buot', '', '', ''),
(185, '96', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '', 'DTVMSP00162902D4A9600', '2016-101-C160FE62-0020', '', 'Veriton X464G', 'Acer', '', 'Ma. Rosario Elegio', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ma. Rosario O. Elegio', '', 'Lilibeth L. Buot', '', '', ''),
(186, '96a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS0125490324A2415', '2016-101-C160FE62-0020', '', 'S200HQL', 'Acer', '', 'Ma. Rosario Elegio', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ma. Rosario O. Elegio', '', 'Lilibeth L. Buot', '', '', ''),
(187, '96b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1632X25110', '2016-101-C160FE62-0020', '', 'APC 1100', 'APC', '', 'Ma. Rosario Elegio', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Ma. Rosario O. Elegio', '', 'Lilibeth L. Buot', '', '', ''),
(188, '97', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '046', 'DTVMSP00162902C419600', '2016-101-C160FE62-0021', '', 'Veriton X464G', 'Acer', '', 'Levi R. Genoring', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Levi R. Genoring', '', 'Lilibeth L. Buot', '', '', ''),
(189, '97a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS0125490386D2415', '2016-101-C160FE62-0021', '', 'S200HQL', 'Acer', '', 'Levi R. Genoring', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Levi R. Genoring', '', 'Lilibeth L. Buot', '', '', ''),
(190, '97b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1632X25868', '2016-101-C160FE62-0021', '', 'APC 1100', 'APC', '', 'Levi R. Genoring', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Levi R. Genoring', '', 'Lilibeth L. Buot', '', '', ''),
(191, '98', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '047', 'DTVMSP00162902C3F9600', '2016-101-C160FE62-0022', '', 'Veriton X464G', 'Acer', '', 'Leo M. Acejo Jr.', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo M. Acejo Jr.', '', 'Lilibeth L. Buot', '', '', ''),
(192, '98a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS01254902B782415', '2016-101-C160FE62-0022', '', 'S200HQL', 'Acer', '', 'Leo M. Acejo Jr.', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo M. Acejo Jr.', '', 'Lilibeth L. Buot', '', '', ''),
(193, '98b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1641X09441', '2016-101-C160FE62-0022', '', 'APC 1100', 'APC', '', 'Leo M. Acejo Jr.', 'Engineer II', 'Quality Assurance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Leo M. Acejo Jr.', '', 'Lilibeth L. Buot', '', '', ''),
(197, '100', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '', 'BZ7ZK62', '2016-101-C160FE62-0024', '', 'Vostro 3650', 'Dell', '', 'Eleazar B. Salili', 'OIC-Chief, Maintenance', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', '', '', ''),
(198, '100a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0T95GC-72872-65A-AKDB-A00', '2016-101-C160FE62-0024', '', 'E2216HV', 'Dell', '', 'Eleazar B. Salili', 'OIC-Chief, Maintenance', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', '', '', ''),
(199, '100b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1632X25627', '2016-101-C160FE62-0024', '', 'APC 1100', 'APC', '', 'Eleazar B. Salili', 'OIC-Chief, Maintenance', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', '', '', ''),
(200, '101', 'Desktop', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '', 'BZ15LG2', '2016-101-C160FE62-0025', '', 'Vostro 3650', 'Dell', '', 'Lawrence Christopher Alonzo', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lawrence Christopher Alonzo', '', 'Lilibeth L. Buot', '', '', ''),
(201, '101a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-OT95GC-72872-65A-COUB-A00', '2016-101-C160FE62-0025', '', 'E2216HV', 'Dell', '', 'Lawrence Christopher Alonzo', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lawrence Christopher Alonzo', '', 'Lilibeth L. Buot', '', '', ''),
(202, '101b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1641X09452', '2016-101-C160FE62-0025', '', 'APC 1100', 'APC', '', 'Lawrence Christopher Alonzo', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Lawrence Christopher Alonzo', '', 'Lilibeth L. Buot', '', '', ''),
(203, '102', 'Desktop', 'Procured', 'Intel Core i7-6700', '32GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '', 'DTGMTSP047625080E43000', '2016-101-C160FE62-0026', '', 'Veriton M4640G', 'Acer', '', 'Roe Ann D. Oliveros', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Roe Ann D. Oliveros', '', 'Lilibeth L. Buot', '', '', ''),
(204, '102a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS01254805ED62415', '2016-101-C160FE62-0026', '', 'S200HQL', 'Acer', '', 'Roe Ann D. Oliveros', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Roe Ann D. Oliveros', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(205, '102b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1632X25620', '2016-101-C160FE62-0026', '', 'APC 1100', 'APC', '', 'Roe Ann D. Oliveros', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Roe Ann D. Oliveros', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(206, '103', 'Desktop', 'Procured', 'Intel Core i7-6700', '32GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', 'Operational', '', 'DTVMTSP047625080FB3000', '2016-101-C160FE62-0027', '', 'Veriton M4640G', 'Acer', '', 'James Emmanuel T. Pableo', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'James Emmanuel T. Pableo', '', 'Lilibeth L. Buot', '', '', ''),
(207, '103a', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'MMLZ3SS01254805EDC2415', '2016-101-C160FE62-0027', '', 'S200HQL', 'Acer', '', 'James Emmanuel T. Pableo', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'James Emmanuel T. Pableo', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(208, '103b', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '3B1702X062363', '2016-101-C160FE62-0027', '', 'APC 1100', 'APC', '', 'James Emmanuel T. Pableo', 'Engineer II', 'Contruction Section', 'Region VIII', 'LEYTE 3rd DEO', 'James Emmanuel T. Pableo', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(209, '104', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2013', '', 'Operational', '311', 'NXVBDSP001609005497600', '2016-101-C160FE62F-0037', '', 'Acer TMP258-MG-781K', 'Acer', '', 'Cabangisan, Mark', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Cabangisan, Mark', '', 'Lilibeth L. Buot', '', '2016-12-15', ''),
(210, '105', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2013 Professional', '', 'Operational', '312', 'NVVBDSP00161006D697600', '2016-101-C160FE62F-0036', '', 'Acer TMP258-MG-781K', 'Acer', '', 'Roe Ann D. Oliveros', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Roe Ann D. Oliveros', '', 'Lilibeth L. Buot', '', '2016-12-15', ''),
(211, '106', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2013', '', 'Operational', '313', 'NXVBDSP00161006D677600', '2016-101-C160FE62F-0038', '', 'Acer TMP258-MG-781K', 'Acer', '', 'Amado B. Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado  B. Pobadora', '', 'Lilibeth L. Buot', '', '2016-12-15', ''),
(212, '107', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2013', '', 'Operational', '', 'NXVBDSP00161006D6E7600', '2016-101-C160FE62F-0039', '', 'Acer TMP258-MG-781K', 'Acer', '', 'Jason S. Deberto', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jason S. Deberto', '', 'Lilibeth L. Buot', '', '2016-12-15', ''),
(213, '108', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2013 Professional', '', 'Operational', '', 'NXVBDSP00161006D277600', '2016-101-C160FE62F-0041', '', 'Acer TMP258-MG-781K', 'Acer', '', 'John P. Gayrama', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'John P. Gayrama', '', 'Lilibeth L. Buot', '', '2016-12-15', ''),
(214, '109', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2013 Home', '', 'Operational', '315', 'NXVBDSP00161006D337600', '2016-101-C160FE62F-0040', '', 'Acer TMP258-MG-781K', 'Acer', '', 'Benjohn Mejares', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Benjohn Mejares', '', 'Lilibeth L. Buot', '', '2016-12-15', ''),
(215, '110', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 7 Professional', '', 'Sophos', 'Operational', '071', 'DTVQ8SP0138190485C9600', '', '', 'Acer Veriton M4640GM', 'Acer', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '', ''),
(216, '111', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 7 Professional', '', 'Sophos', 'Operational', '', 'DTVQ8SPO13819048119600', '', '', 'Acer Veriton M4640GM', 'Acer', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '', ''),
(217, '112', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '073', 'DTVQ8SPO138190480E9600', '', '', 'Acer Veriton M4640GM', 'Acer', '', '', '', '', '', '', '', '', '', '', '', ''),
(218, '113', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '074', 'DTVQ8SPO138990483E9600', '', '', 'Acer Veriton M4650G', 'Acer', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '', ''),
(219, '114', 'Desktop', 'Procured', 'Intel Core i7', '32GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '075', 'DTVQ8SPO1481705A2A9600', '', '', 'Acer Veriton M4650G', 'Acer', '', 'Cabangisan, Mark P.', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Cabangisan, Mark P.', '', 'Lilibeth L. Buot', '', '', ''),
(220, '115', 'Desktop', 'Procured', 'Intel Core i7', '32GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '076', 'DTVQ8SPO1481705A28600', '', '', 'Acer Veriton M4650G', 'Acer', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '', ''),
(221, '116', 'Desktop', 'Procured', 'Intel Core i7', '32GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '078', '4CE8O96CBU', '', '', 'PH Prodesk 400', 'HP', '', '', '', '', '', '', '', '', '', '', '', ''),
(222, '117', 'Desktop', 'Procured', 'Intel Core i7', '32GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '078', '4CE8096CBS', '', '', 'HP Prodesk 400', 'HP', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '', ''),
(223, '118', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '079', 'DTVPPSP334832O460D9600', '', '', 'ACER VERITON MZ640G', 'Acer', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '', ''),
(224, '119', 'Desktop', 'Procured', 'Intel Core i5', '8GB', '1TB', 'Windows 10 Pro', '', 'Sophos', 'Operational', '80', 'DTVPPSP334832046PA9600', '', '', 'ACER VERITON MZ640G', 'Acer', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '', ''),
(225, '120', 'Laptop', 'Procured', 'i7', '8GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '', 'NXVEVSP048816DD1397600', '', '', 'ACER TRAVELMATE', 'Acer', '', '', '', '', '', '', '', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(226, '121', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '332', 'NXVEVSP0488160D18E7600', '', '', 'ACER TRAVELMATE', 'Acer', '', 'Miemie Aragon', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Miemie Aragon', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(227, '122', 'Laptop', 'Procured', 'Intel Core i7', '8GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '333', 'NXVEVSP0488160D10C7600', '', '', 'ACER TRAVELMATE', 'Acer', '', 'Amado B. Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'CuÃ±a, Concon', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(228, '123', 'Laptop', 'Procured', 'i7', '8GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '334', 'NXVEVSP0488160D1717600', '', '', 'ACER TRAVELMATE', 'Acer', '', 'Jason S. Deberto', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Jason S. Deberto', '', 'Lilibeth L. Buot', '', '2016-11-22', ''),
(229, '124', 'Laptop', 'Procured', 'Intel Core i7', '16GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '335', 'PF0WL8G4', '', '', 'LENOVO', 'Lenovo', '', 'Phillip Anthony  Azores', 'Architect II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Modesto, Lorebelle', '', 'Lilibeth L. Buot', '', '2018-08-09', ''),
(230, '125', 'Laptop', 'Procured', 'Intel Core i7', '16GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '336', 'PF0WYT00', '', '', 'LENOVO', 'Lenovo', '', 'Phillip Anthony  Azores', 'Architect II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Phillip Anthony Azores', '', 'Lilibeth L. Buot', '', '2018-08-09', ''),
(231, '126', 'Laptop', 'Procured', 'Intel Core i7', '16GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '337', 'PF0WYM7C', '', '', 'LENOVO', 'Lenovo', '', 'Amado B. Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Monreal, Jemarie', '', 'Lilibeth L. Buot', '', '2018-08-09', ''),
(232, '127', 'Laptop', 'Procured', 'Intel Core i7', '1GB', '500GB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '344', 'K1905N0035615', '', '', 'MS-14B3', 'MSI', '', 'Monge, Renerio', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Monge, Renerio', '', 'Lilibeth L. Buot', '', '2020-01-20', ''),
(233, '128', 'Laptop', 'Procured', 'Intel Core i7', '1GB', '500GB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '345', 'K1905N0035619', '', '', 'MS-14B3', 'MSI', '', 'Eleazar B. Salili', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', '', '2020-01-20', ''),
(234, '129', 'Laptop', 'Procured', 'Intel Core i7', '16GB', '500GB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '346', 'K19O7N0062421', '', '', 'MSI 9560NGW', 'MSI', '', 'AlbaÃ±o, Arnold', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'AlbaÃ±o, Arnold', '', 'Lilibeth L. Buot', '', '2020-01-20', ''),
(235, '130', 'Laptop', 'Procured', 'Intel Core i7', '16GB', '500GB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '347', 'K1907H0062499', '', '', 'MSI 9560NGW', 'MSI', '', 'Salili, Roe Ann O.', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Salili, Roe Ann O.', '', 'Lilibeth L. Buot', '', '2020-01-20', ''),
(236, '131', 'Desktop', 'Procured', 'Intel Core i7', '16GB', '1TB', 'Windows 10 Pro', '', 'Symantec Anti-Virus', 'Operational', '090', 'FB7RGD2', '', '', 'POWER EDGE T40', 'Dell', '', 'AlbaÃ±o, Arnold', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'AlbaÃ±o, Arnold', '', 'Lilibeth L. Buot', '', '2020-07-08', ''),
(237, '131a', 'Keyboard', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-08X5G0-LO3009AI-006B', '', '', '', 'Dell', '', 'AlbaÃ±o, Arnold', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'AlbaÃ±o, Arnold', '', 'Lilibeth L. Buot', '', '2020-07-09', ''),
(238, '131b', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0MFWK-QDC00-96H-296B-A06', '', '', '', 'Dell', '', 'AlbaÃ±o, Arnold', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'AlbaÃ±o, Arnold', '', 'Lilibeth L. Buot', '', '2020-07-10', ''),
(239, '131c', 'Mouse', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0RFDYY-LO3009AI-9B2O2EN', '', '', '', 'Dell', '', 'AlbaÃ±o, Arnold', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'AlbaÃ±o, Arnold', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-11', ''),
(240, '131e', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '194413215726', '', '', 'Ideapad-5115c', 'Dell', '', '', '', '', '', '', '', '', '', '', '', ''),
(241, '132', 'Desktop', 'Procured', 'Intel Core i7', '16GB', '1TB', 'Windows 10 Pro', '', '', 'Operational', '091', 'CS7RGP2', '', '', 'POWER EDGE T40', 'Dell', '', 'Eleazar B. Salili', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-08', ''),
(242, '132a', 'Keyboard', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-08X5G0-LO300-9AI-00UG-A00', '', '', '', 'Dell', '', 'Eleazar B. Salili', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-09', ''),
(243, '132b', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0MYFWK-QDC00-96H-24WB-A06', '', '', '', 'Dell', '', 'Eleazar B. Salili', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-10', ''),
(244, '132c', 'Mouse', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0RFDYY-LO300-8B2-02ES-A00', '', '', '', 'Dell', '', 'Eleazar B. Salili', 'Engineer III', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Eleazar B. Salili', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-11', ''),
(245, '132e', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '19441325748', '', '', 'Ideapad-5115c', 'Dell', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, '133', 'Desktop', 'Procured', 'Intel Core i7', '16GB', '1TB', 'Windows 10 Pro', '', '', 'Operational', '092', '7T7RGP2', '', '', 'POWER EDGE T40', 'Dell', '', 'Amado P. Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado P. Pobadora', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-08', ''),
(247, '133a', 'Keyboard', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN08X5G0-LO300-9B2-02EH', '', '', '', 'Dell', '', 'Amado P. Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado P. Pobadora', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-09', ''),
(248, '133b', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0MYFWK-0DC00-96H-245B-A06', '', '', '', 'Dell', '', 'Amado P. Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado P. Pobadora', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-10', ''),
(249, '133c', 'Mouse', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0RFDYY-LO300-9B2-02EH', '', '', '', 'Dell', '', 'Amado P. Pobadora', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Amado P. Pobadora', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-11', ''),
(250, '133e', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '194413215762', '', '', 'Ideapad-5115c', 'Dell', '', '', '', '', '', '', '', '', '', '', '', ''),
(251, '134', 'Desktop', 'Procured', 'Intel Core i7', '16GB', '1TB', 'Windows 10 Pro', '', '', 'Operational', '093', '438RGP2', '', '', 'POWER EDGE T40', 'Dell', '', 'Salili, Roe Ann O.', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Salili, Roe Ann O.', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-08', ''),
(252, '134a', 'Keyboard', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-08X5G0-LO300', '', '', '', 'Dell', '', 'Salili, Roe Ann O.', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Salili, Roe Ann O.', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-09', ''),
(255, '134b', 'Monitor', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0MYFWK-0DC00-96H-245B-A06B', '', '', '', 'Dell', '', 'Salili, Roe Ann O.', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Salili, Roe Ann O.', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-10', ''),
(256, '134c', 'Mouse', 'Procured', '', '', '', '', '', '', 'Operational', '', 'CN-0RFDYY-LO300-9B2-02EH-B', '', '', '', 'Dell', '', 'Salili, Roe Ann O.', 'Engineer II', 'Planning and Design Section', 'Region VIII', 'LEYTE 3rd DEO', 'Salili, Roe Ann O.', '', 'Lilibeth L. Buot', 'Planet PC Parts and Services', '2020-07-11', ''),
(257, '134e', 'UPS', 'Procured', '', '', '', '', '', '', 'Operational', '', '194413215762B', '', '', 'Ideapad-5115c', 'Dell', '', '', '', '', '', '', '', '', '', '', '', ''),
(258, '135', 'Printer-Multifunction', 'Procured', '', '', '', '', '', '', 'Operational', '', 'X6N7002711', '', '', 'ECOTANK L15150', 'EPSON', '', '', '', '', '', '', '', '', 'Omega, Cheryl Glynn V.', 'ALEXDOM CONSTRUCTION SUPPLY & ENTERPRISES', '2022-03-11', ''),
(259, '136', 'Printer-Multifunction', 'Procured', '', '', '', '', '', '', 'Operational', '', 'X6N7001534', '', '', 'ECOTANK L15150', 'EPSON', '', '', '', '', '', '', '', '', 'Omega, Cheryl Glynn V.', 'ALEXDOM CONSTRUCTION SUPPLY & ENTERPRISES', '2022-03-14', ''),
(260, '137', 'Printer-Multifunction', 'Procured', '', '', '', '', '', '', 'Operational', '', 'X6N7001551', '', '', 'ECOTANK L15150', 'EPSON', '', '', '', '', '', '', '', '', 'Omega, Cheryl Glynn V.', 'ALEXDOM CONSTRUCTION SUPPLY & ENTERPRISES', '2022-03-14', ''),
(261, '138', 'Laptop', 'Procured', 'Intel Core i7', '32GB', '256GB', 'Windows 10 Pro', 'MS Office 2016 Home and Business', '', 'Operational', '', 'K2109N0200826', '', '', 'GF638RD', 'MSI', '', 'Peter D. Abarsosa', 'Engineer II', 'Maintenance Section', 'Region VIII', 'LEYTE 3rd DEO', 'Peter D. Abarsosa', '', 'Omega, Cheryl Glynn V.', 'ALEXDOM CONSTRUCTION SUPPLY & ENTERPRISES', '2022-03-16', ''),
(262, '139', 'Laptop', 'Procured', 'Intel Core i7', '32GB', '256GB', 'Windows 10 Pro', 'MS Office 2016 Home and Business', '', 'Operational', '', 'K2109N0201074', '', '', '', 'MSI', '', '', '', '', '', '', '', '', 'Omega, Cheryl Glynn V.', 'ALEXDOM CONSTRUCTION SUPPLY & ENTERPRISES', '2022-03-16', ''),
(263, '140', 'Laptop', 'Procured', 'Intel Core i7', '32GB', '256GB', 'Windows 10 Pro', 'MS Office 2016 Home and Business', '', 'Operational', '', 'K2109N0201110', '', '', '', 'MSI', '', '', '', '', '', '', '', '', 'Omega, Cheryl Glynn V.', 'ALEXDOM CONSTRUCTION SUPPLY & ENTERPRISES', '2022-03-16', ''),
(264, '141', 'Printer-Multifunction', 'Procured', '', '', '', '', '', '', 'Operational', '', 'X8HV138369', '', '', 'L3110', 'EPSON', '', '', '', '', '', '', '', '', 'Omega, Cheryl Glynn V.', 'ALEXDOM CONSTRUCTION SUPPLY & ENTERPRISES', '2022-03-14', '');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(1000) NOT NULL,
  `DATE_ADDED` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`ID`, `NAME`, `DESCRIPTION`, `DATE_ADDED`) VALUES
(1, 'Laptop', '', 'August 22, 2024'),
(2, 'Printer-Multifunction', '', 'August 22, 2024'),
(3, 'UPS', '', 'August 22, 2024'),
(4, 'Mouse', '', 'August 22, 2024'),
(5, 'Monitor', '', 'August 22, 2024'),
(6, 'Keyboard', '', 'August 22, 2024'),
(7, 'Desktop', '', 'August 22, 2024'),
(8, 'IP Phone', '', 'August 22, 2024'),
(9, 'Printer-Single Function', '', 'August 22, 2024'),
(10, 'Server', '', 'August 22, 2024');

-- --------------------------------------------------------

--
-- Table structure for table `unserviceable`
--

CREATE TABLE `unserviceable` (
  `ID` int(11) NOT NULL,
  `ITEM_NUMBER` varchar(100) NOT NULL,
  `TYPE` varchar(100) NOT NULL,
  `SERIAL_NUMBER` varchar(100) NOT NULL,
  `MODEL` varchar(100) NOT NULL,
  `BRAND_NAME` varchar(100) NOT NULL,
  `ACQUISITION` varchar(100) NOT NULL,
  `PROCESSOR` varchar(100) NOT NULL,
  `MEMORY` varchar(100) NOT NULL,
  `HARD_DISK` varchar(100) NOT NULL,
  `LOS` varchar(100) NOT NULL,
  `MSO` varchar(100) NOT NULL,
  `OIS` varchar(100) NOT NULL,
  `ARE` varchar(100) NOT NULL,
  `PROPERTY` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `COST` varchar(100) NOT NULL,
  `USER` varchar(100) NOT NULL,
  `DESIGNATION` varchar(100) NOT NULL,
  `DIVISION` varchar(100) NOT NULL,
  `DISTRICT` varchar(100) NOT NULL,
  `REGION` varchar(100) NOT NULL,
  `OWNER` varchar(100) NOT NULL,
  `DATE_RECEIVED` varchar(100) NOT NULL,
  `RECEIVED_FROM` varchar(100) NOT NULL,
  `SUPPLIER` varchar(100) NOT NULL,
  `ACQUISITION_DATE` varchar(100) NOT NULL,
  `REMARKS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unserviceable`
--

INSERT INTO `unserviceable` (`ID`, `ITEM_NUMBER`, `TYPE`, `SERIAL_NUMBER`, `MODEL`, `BRAND_NAME`, `ACQUISITION`, `PROCESSOR`, `MEMORY`, `HARD_DISK`, `LOS`, `MSO`, `OIS`, `ARE`, `PROPERTY`, `DESCRIPTION`, `COST`, `USER`, `DESIGNATION`, `DIVISION`, `DISTRICT`, `REGION`, `OWNER`, `DATE_RECEIVED`, `RECEIVED_FROM`, `SUPPLIER`, `ACQUISITION_DATE`, `REMARKS`) VALUES
(17, '99b', 'UPS', '3B1632X24943', 'APC 1100', 'APC', 'Procured', '', '', '', '', '', '', '', '2016-101-C160FE62-0023', '', '', 'Rainier Alibadbad', 'Engineer II', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Rainier Alibadbad', '', 'Lilibeth L. Buot', '', '', ''),
(18, '99a', 'Monitor', 'MMLZ3SS01254903A7C2415', 'S200HQL', 'Acer', 'Procured', '', '', '', '', '', '', '', '2016-101-C160FE62-0023', '', '', 'Rainier Alibadbad', 'Engineer II', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Rainier Alibadbad', '', 'Lilibeth L. Buot', '', '', ''),
(19, '99', 'Desktop', 'DTVMSP00162902C509600', 'Veriton X464G', 'Acer', 'Procured', 'Intel Core i5-6400', '8GB', '1TB', 'Windows 10 Pro', 'MS Office 2016 Home', '', '048', '2016-101-C160FE62-0023', '', '', 'Rainier Alibadbad', 'Engineer II', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Rainier Alibadbad', '', 'Lilibeth L. Buot', '', '', ''),
(20, '61', 'Printer-Multifunction', 'E67793J2F306722', 'Brother MFC J220', 'Brother', 'Procured', '', '', '', '', '', '', '', '', '', '', 'Nenette De Luna', 'Senior Bookeeper', 'Finance Section', 'LEYTE 3rd DEO', 'Region VIII', 'Nenette De Luna', '', 'Lilibeth L. Buot', '', '', ''),
(21, '62', 'Printer-Multifunction', 'E6779303F282143', 'Brother MFC J220', 'Brother', 'Procured', '', '', '', '', '', '', '', '', '', '', 'Vivencia Lelis', 'Admin Clerk IV', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Vivencia Lelis', '', 'Lilibeth L. Buot', '', '', ''),
(22, '63', 'Laptop', 'NXM5USP00131301DFC6600', 'Aspire V5-471G', 'Acer', 'Procured', '', '', '', '', '', '', '', '', '', '', 'Teresita Canega', 'Budget Officer', 'Finance Section', 'LEYTE 3rd DEO', 'Region VIII', 'Teresita Canega', '', 'Lilibeth L. Buot', '', '', ''),
(23, '64', 'Laptop', 'NXM3USP002312097E06600', 'Aspire V5-471P', 'Acer', 'Procured', '', '', '', '', '', '', '', '', '', '', 'Rocabo, Rey P.', 'CMT II', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Rey P. Rocabo', '', 'Lilibeth L. Buot', '', '', ''),
(24, '65', 'UPS', '1014500037PS26M', 'PSA1000MT3-230U', 'Emerson', 'Turned over by PDWH Central', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, '66', 'UPS', '1234500194PS26M', 'PSA1000MT3-230U', 'Emerson', 'Turned over by PDWH Central', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '67', 'UPS', '1325400049PS27M', 'PSA1000MT3-230U', 'Emerson', 'Turned over by PDWH Central', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '24b', 'UPS', '1234500309PS26M', 'PSA1000MT3-230U', 'Emerson', 'Turned over by PDWH Central', '', '', '', '', '', '', '', 'NE-0118-012-705-14', '', '', 'Vivencia Lelis', 'Administrative Officer', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Vivencia Lelis', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(28, '24a', 'Monitor', 'CN0DM06C641802BF41UUA00', 'E1731Sc', 'Dell', 'Turned over by PDWH Central', '', '', '', '', '', '', '', 'NE-0118-012-705-14', '', '', 'Vivencia Lelis', 'Administrative Officer', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Vivencia Lelis', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(29, '24', 'Desktop', '29D2G2S', 'Optiplex 7010', 'Dell', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', '', 'NE-0118-012-705-14', '', '', 'Vivencia Lelis', 'Administrative Officer', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Vivencia Lelis', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(30, '20', 'Desktop', '97D2G2S', 'Optiplex 7010', 'Dell', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', '', 'NE-0118-024-705-14', '', '', 'Amado Pobadora', 'Engineer II', 'Planning and Design Section', 'LEYTE 3rd DEO', 'Region VIII', 'Amado Pobadora', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(31, '17', 'Desktop', '27D2G2S', 'Optiplex 7010', 'Dell', 'Turned over by PDWH Central', 'Core i3', '4GB', '500GB', 'Windows 8 Pro', 'MS Office 2013 Professional', '', '', 'NE-0118-017-705-14', '', '', 'John Gayrama', 'Engineer II', 'Planning and Design Section', 'LEYTE 3rd DEO', 'Region VIII', 'John Gayrama', '2015-09-07', 'Lilibeth L. Buot', '', '2015-09-07', ''),
(32, '6b', 'Printer-Single Function', 'VNF3RC03509', 'HP PRO-P1102', 'HP', 'Procured', '', '', '', '', '', '', '0060', '2013-101-C160FE62C-0011', '', '', 'Lorenzo P. Fidel', 'BAC Secretariat', 'Office of the District Engineer', 'LEYTE 3rd DEO', 'Region VIII', 'Lorenzo P. Fidel', '', 'Lilibeth L. Buot', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(100) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `MIDDLENAME` varchar(100) NOT NULL,
  `SECURITY_CODE` varchar(100) NOT NULL,
  `CONTACT` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `AGE` varchar(100) NOT NULL,
  `GENDER` varchar(100) NOT NULL,
  `CIVIL_STATUS` varchar(100) NOT NULL,
  `BIRTHDAY` varchar(100) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `DATE_REGISTER` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `USERNAME`, `PASSWORD`, `LASTNAME`, `FIRSTNAME`, `MIDDLENAME`, `SECURITY_CODE`, `CONTACT`, `EMAIL`, `AGE`, `GENDER`, `CIVIL_STATUS`, `BIRTHDAY`, `ADDRESS`, `DATE_REGISTER`) VALUES
(9, 'admin', '0192023a7bbd73250516f069df18b500', 'Name', 'Admin', 'Denatil', '81dc9bdb52d04dc20036dbd8313ed055', '09185623392', 'denatiljoemhar20@gmail.com', '27', 'MALE', 'SINGLE', '1995-09-20', 'Campokpok,Tabango, Leyte', '02/16/2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disposed`
--
ALTER TABLE `disposed`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SERIAL_NUMBER` (`SERIAL_NUMBER`);

--
-- Indexes for table `fixed`
--
ALTER TABLE `fixed`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SERIAL_NUMBER` (`SERIAL_NUMBER`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SERIAL_NUMBER` (`SERIAL_NUMBER`),
  ADD UNIQUE KEY `ITEM_NUMBER` (`ITEM_NUMBER`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `unserviceable`
--
ALTER TABLE `unserviceable`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SERIAL_NUMBER` (`SERIAL_NUMBER`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disposed`
--
ALTER TABLE `disposed`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fixed`
--
ALTER TABLE `fixed`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unserviceable`
--
ALTER TABLE `unserviceable`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
