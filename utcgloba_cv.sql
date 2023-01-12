-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2023 at 06:34 AM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utcgloba_cv`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nicename` varchar(255) NOT NULL,
  `iso3` varchar(255) NOT NULL,
  `numcode` int(11) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, NULL, NULL),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, NULL, NULL),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, NULL, NULL),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, NULL, NULL),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, NULL, NULL),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, NULL, NULL),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, NULL, NULL),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', 0, 0, NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, NULL, NULL),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, NULL, NULL),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, NULL, NULL),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, NULL, NULL),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, NULL, NULL),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, NULL, NULL),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, NULL, NULL),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, NULL, NULL),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, NULL, NULL),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, NULL, NULL),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, NULL, NULL),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, NULL, NULL),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, NULL, NULL),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, NULL, NULL),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, NULL, NULL),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, NULL, NULL),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, NULL, NULL),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, NULL, NULL),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, NULL, NULL),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, NULL, NULL),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', 0, 0, NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, NULL, NULL),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', 0, 246, NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, NULL, NULL),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, NULL, NULL),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, NULL, NULL),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, NULL, NULL),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, NULL, NULL),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, NULL, NULL),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, NULL, NULL),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, NULL, NULL),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, NULL, NULL),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, NULL, NULL),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, NULL, NULL),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, NULL, NULL),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, NULL, NULL),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', 0, 61, NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', 0, 672, NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, NULL, NULL),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, NULL, NULL),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, NULL, NULL),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, NULL, NULL),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, NULL, NULL),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, NULL, NULL),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, NULL, NULL),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, NULL, NULL),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, NULL, NULL),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, NULL, NULL),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, NULL, NULL),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, NULL, NULL),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, NULL, NULL),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, NULL, NULL),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, NULL, NULL),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, NULL, NULL),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, NULL, NULL),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, NULL, NULL),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, NULL, NULL),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, NULL, NULL),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, NULL, NULL),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, NULL, NULL),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, NULL, NULL),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, NULL, NULL),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, NULL, NULL),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, NULL, NULL),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, NULL, NULL),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, NULL, NULL),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, NULL, NULL),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', 0, 0, NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, NULL, NULL),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, NULL, NULL),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, NULL, NULL),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, NULL, NULL),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, NULL, NULL),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, NULL, NULL),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, NULL, NULL),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, NULL, NULL),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, NULL, NULL),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, NULL, NULL),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, NULL, NULL),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, NULL, NULL),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, NULL, NULL),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, NULL, NULL),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, NULL, NULL),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, NULL, NULL),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', 0, 0, NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, NULL, NULL),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, NULL, NULL),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, NULL, NULL),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, NULL, NULL),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, NULL, NULL),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, NULL, NULL),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, NULL, NULL),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, NULL, NULL),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, NULL, NULL),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, NULL, NULL),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, NULL, NULL),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, NULL, NULL),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, NULL, NULL),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, NULL, NULL),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, NULL, NULL),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, NULL, NULL),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, NULL, NULL),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, NULL, NULL),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, NULL, NULL),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, NULL, NULL),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, NULL, NULL),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, NULL, NULL),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, NULL, NULL),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, NULL, NULL),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, NULL, NULL),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, NULL, NULL),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, NULL, NULL),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, NULL, NULL),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, NULL, NULL),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, NULL, NULL),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, NULL, NULL),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, NULL, NULL),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, NULL, NULL),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, NULL, NULL),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, NULL, NULL),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, NULL, NULL),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, NULL, NULL),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, NULL, NULL),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, NULL, NULL),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, NULL, NULL),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, NULL, NULL),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, NULL, NULL),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, NULL, NULL),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', 0, 269, NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, NULL, NULL),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, NULL, NULL),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, NULL, NULL),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, NULL, NULL),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, NULL, NULL),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, NULL, NULL),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, NULL, NULL),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, NULL, NULL),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, NULL, NULL),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, NULL, NULL),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, NULL, NULL),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, NULL, NULL),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, NULL, NULL),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, NULL, NULL),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, NULL, NULL),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, NULL, NULL),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, NULL, NULL),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, NULL, NULL),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, NULL, NULL),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, NULL, NULL),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, NULL, NULL),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, NULL, NULL),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, NULL, NULL),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, NULL, NULL),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, NULL, NULL),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, NULL, NULL),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', 0, 970, NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, NULL, NULL),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, NULL, NULL),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, NULL, NULL),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, NULL, NULL),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, NULL, NULL),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, NULL, NULL),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, NULL, NULL),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, NULL, NULL),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, NULL, NULL),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, NULL, NULL),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, NULL, NULL),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, NULL, NULL),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, NULL, NULL),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, NULL, NULL),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, NULL, NULL),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, NULL, NULL),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, NULL, NULL),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, NULL, NULL),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, NULL, NULL),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, NULL, NULL),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, NULL, NULL),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, NULL, NULL),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, NULL, NULL),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, NULL, NULL),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', 0, 381, NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, NULL, NULL),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, NULL, NULL),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, NULL, NULL),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, NULL, NULL),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, NULL, NULL),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, NULL, NULL),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, NULL, NULL),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, NULL, NULL),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', 0, 0, NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, NULL, NULL),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, NULL, NULL),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, NULL, NULL),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, NULL, NULL),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, NULL, NULL),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, NULL, NULL),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, NULL, NULL),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, NULL, NULL),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, NULL, NULL),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, NULL, NULL),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, NULL, NULL),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, NULL, NULL),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, NULL, NULL),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', 0, 670, NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, NULL, NULL),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, NULL, NULL),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, NULL, NULL),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, NULL, NULL),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, NULL, NULL),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, NULL, NULL),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, NULL, NULL),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, NULL, NULL),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, NULL, NULL),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, NULL, NULL),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, NULL, NULL),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, NULL, NULL),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, NULL, NULL),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, NULL, NULL),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', 0, 1, NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, NULL, NULL),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, NULL, NULL),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, NULL, NULL),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, NULL, NULL),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, NULL, NULL),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, NULL, NULL),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, NULL, NULL),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, NULL, NULL),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, NULL, NULL),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, NULL, NULL),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, NULL, NULL),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `Phone` int(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `cv_format` int(1) NOT NULL DEFAULT 0,
  `webskill` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `PROFILE_sum` text DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`id`, `fullname`, `title`, `Phone`, `Email`, `Address`, `website`, `linkedin`, `profile_img`, `cv_format`, `webskill`, `language`, `interest`, `PROFILE_sum`, `company`) VALUES
