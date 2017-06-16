-- phpMyAdmin SQL Dump
-- version 4.0.10.8
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2017 at 02:22 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cmfrt_frontend`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl_phinxlog`
--

DROP TABLE IF EXISTS `acl_phinxlog`;
CREATE TABLE IF NOT EXISTS `acl_phinxlog` (
  `version` bigint(20) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_phinxlog`
--

INSERT INTO `acl_phinxlog` (`version`, `start_time`, `end_time`) VALUES
(20141229162641, '2016-01-07 18:56:40', '2016-01-07 18:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rght`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=290 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 398),
(2, 1, NULL, NULL, 'Groups', 2, 15),
(3, 2, NULL, NULL, 'index', 3, 4),
(4, 2, NULL, NULL, 'view', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'edit', 9, 10),
(7, 2, NULL, NULL, 'delete', 11, 12),
(8, 2, NULL, NULL, 'isAuthorized', 13, 14),
(9, 1, NULL, NULL, 'Main', 16, 25),
(10, 9, NULL, NULL, 'index', 17, 18),
(11, 9, NULL, NULL, 'filter', 19, 20),
(12, 9, NULL, NULL, 'isAuthorized', 21, 22),
(13, 9, NULL, NULL, 'cell', 23, 24),
(14, 1, NULL, NULL, 'Users', 26, 47),
(15, 14, NULL, NULL, 'index', 27, 28),
(16, 14, NULL, NULL, 'dashboard', 29, 30),
(17, 14, NULL, NULL, 'view', 31, 32),
(18, 14, NULL, NULL, 'add', 33, 34),
(19, 14, NULL, NULL, 'edit', 35, 36),
(20, 14, NULL, NULL, 'delete', 37, 38),
(21, 14, NULL, NULL, 'login', 39, 40),
(22, 14, NULL, NULL, 'logout', 41, 42),
(23, 14, NULL, NULL, 'isAuthorized', 43, 44),
(24, 1, NULL, NULL, 'Acl', 48, 49),
(25, 1, NULL, NULL, 'Bake', 50, 51),
(34, 1, NULL, NULL, 'Migrations', 52, 53),
(35, 1, NULL, NULL, 'Pages', 54, 77),
(36, 35, NULL, NULL, 'index', 55, 56),
(37, 35, NULL, NULL, 'view', 57, 58),
(38, 35, NULL, NULL, 'add', 59, 60),
(39, 35, NULL, NULL, 'edit', 61, 62),
(40, 35, NULL, NULL, 'delete', 63, 64),
(41, 35, NULL, NULL, 'isAuthorized', 65, 66),
(42, 1, NULL, NULL, 'Slides', 78, 93),
(43, 42, NULL, NULL, 'index', 79, 80),
(44, 42, NULL, NULL, 'view', 81, 82),
(45, 42, NULL, NULL, 'add', 83, 84),
(46, 42, NULL, NULL, 'edit', 85, 86),
(47, 42, NULL, NULL, 'delete', 87, 88),
(48, 42, NULL, NULL, 'isAuthorized', 89, 90),
(50, 42, NULL, NULL, 'updatePublish', 91, 92),
(51, 1, NULL, NULL, 'UserEntities', 94, 115),
(52, 51, NULL, NULL, 'index', 95, 96),
(53, 51, NULL, NULL, 'view', 97, 98),
(54, 51, NULL, NULL, 'add', 99, 100),
(55, 51, NULL, NULL, 'edit', 101, 102),
(56, 51, NULL, NULL, 'delete', 103, 104),
(57, 51, NULL, NULL, 'isAuthorized', 105, 106),
(79, 1, NULL, NULL, 'Clients', 116, 131),
(80, 79, NULL, NULL, 'index', 117, 118),
(81, 79, NULL, NULL, 'view', 119, 120),
(82, 79, NULL, NULL, 'add', 121, 122),
(83, 79, NULL, NULL, 'edit', 123, 124),
(84, 79, NULL, NULL, 'delete', 125, 126),
(85, 79, NULL, NULL, 'isAuthorized', 127, 128),
(88, 35, NULL, NULL, 'frontview', 67, 68),
(89, 35, NULL, NULL, 'ajax_email_inquiry', 69, 70),
(90, 35, NULL, NULL, 'ajax_email_newsletter', 71, 72),
(91, 35, NULL, NULL, 'contact_us', 73, 74),
(95, 1, NULL, NULL, 'Profile', 132, 141),
(96, 95, NULL, NULL, 'index', 133, 134),
(97, 95, NULL, NULL, 'isAuthorized', 135, 136),
(99, 95, NULL, NULL, 'change_password', 137, 138),
(140, 35, NULL, NULL, 'updatePublish', 75, 76),
(141, 1, NULL, NULL, 'EndUserOrder', 142, 155),
(142, 141, NULL, NULL, 'index', 143, 144),
(143, 141, NULL, NULL, 'view', 145, 146),
(144, 141, NULL, NULL, 'add', 147, 148),
(145, 141, NULL, NULL, 'edit', 149, 150),
(146, 141, NULL, NULL, 'delete', 151, 152),
(147, 141, NULL, NULL, 'isAuthorized', 153, 154),
(148, 1, NULL, NULL, 'Invoice', 156, 175),
(149, 148, NULL, NULL, 'index', 157, 158),
(150, 148, NULL, NULL, 'client', 159, 160),
(151, 148, NULL, NULL, 'view', 161, 162),
(152, 148, NULL, NULL, 'view_client', 163, 164),
(153, 148, NULL, NULL, 'add', 165, 166),
(154, 148, NULL, NULL, 'edit', 167, 168),
(155, 148, NULL, NULL, 'delete', 169, 170),
(156, 148, NULL, NULL, 'payment', 171, 172),
(157, 148, NULL, NULL, 'isAuthorized', 173, 174),
(158, 1, NULL, NULL, 'InvoiceDetails', 176, 189),
(159, 158, NULL, NULL, 'index', 177, 178),
(160, 158, NULL, NULL, 'view', 179, 180),
(161, 158, NULL, NULL, 'add', 181, 182),
(162, 158, NULL, NULL, 'edit', 183, 184),
(163, 158, NULL, NULL, 'delete', 185, 186),
(164, 158, NULL, NULL, 'isAuthorized', 187, 188),
(165, 95, NULL, NULL, 'edit', 139, 140),
(166, 1, NULL, NULL, 'Shipments', 190, 221),
(167, 166, NULL, NULL, 'index', 191, 192),
(168, 166, NULL, NULL, 'client', 193, 194),
(169, 166, NULL, NULL, 'view', 195, 196),
(170, 166, NULL, NULL, 'client_view', 197, 198),
(171, 166, NULL, NULL, 'add', 199, 200),
(172, 166, NULL, NULL, 'client_add', 201, 202),
(173, 166, NULL, NULL, 'edit', 203, 204),
(174, 166, NULL, NULL, 'client_edit', 205, 206),
(175, 166, NULL, NULL, 'delete', 207, 208),
(176, 166, NULL, NULL, 'isAuthorized', 209, 210),
(177, 1, NULL, NULL, 'ShipmentStatus', 222, 235),
(178, 177, NULL, NULL, 'index', 223, 224),
(179, 177, NULL, NULL, 'view', 225, 226),
(180, 177, NULL, NULL, 'add', 227, 228),
(181, 177, NULL, NULL, 'edit', 229, 230),
(182, 177, NULL, NULL, 'delete', 231, 232),
(183, 177, NULL, NULL, 'isAuthorized', 233, 234),
(184, 1, NULL, NULL, 'ShippingCarriers', 236, 249),
(185, 184, NULL, NULL, 'index', 237, 238),
(186, 184, NULL, NULL, 'view', 239, 240),
(187, 184, NULL, NULL, 'add', 241, 242),
(188, 184, NULL, NULL, 'edit', 243, 244),
(189, 184, NULL, NULL, 'delete', 245, 246),
(190, 184, NULL, NULL, 'isAuthorized', 247, 248),
(191, 1, NULL, NULL, 'ShippingPurposes', 250, 263),
(192, 191, NULL, NULL, 'index', 251, 252),
(193, 191, NULL, NULL, 'view', 253, 254),
(194, 191, NULL, NULL, 'add', 255, 256),
(195, 191, NULL, NULL, 'edit', 257, 258),
(196, 191, NULL, NULL, 'delete', 259, 260),
(197, 191, NULL, NULL, 'isAuthorized', 261, 262),
(198, 1, NULL, NULL, 'ShippingServices', 264, 277),
(199, 198, NULL, NULL, 'index', 265, 266),
(200, 198, NULL, NULL, 'view', 267, 268),
(201, 198, NULL, NULL, 'add', 269, 270),
(202, 198, NULL, NULL, 'edit', 271, 272),
(203, 198, NULL, NULL, 'delete', 273, 274),
(204, 198, NULL, NULL, 'isAuthorized', 275, 276),
(205, 51, NULL, NULL, 'employees', 107, 108),
(206, 51, NULL, NULL, 'view_employee', 109, 110),
(207, 51, NULL, NULL, 'add_employee', 111, 112),
(208, 51, NULL, NULL, 'edit_employee', 113, 114),
(209, 14, NULL, NULL, 'user_dashboard', 45, 46),
(210, 1, NULL, NULL, 'Inventory', 278, 299),
(211, 210, NULL, NULL, 'index', 279, 280),
(212, 210, NULL, NULL, 'view', 281, 282),
(213, 210, NULL, NULL, 'add', 283, 284),
(214, 210, NULL, NULL, 'edit', 285, 286),
(215, 210, NULL, NULL, 'delete', 287, 288),
(216, 210, NULL, NULL, 'isAuthorized', 289, 290),
(217, 166, NULL, NULL, 'send_to_inventory', 211, 212),
(232, 1, NULL, NULL, 'InventoryOrder', 300, 315),
(233, 232, NULL, NULL, 'index', 301, 302),
(234, 232, NULL, NULL, 'view', 303, 304),
(235, 232, NULL, NULL, 'add', 305, 306),
(236, 232, NULL, NULL, 'edit', 307, 308),
(237, 232, NULL, NULL, 'delete', 309, 310),
(238, 232, NULL, NULL, 'isAuthorized', 311, 312),
(239, 1, NULL, NULL, 'About', 316, 323),
(240, 239, NULL, NULL, 'index', 317, 318),
(241, 239, NULL, NULL, 'isAuthorized', 319, 320),
(242, 239, NULL, NULL, 'cell', 321, 322),
(243, 1, NULL, NULL, 'Contact', 324, 331),
(244, 243, NULL, NULL, 'index', 325, 326),
(245, 243, NULL, NULL, 'isAuthorized', 327, 328),
(246, 243, NULL, NULL, 'cell', 329, 330),
(247, 1, NULL, NULL, 'CustomSoftware', 332, 339),
(248, 247, NULL, NULL, 'index', 333, 334),
(249, 247, NULL, NULL, 'isAuthorized', 335, 336),
(250, 247, NULL, NULL, 'cell', 337, 338),
(251, 210, NULL, NULL, 'admin', 291, 292),
(252, 210, NULL, NULL, 'employee', 293, 294),
(253, 232, NULL, NULL, 'update_status_to_complete', 313, 314),
(254, 166, NULL, NULL, 'send_to_received_and_stored', 213, 214),
(255, 79, NULL, NULL, 'history', 129, 130),
(256, 210, NULL, NULL, 'save_bill_lading', 295, 296),
(257, 210, NULL, NULL, 'delete_bill_lading', 297, 298),
(258, 1, NULL, NULL, 'MessageDetails', 340, 353),
(259, 258, NULL, NULL, 'index', 341, 342),
(260, 258, NULL, NULL, 'view', 343, 344),
(261, 258, NULL, NULL, 'add', 345, 346),
(262, 258, NULL, NULL, 'edit', 347, 348),
(263, 258, NULL, NULL, 'delete', 349, 350),
(264, 258, NULL, NULL, 'isAuthorized', 351, 352),
(265, 1, NULL, NULL, 'MessageHeader', 354, 367),
(266, 265, NULL, NULL, 'index', 355, 356),
(267, 265, NULL, NULL, 'view', 357, 358),
(268, 265, NULL, NULL, 'add', 359, 360),
(269, 265, NULL, NULL, 'edit', 361, 362),
(270, 265, NULL, NULL, 'delete', 363, 364),
(271, 265, NULL, NULL, 'isAuthorized', 365, 366),
(272, 166, NULL, NULL, 'load_verify_upc_number', 215, 216),
(273, 166, NULL, NULL, 'load_verify_upc_number_combine', 217, 218),
(274, 166, NULL, NULL, 'load_verify_upc_number_order_inventory', 219, 220),
(275, 1, NULL, NULL, 'DebugKit', 368, 383),
(276, 275, NULL, NULL, 'Panels', 369, 374),
(277, 276, NULL, NULL, 'index', 370, 371),
(278, 276, NULL, NULL, 'view', 372, 373),
(279, 275, NULL, NULL, 'Requests', 375, 378),
(280, 279, NULL, NULL, 'view', 376, 377),
(281, 275, NULL, NULL, 'Toolbar', 379, 382),
(282, 281, NULL, NULL, 'clearCache', 380, 381),
(283, 1, NULL, NULL, 'Message', 384, 397),
(284, 283, NULL, NULL, 'index', 385, 386),
(285, 283, NULL, NULL, 'view', 387, 388),
(286, 283, NULL, NULL, 'add', 389, 390),
(287, 283, NULL, NULL, 'edit', 391, 392),
(288, 283, NULL, NULL, 'delete', 393, 394),
(289, 283, NULL, NULL, 'isAuthorized', 395, 396);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rght`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Groups', 1, NULL, 1, 6),
(2, NULL, 'Groups', 2, NULL, 7, 8),
(3, 1, 'Users', 1, NULL, 2, 3),
(4, NULL, 'Groups', 3, NULL, 9, 10),
(5, NULL, 'Groups', 4, NULL, 11, 12),
(22, 1, 'Users', 17, NULL, 4, 5),
(25, NULL, 'Groups', 2, NULL, 13, 18),
(26, NULL, 'Groups', 3, NULL, 19, 30),
(27, NULL, 'Groups', 4, NULL, 31, 48),
(28, 25, 'Users', 2, NULL, 14, 15),
(29, 26, 'Users', 3, NULL, 20, 21),
(30, 27, 'Users', 4, NULL, 32, 33),
(31, 27, 'Users', 5, NULL, 34, 35),
(32, 27, 'Users', 6, NULL, 36, 37),
(33, 26, 'Users', 7, NULL, 22, 23),
(34, 26, 'Users', 8, NULL, 24, 25),
(35, 26, 'Users', 9, NULL, 26, 27),
(36, 27, 'Users', 10, NULL, 38, 39),
(37, 27, 'Users', 11, NULL, 40, 41),
(38, 27, 'Users', 12, NULL, 44, 45),
(39, 25, 'Users', 13, NULL, 16, 17),
(40, 26, 'Users', 14, NULL, 28, 29),
(41, 27, 'Users', 15, NULL, 42, 43),
(42, 27, 'Users', 16, NULL, 46, 47);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) NOT NULL,
  `aco_id` int(11) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `aro_id` (`aro_id`,`aco_id`),
  KEY `aco_id` (`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(180) CHARACTER SET latin1 NOT NULL,
  `body` text CHARACTER SET latin1 NOT NULL,
  `custom_url` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `meta_title` text CHARACTER SET latin1 NOT NULL,
  `meta_keyword` text CHARACTER SET latin1 NOT NULL,
  `meta_description` text CHARACTER SET latin1 NOT NULL,
  `is_publish` smallint(11) NOT NULL,
  `sorting` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `custom_url`, `excerpt`, `meta_title`, `meta_keyword`, `meta_description`, `is_publish`, `sorting`, `created`, `modified`) VALUES
(1, 'ABOUT', '<section class="cp-about-header pad-100">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-md-6">\r\n                <div class="cp-about-header-content">\r\n                    <h1 class="cp-title">Our Story</h1>\r\n                    <div class="">\r\n                    <p class="content-paragraph">\r\n                            Our company was founded in 2005 out of necessity. I was an amazon seller and over time my\r\nhouse started looking like a warehouse with boxes everywhere. In addition, as my company\r\ngrew I was able to focus less on my day job and was busy straightening out details and shipping\r\norders to customers. So I decided to focus solely on my amazon business and I left my job. I\r\nthen realized that people would greatly benefit from such a service. And so, Comfort Packaging\r\nwas born! \r\n                        </p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<section class="cp-about-handler">\r\n    <div class="container">\r\n        <div class="row row-eq-height">\r\n            <div class="col-sm-6 cp-line-black">\r\n                <div class="cp-about-para cp-black-p pad-50">\r\n                    <h4>Our Location</h4>\r\n                    <p class="content-paragraph">\r\n                         We have a beautiful facility located in Newark, New Jersey that boasts 10,000 square feet of\r\nbeautiful machinery and shelving. Every customer has their own zone in our warehouse where\r\nonly his products are kept so there is no confusion with inventory. We hold over 1 million dollars\r\nworth of inventory and have the best security system on the market to protect our customers''\r\nproducts. We are trusted by over 1000 sellers and our customers'' satisfaction is our greatest\r\nconcern! \r\n                    </p>\r\n\r\n                </div>\r\n                <div class="cp-about-para cp-black-p pad-50">\r\n                    \r\n                </div>\r\n            </div>\r\n            <div class="col-sm-6 cp-line-white">\r\n                <div class="cp-about-para cp-white-p pad-50">\r\n                    <h4>How We Started Out</h4>\r\n                    <p class="content-paragraph">\r\n                        We started out small and provided the service for family and friends. As word spread we slowly\r\ngrew and acquired more customers. However, we still serve every customer with a drive and\r\npassion as when we first started. We give our employees high quality training in every area that\r\npertains to our business and We are therefore able to focus on every detail of every order.\r\nWe look forward to sharing our success with you! \r\n                    </p>\r\n                </div>\r\n                \r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>', '/about', 'We have a beautiful facility located in Newark, New Jersey that boasts 10,000 square feet of beautiful machinery and shelving. Every customer has their own zone in our warehouse where only his products are kept so there is no confusion with inventory. ', 'ABOUT', 'ABOUT', 'ABOUT', 1, 0, '2016-10-25 19:17:32', '2016-12-13 04:16:35'),
(2, 'CUSTOM SOFTWARE', '<div class="cp-software">\r\n    <section class="cp-cs-app pad-100">\r\n        <div class="container">\r\n            <h1 class="cp-title">Our Custom Software</h1>\r\n            <div class="row">\r\n\r\n                <div class="cp-cs-imac visible-xs">\r\n                    <img src="assets/images/customer-app.png" alt="" class="img-responsive" />\r\n                </div>\r\n\r\n                <div class="col-sm-6">\r\n                    <div class="cp-cs-app-content">\r\n                        <h2>\r\n                            The Perfect Application<br />\r\n                            To Simplify The Process \r\n                        </h2>\r\n                        \r\n                        <p>\r\n                            Comfort Packaging has a custom software that is one of its kind in this industry. It makes being an Amazon seller so simple! \r\n                        </p>\r\n                         <h2>\r\n                            How it Works\r\n                        </h2>\r\n                        <ul>\r\n                            <li>let us know that you want to send a shipment </li>\r\n                            <li>Track the shipment until it lands in our warehouse </li>\r\n                            <li>Get an alert when the shipment has been checked in </li>\r\n                            <li>Let us know to ship to your customer </li>\r\n                            <li>Find out when it has shipped and arrived to your customer</li>\r\n                        </ul> \r\n                        <p>All this without picking up a telephone or writing up an email! It''s as simple as the click of a button!</p>\r\n                        <a href="mailto:info@comfortpackaging.com" class="btn btn-signup">Sign Up</a>\r\n                    </div>\r\n                </div>\r\n                <div class="col-sm-6">\r\n                    <div class="cp-cs-imac hidden-xs">\r\n                        <img src="<?php echo $this->Url->build("/webroot/frontend/assets/images/customer-app.png"); ?>" alt="" class="img-responsive" />\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n</div>', '/custom_software', 'Comfort Packaging has a custom software that is one of its kind in this industry. It makes being an Amazon seller so simple! ', 'CUSTOM SOFTWARE', 'CUSTOM SOFTWARE', 'CUSTOM SOFTWARE', 1, 0, '2016-10-25 19:17:32', '2016-10-25 19:17:32'),
(3, 'CONTACT', '<section class="cp-contact-header">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-sm-6">\r\n                <div class="cp-contact-header-content">\r\n                    <h1 class="cp-title">Contact</h1>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<section class="cp-contact-form pad-100">\r\n    <div class="container">\r\n        <div class="row">\r\n\r\n            <div class="col-sm-6">\r\n                <form>\r\n                    <div class="form-group">\r\n                        <input type="text" placeholder="Name" class="form-control" required />\r\n                    </div>\r\n                    <div class="form-group">\r\n                        <input type="email" placeholder="Email" class="form-control" required />\r\n                    </div>\r\n                    <div class="form-group">\r\n                        <input type="text" placeholder="Subject" class="form-control" required />\r\n                    </div>\r\n                    <div class="form-group">\r\n                        <textarea class="form-control" placeholder="Message" required></textarea>\r\n                    </div>\r\n                    <button class="btn btn-primary">Submit</button>\r\n                </form>\r\n\r\n            </div>\r\n            <div class="col-sm-6">\r\n                <div class="cp-contact-info ">\r\n                    <div class="row">\r\n                        <div class="col-md-4">\r\n                            <h3>Call Us</h3>\r\n                            <ul class="list-unstyled">\r\n                                <li>Free Call: 1-800-000-0000 </li>\r\n                                <li>Tel: 123-456-7890</li>\r\n                                <li>Fax: 123-456-7890</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class="col-md-4">\r\n                            <h3>Our Address</h3>\r\n                            <p>\r\n                                500 Terry Francois Street<br />San Francisco, CA 94158\r\n                            </p>\r\n                        </div>\r\n                        <div class="col-md-4">\r\n                            <h3>Best Time to call Back</h3>\r\n                            <p>\r\n                                Monday thru Friday<br />\r\n                                9:00AM - 5:00PM\r\n                            </p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>', '/contact', NULL, 'CONTACT', 'CONTACT', 'CONTACT', 1, 0, '2016-10-25 19:17:32', '2016-10-25 19:17:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