(1, 'Ahmed Sanny Aaron', NULL, 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', NULL, NULL, 'public/uploads/1668504328.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":null,\"gaming\":null,\"cooking\":\"Cooking\",\"singing\":null}', NULL, NULL),
(2, 'Ahmed Sanny Aaron', NULL, 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', NULL, NULL, 'public/uploads/1668504413.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":null,\"gaming\":null,\"cooking\":\"Cooking\",\"singing\":null}', NULL, NULL),
(3, 'Ahmed Sanny Aaron', NULL, 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', NULL, NULL, 'public/uploads/1668504499.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":null,\"gaming\":null,\"cooking\":\"Cooking\",\"singing\":null}', NULL, NULL),
(4, 'Ahmed Sanny Aaron', NULL, 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', NULL, NULL, 'public/uploads/1668504851.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":null,\"gaming\":null,\"cooking\":\"Cooking\",\"singing\":null}', NULL, NULL),
(5, 'Abdus Samad', 'Software Developer', 1845891962, 'abdus@gmail.com', 'Faridgonj, Chandpur', 'abdussamad.dev', '@abdussamad018', 'public/uploads/1668511069.png', 2, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":\"PHOTOSHOP\",\"ILLUSTRATOR\":\"ILLUSTRATOR\",\"ADOBEXD\":\"ADOBE XD\"}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":\"Cooking\",\"singing\":\"Singing\"}', 'TEst', NULL),
(6, 'Ahmed Sanny Aaron', 'Jr.Software Engineer', 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', NULL, '@Ahmed Sanny', 'public/uploads/1668584518.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":\"Cooking\",\"singing\":\"Singing\"}', 'test', NULL),
(7, 'Ahmed Sanny Aaron', 'Jr.Software Engineer', 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'abdussamad.dev', '@abdussamad018', 'public/uploads/1668678652.jpg', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":\"PHOTOSHOP\",\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":\"Cooking\",\"singing\":null}', NULL, NULL),
(8, 'Ahmed Sanny Aaron', 'software engr', 1315595248, 'ahmed@gmail.com', 'Jatrabari,dhaka', 'abdussamad.dev', '@abdussamad018', 'public/uploads/1668858086.png', 2, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'test', NULL),
(9, 'Ahmed Sanny Aaron', 'Software developer', 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'abdussamad.dev', '@abdussamad018', 'public/uploads/1669028265.jpg', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":\"PHOTOSHOP\",\"ILLUSTRATOR\":\"ILLUSTRATOR\",\"ADOBEXD\":\"ADOBE XD\"}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":\"Cooking\",\"singing\":\"Singing\"}', 'Testing', NULL),
(10, 'Ahmed Sanny Aaron', 'Software Developer', 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'abdussamad.dev', '@abdussamad018', 'public/uploads/1669028728.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":\"PHOTOSHOP\",\"ILLUSTRATOR\":\"ILLUSTRATOR\",\"ADOBEXD\":\"ADOBE XD\"}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":\"Cooking\",\"singing\":null}', 'TESTING', NULL),
(11, 'Ahmed Sanny Aaron', 'Software Developer', 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'abdussamad.dev', '@abdussamad018', 'public/uploads/1669028744.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":\"PHOTOSHOP\",\"ILLUSTRATOR\":\"ILLUSTRATOR\",\"ADOBEXD\":\"ADOBE XD\"}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":\"Cooking\",\"singing\":null}', 'TESTING', NULL),
(12, 'Ahmed Sanny Aaron', NULL, 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', NULL, NULL, 'public/uploads/1669790071.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":\"Cooking\",\"singing\":\"Singing\"}', 'TEST', NULL),
(13, 'Ahmed', 'jr', 123456789, 'ahmedsannycse@gmail.com', 'jatrabari,dhaka', NULL, NULL, 'public/uploads/1669808506.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'profile', NULL),
(14, 'test', 'title', 123456789, 'test@gmail.com', 'Mirpur,Dhaka', 'https://utcglobalacademy.com/', NULL, 'public/uploads/1669811351.jpg', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'utc', NULL),
(15, 'hero', 'hero title', 123456789, 'ahmedsannycse@gmail.com', 'mirpur,dhaka', NULL, NULL, 'public/uploads/1669811561.jpg', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'cv profile', NULL),
(16, 'testcv', 'testtitlee', 123456, 'ahmedsannycse@gmail.com', 'Mirpur,Dhaka', 'https://utcglobalacademy.com/', NULL, 'public/uploads/1669812175.png', 2, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'cv pro', NULL),
(17, 'Ahmed Sanny Aaron', 'title', 123456789, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'https://utcglobalacademy.com/', NULL, 'public/uploads/1669812338.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'utc global', NULL),
(18, 'Ahmed Sanny Aaron', 'title', 123456789, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'https://utcglobalacademy.com/', NULL, 'public/uploads/1669812557.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'utc utc', NULL),
(19, 'test', 'title', 123456789, 'ahmedsannycse@gmail.com', 'dhaka,bangladesh', 'https://utcglobalacademy.com/', NULL, 'public/uploads/1669813128.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'cv profile', NULL),
(20, 'Ahmed sanny aaron', 'jr. software developer', 123456789, 'ahmedsannycse@gmail.com', 'Demra,Dhaka', NULL, NULL, 'public/uploads/1669872539.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'profile demo', NULL),
(21, 'Ahmed Sanny Aaron', 'fgbvfbgf', 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'https://utcglobalacademy.com/', '@abdussamad018', 'public/uploads/1670040562.png', 2, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":\"PHOTOSHOP\",\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":null}', '{\"reading\":null,\"gaming\":null,\"cooking\":null,\"singing\":null}', 'gfbgfbg', NULL),
(22, 'Ahmed Sanny Aaron', 'ghgg', 1315595248, 'ahmedsannycse@gmail.com', 'Jatrabari,dhaka', 'https://utcglobalacademy.com/', '@abdussamad018', 'public/uploads/1670040692.png', 3, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'gfgfg', NULL),
(23, 'James Banson', 'Developer', 2088674935, 'james@banson.com', '1220 N Cole Rd', 'www.james.com', 'james', 'public/uploads/1670473437.jpg', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":\"ILLUSTRATOR\",\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":\"Cooking\",\"singing\":null}', 'Summary Testing', NULL),
(24, 'mr xyz', 'title', 1234567890, 'xyz@gmail.com', 'dhaka', NULL, NULL, 'public/uploads/1672237086.jpg', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'hjxggdfkk', NULL),
(25, 'Ahmed sanny aaron', 'title', 123456789, 'ahmed@gmail.com', 'Mirpur,Dhaka', '#', '#', 'public/uploads/1672729229.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":\"PHOTOSHOP\",\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', NULL, NULL),
(26, 'Chantale Woods', 'Ea eum sit tempore', 123456789, 'picorob@mailinator.com', 'Velit culpa dignissi', 'https://www.loqejazawafaba.in', 'Nisi hic ea magni co', 'public/uploads/1673169836.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'SUMMERY', NULL),
(27, 'Tallulah Carroll', 'Ut dolor fugiat quia', 123456789, 'lohe@mailinator.com', 'Quis ut odit maiores', 'https://www.vipalyd.mobi', 'Duis vel dolorem cul', 'public/uploads/1673170041.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'DESCRIPTION', NULL),
(28, 'Michelle Lynch', 'Amet qui praesentiu', 1234567, 'pimahed@mailinator.com', 'Nemo ad neque sed es', 'https://www.qasyxywyzuwy.me.uk', 'Rerum cupiditate quo', 'public/uploads/1673254694.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":\"JavaScript\",\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(29, 'Vincent Torres', 'At officiis pariatur', 123456789, 'bopavo@mailinator.com', 'Explicabo Quis libe', 'https://www.jexozegemofovyn.com.au', 'Veniam aspernatur u', 'public/uploads/1673259055.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(30, 'Penelope Lloyd', 'Reiciendis autem inv', 123456789, 'mejebirec@mailinator.com', 'Est nulla culpa exp', 'https://www.burimuj.net', 'Doloribus et ipsum i', 'public/uploads/1673262073.png', 3, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":null,\"gaming\":null,\"cooking\":null,\"singing\":null}', 'SUMMERY', NULL),
(31, 'Kay Kirk', 'Incididunt possimus', 123456789, 'cenowo@mailinator.com', 'Nesciunt quas rerum', 'https://www.dyt.com', 'Temporibus ullam ea', 'public/uploads/1673262384.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(32, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263249.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(33, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263362.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(34, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263444.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(35, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263505.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(36, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263544.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(37, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263652.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(38, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263706.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(39, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673263915.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(40, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673264001.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(41, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673264035.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(42, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673264080.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(43, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673264113.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(44, 'Harding Farrell', 'Ut eum praesentium m', 123456789, 'qiliroluca@mailinator.com', 'Id iure deserunt qui', 'https://www.misajenilytos.co', 'Omnis earum voluptat', 'public/uploads/1673264214.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(45, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673264326.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(46, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673264412.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(47, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673264506.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(48, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673264639.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(49, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673264972.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(50, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673265058.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(51, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673265244.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(52, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673266304.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(53, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673266671.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(54, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673266752.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(55, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673267024.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(56, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673267052.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(57, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673267219.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(58, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673267244.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(59, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673267300.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(60, 'Shaine Walter', 'Nostrud ducimus nes', 123456789, 'gizokafeja@mailinator.com', 'Culpa qui inventore', 'https://www.sytaqabulikyc.tv', 'Qui beatae exercitat', 'public/uploads/1673267686.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(61, 'Reese Cline', 'Iure labore sed illo', 123456789, 'lucat@mailinator.com', 'Sunt in ipsum error', 'https://www.sibejiperafem.com.au', 'Aliqua Sit velit vo', 'public/uploads/1673267919.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'SUMMERY', NULL),
(62, 'Reese Cline', 'Iure labore sed illo', 123456789, 'lucat@mailinator.com', 'Sunt in ipsum error', 'https://www.sibejiperafem.com.au', 'Aliqua Sit velit vo', 'public/uploads/1673268323.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'SUMMERY', NULL),
(63, 'Reese Cline', 'Iure labore sed illo', 123456789, 'lucat@mailinator.com', 'Sunt in ipsum error', 'https://www.sibejiperafem.com.au', 'Aliqua Sit velit vo', 'public/uploads/1673268366.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'SUMMERY', NULL),
(64, 'Tatyana Crosby', 'Voluptatem numquam', 123456789, 'pyjicexow@mailinator.com', 'Enim est molestias', 'https://www.pyzujy.co', 'Tempore et ducimus', 'public/uploads/1673268629.png', 3, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(65, 'Evelyn Sutton', 'Voluptates ea incidu', 123456789, 'faca@mailinator.com', 'Ullam minus optio s', 'https://www.zizucugyvoxitor.com', 'Molestiae molestiae', 'public/uploads/1673327127.png', 3, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(66, 'Nora Walls', 'Consectetur dolorem', 123456789, 'laredevi@mailinator.com', 'Id commodo animi qu', 'https://www.fonyruhuqyte.co', 'Aliquip enim in volu', 'public/uploads/1673327385.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(67, 'Lael Watts', 'Rem nesciunt dolor', 123456789, 'paxywibici@mailinator.com', 'Optio omnis ea sint', 'https://www.linasoda.org.au', 'Eu rerum sunt alias', 'public/uploads/1673327519.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', NULL, NULL),
(68, 'Lael Watts', 'Rem nesciunt dolor', 123456789, 'paxywibici@mailinator.com', 'Optio omnis ea sint', 'https://www.linasoda.org.au', 'Eu rerum sunt alias', 'public/uploads/1673327770.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', NULL, NULL),
(69, 'Lael Watts', 'Rem nesciunt dolor', 123456789, 'paxywibici@mailinator.com', 'Optio omnis ea sint', 'https://www.linasoda.org.au', 'Eu rerum sunt alias', 'public/uploads/1673327914.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', NULL, NULL),
(70, 'Lael Watts', 'Rem nesciunt dolor', 123456789, 'paxywibici@mailinator.com', 'Optio omnis ea sint', 'https://www.linasoda.org.au', 'Eu rerum sunt alias', 'public/uploads/1673327971.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', NULL, NULL),
(71, 'Lars Clements', 'Consequat Amet ven', 123456789, 'zukunix@mailinator.com', 'Sint fugiat vel ut c', 'https://www.fupir.ws', 'Ullamco voluptatem', 'public/uploads/1673328543.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'summery', NULL),
(72, 'Lars Clements', 'Consequat Amet ven', 123456789, 'zukunix@mailinator.com', 'Sint fugiat vel ut c', 'https://www.fupir.ws', 'Ullamco voluptatem', 'public/uploads/1673329323.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'summery', NULL),
(73, 'Brent Holt', 'Quidem non pariatur', 123456789, 'sofosevis@mailinator.com', 'Velit blanditiis ad', 'https://www.foreki.info', 'Dolore fuga Quisqua', 'public/uploads/1673329531.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(74, 'Brent Holt', 'Quidem non pariatur', 123456789, 'sofosevis@mailinator.com', 'Velit blanditiis ad', 'https://www.foreki.info', 'Dolore fuga Quisqua', 'public/uploads/1673329633.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(75, 'Brent Holt', 'Quidem non pariatur', 123456789, 'sofosevis@mailinator.com', 'Velit blanditiis ad', 'https://www.foreki.info', 'Dolore fuga Quisqua', 'public/uploads/1673329694.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(76, 'Brent Holt', 'Quidem non pariatur', 123456789, 'sofosevis@mailinator.com', 'Velit blanditiis ad', 'https://www.foreki.info', 'Dolore fuga Quisqua', 'public/uploads/1673329753.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(77, 'Brent Holt', 'Quidem non pariatur', 123456789, 'sofosevis@mailinator.com', 'Velit blanditiis ad', 'https://www.foreki.info', 'Dolore fuga Quisqua', 'public/uploads/1673329810.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(78, 'Brent Holt', 'Quidem non pariatur', 123456789, 'sofosevis@mailinator.com', 'Velit blanditiis ad', 'https://www.foreki.info', 'Dolore fuga Quisqua', 'public/uploads/1673329855.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(79, 'Brent Holt', 'Quidem non pariatur', 123456789, 'sofosevis@mailinator.com', 'Velit blanditiis ad', 'https://www.foreki.info', 'Dolore fuga Quisqua', 'public/uploads/1673329885.png', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(80, 'Lars Clements', 'Consequat Amet ven', 123456789, 'zukunix@mailinator.com', 'Sint fugiat vel ut c', 'https://www.fupir.ws', 'Ullamco voluptatem', 'public/uploads/1673330195.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'summery', NULL),
(81, 'Lars Clements', 'Consequat Amet ven', 123456789, 'zukunix@mailinator.com', 'Sint fugiat vel ut c', 'https://www.fupir.ws', 'Ullamco voluptatem', 'public/uploads/1673330280.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'summery', NULL),
(82, 'Lars Clements', 'Consequat Amet ven', 123456789, 'zukunix@mailinator.com', 'Sint fugiat vel ut c', 'https://www.fupir.ws', 'Ullamco voluptatem', 'public/uploads/1673330329.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'summery', NULL),
(83, 'Lars Clements', 'Consequat Amet ven', 123456789, 'zukunix@mailinator.com', 'Sint fugiat vel ut c', 'https://www.fupir.ws', 'Ullamco voluptatem', 'public/uploads/1673330373.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'summery', NULL),
(84, 'Lars Clements', 'Consequat Amet ven', 123456789, 'zukunix@mailinator.com', 'Sint fugiat vel ut c', 'https://www.fupir.ws', 'Ullamco voluptatem', 'public/uploads/1673330401.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'summery', NULL),
(85, 'Brianna Wooten', 'Dolores asperiores u', 123456789, 'debemu@mailinator.com', 'Aut quo qui eaque nu', 'https://www.xoxekizab.cm', 'Quibusdam minim dolo', 'public/uploads/1673330611.png', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(86, 'Brianna Wooten', 'Dolores asperiores u', 123456789, 'debemu@mailinator.com', 'Aut quo qui eaque nu', 'https://www.xoxekizab.cm', 'Quibusdam minim dolo', 'public/uploads/1673330790.png', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(87, 'Brianna Wooten', 'Dolores asperiores u', 123456789, 'debemu@mailinator.com', 'Aut quo qui eaque nu', 'https://www.xoxekizab.cm', 'Quibusdam minim dolo', 'public/uploads/1673330912.png', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(88, 'Brianna Wooten', 'Dolores asperiores u', 123456789, 'debemu@mailinator.com', 'Aut quo qui eaque nu', 'https://www.xoxekizab.cm', 'Quibusdam minim dolo', 'public/uploads/1673330961.png', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(89, 'Brianna Wooten', 'Dolores asperiores u', 123456789, 'debemu@mailinator.com', 'Aut quo qui eaque nu', 'https://www.xoxekizab.cm', 'Quibusdam minim dolo', 'public/uploads/1673331018.png', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(90, 'Brianna Wooten', 'Dolores asperiores u', 123456789, 'debemu@mailinator.com', 'Aut quo qui eaque nu', 'https://www.xoxekizab.cm', 'Quibusdam minim dolo', 'public/uploads/1673331167.png', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(91, 'Kibo Mayer', 'Est consequuntur dol', 123456789, 'fosu@mailinator.com', 'Et ipsa tempor mole', 'https://www.zahexowug.me.uk', 'Provident illo est', 'public/uploads/1673331473.jpg', 2, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(92, 'Kibo Mayer', 'Est consequuntur dol', 123456789, 'fosu@mailinator.com', 'Et ipsa tempor mole', 'https://www.zahexowug.me.uk', 'Provident illo est', 'public/uploads/1673331529.jpg', 2, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(93, 'Ryder Alexander', 'Dolor id nihil sapie', 123456789, 'poxaxuvuna@mailinator.com', 'Cumque ratione optio', 'https://www.wuhehefydyf.biz', 'Voluptatem nisi ipsu', 'public/uploads/1673332122.jpg', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(94, 'Ryder Alexander', 'Dolor id nihil sapie', 123456789, 'poxaxuvuna@mailinator.com', 'Cumque ratione optio', 'https://www.wuhehefydyf.biz', 'Voluptatem nisi ipsu', 'public/uploads/1673332225.jpg', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(95, 'soft web', NULL, 1618223344, 'softwebhostbd@gmail.com', 'House 504, Road 7, Avine Mirpur Dohs', 'softcreation.tech', NULL, 'public/uploads/1673332587.PNG', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":null,\"English\":\"English\"}', '{\"reading\":null,\"gaming\":\"Gaming\",\"cooking\":null,\"singing\":null}', 'fhsdhgs', NULL),
(96, 'Alexis Mcknight', 'Cupidatat cumque qui', 123456789, 'canef@mailinator.com', 'Magnam dolores est u', 'https://www.somuq.org', 'Vel nemo laborum com', 'public/uploads/1673339386.jpg', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(97, 'Valentine Paul', 'In aut dolorem dolor', 123456789, 'dubuj@mailinator.com', 'Mirpur,Dhaka', 'https://www.fotakuboryqosy.co.uk', 'Maiores eligendi sit', 'public/uploads/1673342013.jpg', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(98, 'Kibo Horn', 'Aliquam molestiae ve', 123456789, 'dyripyqu@mailinator.com', 'Et placeat magni vo', 'https://www.kuvawakar.com.au', 'Ipsam veniam invent', 'public/uploads/1673346429.jpg', 1, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(99, 'Irene Ryan', 'Ipsam obcaecati duci', 123456789, 'dusivu@mailinator.com', 'Omnis similique in v', 'https://www.devydomahasy.ws', 'Laboriosam alias no', 'public/uploads/1673347084.jpg', 2, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":\"English\"}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(100, 'Taylor Hurley', 'Illo sunt ex molesti', 123456789, 'jexihax@mailinator.com', 'Qui quis inventore q', 'https://www.gisemyfypeb.me.uk', 'Est est rerum tenetu', 'public/uploads/1673347588.jpg', 2, '{\"html\":\"HTML\",\"CSS\":null,\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL),
(101, 'Nash Pierce', 'Magnam ea sed quaera', 123456789, 'dutawocug@mailinator.com', 'Et iusto ut ad quam', 'https://www.waxuf.me.uk', 'Ut esse voluptatem', 'public/uploads/1673354371.png', 1, '{\"html\":\"HTML\",\"CSS\":\"CSS\",\"javascript\":null,\"PHOTOSHOP\":null,\"ILLUSTRATOR\":null,\"ADOBEXD\":null}', '{\"Bangla\":\"Bangla\",\"English\":null}', '{\"reading\":\"Reading\",\"gaming\":null,\"cooking\":null,\"singing\":null}', 'summery', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `cv_id` int(10) DEFAULT NULL,
  `edu_level` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `edu_from` int(10) DEFAULT NULL,
  `edu_to` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `cv_id`, `edu_level`, `university`, `edu_from`, `edu_to`) VALUES
(1, 1, 'Bachelo\'s', 'Dhaka University', 1900, 1900),
(2, 2, 'Bachelo\'s', 'Dhaka University', 1900, 1900),
(3, 3, 'Bachelo\'s', 'Dhaka University', 1900, 1900),
(4, 4, 'Bachelo\'s', 'Dhaka University', 1900, 1900),
(5, 5, 'High school or equivalent', 'Dhaka University', 1900, 1900),
(6, 5, '5', 'AUST', 1995, 1980),
(7, 6, 'High school or equivalent', 'Dhaka University', 1900, 1921),
(8, 6, 'Bachelos', 'AUST', 2010, 2019),
(9, 6, 'Masters', 'BUBT', 2016, 2020),
(10, 7, 'Diploma', 'Dhaka University', 1900, 1900),
(11, 8, 'Higher National Diploma', 'Dhaka University', 1900, 1900),
(12, 9, 'High school or equivalent', 'Khajurial ml High school', 2008, 2013),
(13, 9, 'Bachelos', 'AUST', 2015, 2020),
(14, 9, 'Masters', 'BUBT', 2016, 2020),
(15, 10, 'Higher National Diploma', 'Dhaka University', 1900, 1900),
(16, 10, 'Higher National Diploma', 'Dhaka University', 1995, 1980),
(17, 11, 'Higher National Diploma', 'Dhaka University', 1900, 1900),
(18, 11, 'Higher National Diploma', 'Dhaka University', 1995, 1980),
(19, 12, 'High school or equivalent', 'Dhaka University', 2013, 2015),
(20, 12, 'Bachelor', 'Khajurial ml High school', 2020, 2022),
(21, 13, 'Bachelor', 'Dhaka University', 2018, 2022),
(22, 14, 'High school or equivalent', 'Dhaka university', 2006, 2022),
(23, 15, 'High school or equivalent', 'Dhaka university', 2018, 2022),
(24, 16, 'High school or equivalent', 'Dhaka university', 2018, 2022),
(25, 17, 'High school or equivalent', 'Dhaka University', 2018, 2022),
(26, 18, 'High school or equivalent', 'Dhaka University', 2018, 2022),
(27, 19, 'High school or equivalent', 'Dhaka university', 2018, 2022),
(28, 20, 'High school or equivalent', 'Dhaka university', 2020, 2022),
(29, 21, 'High school or equivalent', 'Dhaka University', 1980, 1980),
(30, 22, 'High school or equivalent', 'Dhaka University', 1980, 1980),
(31, 23, 'Bachelor', 'DU', 1980, 1996),
(32, 24, 'Doctorate', 'xyz', 1990, 1992),
(33, 25, 'High school or equivalent', 'Dhaka university', 2018, 2020),
(34, 26, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(35, 27, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(36, 28, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(37, 29, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(38, 30, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(39, 31, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(40, 32, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(41, 33, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(42, 34, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(43, 35, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(44, 36, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(45, 37, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(46, 38, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(47, 39, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(48, 40, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(49, 41, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(50, 42, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(51, 43, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(52, 44, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(53, 45, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(54, 46, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(55, 47, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(56, 48, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(57, 49, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(58, 50, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(59, 51, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(60, 52, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(61, 53, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(62, 54, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(63, 55, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(64, 56, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(65, 57, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(66, 58, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(67, 59, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(68, 60, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(69, 61, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(70, 62, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(71, 63, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(72, 64, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(73, 65, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(74, 66, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(75, 67, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(76, 68, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(77, 69, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(78, 70, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(79, 71, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(80, 72, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(81, 73, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(82, 74, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(83, 75, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(84, 76, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(85, 77, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(86, 78, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(87, 79, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(88, 80, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(89, 81, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(90, 82, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(91, 83, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(92, 84, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(93, 85, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(94, 86, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(95, 87, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(96, 88, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(97, 89, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(98, 90, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(99, 91, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(100, 92, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(101, 93, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(102, 94, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(103, 95, 'Diploma', 'jkvghg', 1980, 1980),
(104, 96, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(105, 97, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(106, 98, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(107, 99, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(108, 100, 'High school or equivalent', 'Dhaka university', 1980, 1980),
(109, 101, 'High school or equivalent', 'Dhaka university', 1980, 1980);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `job_tit` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `work_from` int(10) DEFAULT NULL,
  `work_to` int(10) DEFAULT NULL,
  `cur_work` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `cv_id`, `job_tit`, `company`, `description`, `work_from`, `work_to`, `cur_work`) VALUES
(1, 1, 'Softcreation Limited', 'software developer', NULL, 1900, 1900, 'cur_work'),
(2, 2, NULL, 'software developer', NULL, 1900, 1900, 'cur_work'),
(3, 3, NULL, 'software developer', NULL, 1900, 1900, 'cur_work'),
(4, 4, NULL, 'software developer', NULL, 1900, 1900, 'cur_work'),
(5, 5, NULL, 'software developer', 'Best Software company in Bangladesh', 1900, 1900, 'cur_work'),
(6, 6, 'software developer', 'softcreation limited', 'Best Software company in Bangladesh', 2021, 1900, 'cur_work'),
(7, 7, 'software developer', 'CIT', 'Best Software company in Bangladesh', 1900, 1900, 'cur_work'),
(8, 8, 'software developer', 'CIT', 'Best Software company in Bangladesh', 1900, 1900, 'cur_work'),
(9, 9, 'software developer', 'softcreation limited', 'Best Software company in Bangladesh', 2021, 1900, 'cur_work'),
(10, 10, 'software developer', 'CIT', 'Best Software company in Bangladesh', 1900, 1900, 'cur_work'),
(11, 11, 'software developer', 'CIT', 'Best Software company in Bangladesh', 1900, 1900, 'cur_work'),
(12, 12, 'software developer', 'softcreation limited', 'Best Software company in Bangladesh', 2021, 1980, 'cur_work'),
(13, 13, 'software developer', 'softcreation limited', 'Best Software company in Bangladesh', 2018, 2022, 'cur_work'),
(14, 14, 'Software developer', 'Softcreation ltd', 'description', 2017, 2022, 'cur_work'),
(15, 15, 'Software developer', 'Softcreation ltd', 'description', 1983, 1997, 'cur_work'),
(16, 16, 'Software developer', 'Softcreation ltd', 'description', 2020, 2022, 'cur_work'),
(17, 17, 'software developer', 'cit', 'Best Software company in Bangladesh', 2020, 2022, 'cur_work'),
(18, 18, 'software developer', 'CIT', 'Best Software company in Bangladesh', 2018, 2022, 'cur_work'),
(19, 19, 'Software developer', 'Softcreation ltd', 'description', 1995, 2020, 'cur_work'),
(20, 20, 'Software developer', 'Softcreation ltd', 'description', 2020, 2022, 'cur_work'),
(21, 21, 'software developer', 'continentalnewsofficial', 'Best Software company in Bangladesh', 1980, 1980, 'cur_work'),
(22, 22, 'software developer', 'CIT', 'Best Software company in Bangladesh', 1980, 1980, 'cur_work'),
(23, 23, 'PHP Developer', 'James Tech', 'Test', 1980, 1980, 'cur_work'),
(24, 24, 'yxz', 'xytz', 'dfglkjhgfghn', 1990, 1992, 'cur_work'),
(25, 25, 'Software developer', 'Softcreation ltd', 'description', 2020, 2023, 'cur_work'),
(26, 26, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(27, 27, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(28, 28, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(29, 29, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(30, 31, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(31, 32, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(32, 33, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(33, 34, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(34, 35, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(35, 36, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(36, 37, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(37, 38, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(38, 39, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(39, 40, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(40, 41, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(41, 42, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(42, 43, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(43, 44, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(44, 45, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(45, 46, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(46, 47, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(47, 48, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(48, 49, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(49, 50, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(50, 51, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(51, 52, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(52, 53, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(53, 54, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(54, 55, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(55, 56, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(56, 57, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(57, 58, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(58, 59, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(59, 60, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(60, 61, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(61, 62, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(62, 63, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(63, 64, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(64, 65, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(65, 67, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(66, 68, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(67, 69, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(68, 70, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(69, 71, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(70, 72, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(71, 73, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(72, 74, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(73, 75, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(74, 76, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(75, 77, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(76, 78, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(77, 79, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(78, 80, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(79, 81, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(80, 82, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(81, 83, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(82, 84, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(83, 85, 'Software developer', 'Softcreation ltd', NULL, 1980, 1980, 'cur_work'),
(84, 86, 'Software developer', 'Softcreation ltd', NULL, 1980, 1980, 'cur_work'),
(85, 87, 'Software developer', 'Softcreation ltd', NULL, 1980, 1980, 'cur_work'),
(86, 88, 'Software developer', 'Softcreation ltd', NULL, 1980, 1980, 'cur_work'),
(87, 89, 'Software developer', 'Softcreation ltd', NULL, 1980, 1980, 'cur_work'),
(88, 90, 'Software developer', 'Softcreation ltd', NULL, 1980, 1980, 'cur_work'),
(89, 91, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(90, 92, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(91, 93, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(92, 94, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(93, 95, 'mnjhfhc', 'Rabbit Host', 'jhfdjm', 1980, 1980, 'cur_work'),
(94, 96, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(95, 97, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(96, 98, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(97, 99, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(98, 100, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work'),
(99, 101, 'Software developer', 'Softcreation ltd', 'description', 1980, 1980, 'cur_work');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_05_070212_create_countries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdus samad', 'admin@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-11-17 10:27:52', '2022-11-17 10:27:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `cv`
--
ALTER TABLE `cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
