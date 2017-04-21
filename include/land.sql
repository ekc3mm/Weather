-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2017 at 03:25 AM
-- Server version: 5.6.34
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `land`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `code` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `alpha2` varchar(2) NOT NULL,
  `alpha3` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`code`, `name`, `fullname`, `alpha2`, `alpha3`) VALUES
(36, 'АВСТРАЛИЯ', 'АВСТРАЛИЯ', 'AU', 'AUS'),
(40, 'АВСТРИЯ', 'АВСТРИЙСКАЯ РЕСПУБЛИКА', 'AT', 'AUT'),
(31, 'АЗЕРБАЙДЖАН', 'РЕСПУБЛИКА АЗЕРБАЙДЖАН', 'AZ', 'AZE'),
(8, 'АЛБАНИЯ', 'РЕСПУБЛИКА АЛБАНИЯ', 'AL', 'ALB'),
(12, 'АЛЖИР', 'АЛЖИРСКАЯ НАРОДНАЯ ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА', 'DZ', 'DZA'),
(660, 'АНГИЛЬЯ', 'АНГИЛЬЯ', 'AI', 'AIA'),
(24, 'АНГОЛА', 'РЕСПУБЛИКА АНГОЛА', 'AO', 'AGO'),
(20, 'АНДОРРА', 'КНЯЖЕСТВО АНДОРРА', 'AD', 'AND'),
(10, 'АНТАРКТИДА', 'АНТАРКТИДА', 'AQ', 'ATA'),
(28, 'АНТИГУА И БАРБУДА', 'АНТИГУА И БАРБУДА', 'AG', 'ATG'),
(32, 'АРГЕНТИНА', 'АРГЕНТИНСКАЯ РЕСПУБЛИКА', 'AR', 'ARG'),
(51, 'АРМЕНИЯ', 'РЕСПУБЛИКА АРМЕНИЯ', 'AM', 'ARM'),
(533, 'АРУБА', 'ОСТРОВ АРУБА', 'AW', 'ABW'),
(4, 'АФГАНИСТАН', 'ПЕРЕХОДНОЕ ИСЛАМСКОЕ ГОСУДАРСТВО АФГАНИСТАН', 'AF', 'AFG'),
(44, 'БАГАМЫ', 'СОДРУЖЕСТВО БАГАМЫ', 'BS', 'BHS'),
(50, 'БАНГЛАДЕШ', 'НАРОДНАЯ РЕСПУБЛИКА БАНГЛАДЕШ', 'BD', 'BGD'),
(52, 'БАРБАДОС', 'БАРБАДОС', 'BB', 'BRB'),
(48, 'БАХРЕЙН', 'КОРОЛЕВСТВО БАХРЕЙН', 'BH', 'BHR'),
(112, 'БЕЛАРУСЬ', 'РЕСПУБЛИКА БЕЛАРУСЬ', 'BY', 'BLR'),
(84, 'БЕЛИЗ', 'БЕЛИЗ', 'BZ', 'BLZ'),
(56, 'БЕЛЬГИЯ', 'КОРОЛЕВСТВО БЕЛЬГИИ', 'BE', 'BEL'),
(204, 'БЕНИН', 'РЕСПУБЛИКА БЕНИН', 'BJ', 'BEN'),
(60, 'БЕРМУДЫ', 'БЕРМУДСКИЕ ОСТРОВА', 'BM', 'BMU'),
(100, 'БОЛГАРИЯ', 'РЕСПУБЛИКА БОЛГАРИЯ', 'BG', 'BGR'),
(68, 'БОЛИВИЯ', 'РЕСПУБЛИКА БОЛИВИЯ', 'BO', 'BOL'),
(70, 'БОСНИЯ И ГЕРЦЕГОВИНА', 'БОСНИЯ И ГЕРЦЕГОВИНА', 'BA', 'BIH'),
(72, 'БОТСВАНА', 'РЕСПУБЛИКА БОТСВАНА', 'BW', 'BWA'),
(76, 'БРАЗИЛИЯ', 'ФЕДЕРАТИВНАЯ РЕСПУБЛИКА БРАЗИЛИЯ', 'BR', 'BRA'),
(86, 'БРИТАН. ТЕРРИТ.', 'БРИТАНСКАЯ ТЕРРИТОРИЯ В ИНДИЙСКОМ ОКЕАНЕ (БРИТ.)', 'IO', 'IOT'),
(96, 'БРУНЕЙ', 'БРУНЕЙ-ДАРУССАЛАМ', 'BN', 'BRN'),
(74, 'БУВЕ', 'ОСТРОВ БУВЕ', 'BV', 'BVT'),
(854, 'БУРКИНА-ФАСО', 'БУРКИНА-ФАСО', 'BF', 'BFA'),
(108, 'БУРУНДИ', 'РЕСПУБЛИКА БУРУНДИ', 'BI', 'BDI'),
(64, 'БУТАН', 'КОРОЛЕВСТВО БУТАН', 'BT', 'BTN'),
(548, 'ВАНУАТУ', 'РЕСПУБЛИКА ВАНУАТУ', 'VU', 'VUT'),
(336, 'ВАТИКАН', 'ПАПСКИЙ ПРЕСТОЛ (ГОСУДАРСТВО-ГОРОД ВАТИКАН)', 'VA', 'VAT'),
(348, 'ВЕНГРИЯ', 'ВЕНГЕРСКАЯ РЕСПУБЛИКА', 'HU', 'HUN'),
(862, 'ВЕНЕСУЭЛА', 'БОЛИВАРИЙСКАЯ РЕСПУБЛИКА ВЕНЕСУЭЛА', 'VE', 'VEN'),
(850, 'ВИРГИН. О-ВА', 'ВИРГИНСКИЕ ОСТРОВА (США)', 'VI', 'VIR'),
(92, 'ВИРГИН. О-ВА, БРИТАНСКИЕ', 'БРИТАНСКИЕ ВИРГИНСКИЕ ОСТРОВА', 'VG', 'VGB'),
(16, 'ВОСТОЧНОЕ САМОА', 'АМЕРИКАНСКОЕ САМОА (США)', 'AS', 'ASM'),
(704, 'ВЬЕТНАМ', 'СОЦИАЛИСТИЧЕСКАЯ РЕСПУБЛИКА ВЬЕТНАМ', 'VN', 'VNM'),
(266, 'ГАБОН', 'ГАБОНСКАЯ РЕСПУБЛИКА', 'GA', 'GAB'),
(332, 'ГАИТИ', 'РЕСПУБЛИКА ГАИТИ', 'HT', 'HTI'),
(328, 'ГАЙАНА', 'РЕСПУБЛИКА ГАЙАНА', 'GY', 'GUY'),
(270, 'ГАМБИЯ', 'РЕСПУБЛИКА ГАМБИЯ', 'GM', 'GMB'),
(288, 'ГАНА', 'РЕСПУБЛИКА ГАНА', 'GH', 'GHA'),
(312, 'ГВАДЕЛУПА', 'ГВАДЕЛУПА (ФР.)', 'GP', 'GLP'),
(320, 'ГВАТЕМАЛА', 'РЕСПУБЛИКА ГВАТЕМАЛА', 'GT', 'GTM'),
(254, 'ГВИАНА', 'ФРАНЦУЗСКАЯ ГВИАНА (ФР.)', 'GF', 'GUF'),
(324, 'ГВИНЕЯ', 'ГВИНЕЙСКАЯ РЕСПУБЛИКА', 'GN', 'GIN'),
(624, 'ГВИНЕЯ-БИСАУ', 'РЕСПУБЛИКА ГВИНЕЯ-БИСАУ', 'GW', 'GNB'),
(276, 'ГЕРМАНИЯ', 'ФЕДЕРАТИВНАЯ РЕСПУБЛИКА ГЕРМАНИЯ', 'DE', 'DEU'),
(831, 'ГЕРНСИ', 'ГЕРНСИ', 'GG', 'GGY'),
(292, 'ГИБРАЛТАР', 'ГИБРАЛТАР (БРИТ.)', 'GI', 'GIB'),
(340, 'ГОНДУРАС', 'РЕСПУБЛИКА ГОНДУРАС', 'HN', 'HND'),
(344, 'ГОНКОНГ', 'СПЕЦИАЛЬНЫЙ АДМИНИСТРАТИВНЫЙ РЕГИОН КИТАЯ ГОНКОНГ', 'HK', 'HKG'),
(308, 'ГРЕНАДА', 'ГРЕНАДА', 'GD', 'GRD'),
(304, 'ГРЕНЛАНДИЯ', 'ГРЕНЛАНДИЯ', 'GL', 'GRL'),
(300, 'ГРЕЦИЯ', 'ГРЕЧЕСКАЯ РЕСПУБЛИКА', 'GR', 'GRC'),
(268, 'ГРУЗИЯ', 'РЕСПУБЛИКА ГРУЗИЯ', 'GE', 'GEO'),
(316, 'ГУАМ', 'ГУАМ (США)', 'GU', 'GUM'),
(208, 'ДАНИЯ', 'КОРОЛЕВСТВО ДАНИЯ', 'DK', 'DNK'),
(832, 'ДЖЕРСИ', 'ДЖЕРСИ', 'JE', 'JEY'),
(262, 'ДЖИБУТИ', 'РЕСПУБЛИКА ДЖИБУТИ', 'DJ', 'DJI'),
(212, 'ДОМИНИКА', 'СОДРУЖЕСТВО ДОМИНИКИ', 'DM', 'DMA'),
(214, 'ДОМИНИКАНСКАЯ РЕСПУБЛИКА', 'ДОМИНИКАНСКАЯ РЕСПУБЛИКА', 'DO', 'DOM'),
(818, 'ЕГИПЕТ', 'АРАБСКАЯ РЕСПУБЛИКА ЕГИПЕТ (АРЕ)', 'EG', 'EGY'),
(894, 'ЗАМБИЯ', 'РЕСПУБЛИКА ЗАМБИЯ', 'ZM', 'ZMB'),
(732, 'ЗАПАДНАЯ САХАРА', 'ЗАПАДНАЯ САХАРА', 'EH', 'ESH'),
(716, 'ЗИМБАБВЕ', 'РЕСПУБЛИКА ЗИМБАБВЕ', 'ZW', 'ZWE'),
(376, 'ИЗРАИЛЬ', 'ГОСУДАРСТВО ИЗРАИЛЬ', 'IL', 'ISR'),
(356, 'ИНДИЯ', 'РЕСПУБЛИКА ИНДИЯ', 'IN', 'IND'),
(360, 'ИНДОНЕЗИЯ', 'РЕСПУБЛИКА ИНДОНЕЗИЯ', 'ID', 'IDN'),
(400, 'ИОРДАНИЯ', 'ИОРДАНСКОЕ ХАШИМИТСКОЕ КОРОЛЕВСТВО', 'JO', 'JOR'),
(368, 'ИРАК', 'РЕСПУБЛИКА ИРАК', 'IQ', 'IRQ'),
(364, 'ИРАН', 'ИСЛАМСКАЯ РЕСПУБЛИКА ИРАН', 'IR', 'IRN'),
(372, 'ИРЛАНДИЯ', 'ИРЛАНДИЯ', 'IE', 'IRL'),
(352, 'ИСЛАНДИЯ', 'РЕСПУБЛИКА ИСЛАНДИЯ', 'IS', 'ISL'),
(724, 'ИСПАНИЯ', 'КОРОЛЕВСТВО ИСПАНИЯ', 'ES', 'ESP'),
(380, 'ИТАЛИЯ', 'ИТАЛЬЯНСКАЯ РЕСПУБЛИКА', 'IT', 'ITA'),
(887, 'ЙЕМЕН', 'ЙЕМЕНСКАЯ РЕСПУБЛИКА', 'YE', 'YEM'),
(132, 'КАБО-ВЕРДЕ', 'РЕСПУБЛИКА КАБО-ВЕРДЕ', 'CV', 'CPV'),
(398, 'КАЗАХСТАН', 'РЕСПУБЛИКА КАЗАХСТАН', 'KZ', 'KAZ'),
(136, 'КАЙМАН', 'ОСТРОВА КАЙМАН', 'KY', 'CYM'),
(116, 'КАМБОДЖА', 'КОРОЛЕВСТВО КАМБОДЖА', 'KH', 'KHM'),
(120, 'КАМЕРУН', 'РЕСПУБЛИКА КАМЕРУН', 'CM', 'CMR'),
(124, 'КАНАДА', 'КАНАДА', 'CA', 'CAN'),
(634, 'КАТАР', 'ГОСУДАРСТВО КАТАР', 'QA', 'QAT'),
(404, 'КЕНИЯ', 'РЕСПУБЛИКА КЕНИЯ', 'KE', 'KEN'),
(196, 'КИПР', 'РЕСПУБЛИКА КИПР', 'CY', 'CYP'),
(296, 'КИРИБАТИ', 'РЕСПУБЛИКА КИРИБАТИ', 'KI', 'KIR'),
(156, 'КИТАЙ', 'КИТАЙСКАЯ НАРОДНАЯ РЕСПУБЛИКА (КНР)', 'CN', 'CHN'),
(166, 'КОКОСОВЫЕ О-ВА', 'КОКОСОВЫЕ (КИЛИНГ) ОСТРОВА', 'CC', 'CCK'),
(170, 'КОЛУМБИЯ', 'РЕСПУБЛИКА КОЛУМБИЯ', 'CO', 'COL'),
(174, 'КОМОРЫ', 'СОЮЗ КОМОРЫ', 'KM', 'COM'),
(178, 'КОНГО', 'РЕСПУБЛИКА КОНГО', 'CG', 'COG'),
(180, 'КОНГО', 'ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА КОНГО', 'CD', 'COD'),
(410, 'КОРЕЯ', 'РЕСПУБЛИКА КОРЕЯ', 'KR', 'KOR'),
(408, 'КОРЕЯ (КНДР)', 'КОРЕЙСКАЯ НАРОДНО-ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА', 'KP', 'PRK'),
(188, 'КОСТА-РИКА', 'РЕСПУБЛИКА КОСТА-РИКА', 'CR', 'CRI'),
(384, 'КОТ Д\'ИВУАР', 'РЕСПУБЛИКА КОТ Д\'ИВУАР', 'CI', 'CIV'),
(192, 'КУБА', 'РЕСПУБЛИКА КУБА', 'CU', 'CUB'),
(414, 'КУВЕЙТ', 'ГОСУДАРСТВО КУВЕЙТ', 'KW', 'KWT'),
(417, 'КЫРГЫЗСТАН', 'РЕСПУБЛИКА КЫРГЫЗСТАН', 'KG', 'KGZ'),
(418, 'ЛАОС', 'ЛАОССКАЯ НАРОДНО-ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА', 'LA', 'LAO'),
(428, 'ЛАТВИЯ', 'ЛАТВИЙСКАЯ РЕСПУБЛИКА', 'LV', 'LVA'),
(426, 'ЛЕСОТО', 'КОРОЛЕВСТВО ЛЕСОТО', 'LS', 'LSO'),
(430, 'ЛИБЕРИЯ', 'РЕСПУБЛИКА ЛИБЕРИЯ', 'LR', 'LBR'),
(422, 'ЛИВАН', 'ЛИВАНСКАЯ РЕСПУБЛИКА', 'LB', 'LBN'),
(434, 'ЛИВИЯ', 'СОЦИАЛИСТИЧЕСКАЯ НАРОДНАЯ ЛИВИЙСКАЯ АРАБСКАЯ ДЖАМАХИРИЯ', 'LY', 'LBY'),
(440, 'ЛИТВА', 'ЛИТОВСКАЯ РЕСПУБЛИКА', 'LT', 'LTU'),
(438, 'ЛИХТЕНШТЕЙН', 'КНЯЖЕСТВО ЛИХТЕНШТЕЙН', 'LI', 'LIE'),
(442, 'ЛЮКСЕМБУРГ', 'ВЕЛИКОЕ ГЕРЦОГСТВО ЛЮКСЕМБУРГ', 'LU', 'LUX'),
(480, 'МАВРИКИЙ', 'РЕСПУБЛИКА МАВРИКИЙ', 'MU', 'MUS'),
(478, 'МАВРИТАНИЯ', 'ИСЛАМСКАЯ РЕСПУБЛИКА МАВРИТАНИЯ', 'MR', 'MRT'),
(450, 'МАДАГАСКАР', 'ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА МАДАГАСКАР', 'MG', 'MDG'),
(175, 'МАЙОТТА', 'МАЙОТТА', 'YT', 'MYT'),
(446, 'МАКАО', 'СПЕЦИАЛЬНЫЙ АДМИНИСТРАТИВНЫЙ РЕГИОН КИТАЯ МАКАО', 'MO', 'MAC'),
(807, 'МАКЕДОНИЯ', 'РЕСПУБЛИКА МАКЕДОНИЯ', 'MK', 'MKD'),
(454, 'МАЛАВИ', 'РЕСПУБЛИКА МАЛАВИ', 'MW', 'MWI'),
(458, 'МАЛАЙЗИЯ', 'МАЛАЙЗИЯ', 'MY', 'MYS'),
(466, 'МАЛИ', 'РЕСПУБЛИКА МАЛИ', 'ML', 'MLI'),
(581, 'МАЛЫЕ ТИХООК. ОСТРОВА (США)', 'МАЛЫЕ ТИХООКЕАНСКИЕ ОТДАЛЕННЫЕ ОСТРОВА (США)', 'UM', 'UMI'),
(462, 'МАЛЬДИВЫ', 'МАЛЬДИВСКАЯ РЕСПУБЛИКА', 'MV', 'MDV'),
(470, 'МАЛЬТА', 'РЕСПУБЛИКА МАЛЬТА', 'MT', 'MLT'),
(580, 'МАРИАНСКИЕ ОСТРОВА', 'СОДРУЖЕСТВО СЕВЕРНЫХ МАРИАНСКИХ ОСТРОВОВ', 'MP', 'MNP'),
(504, 'МАРОККО', 'КОРОЛЕВСТВО МАРОККО', 'MA', 'MAR'),
(474, 'МАРТИНИКА', 'МАРТИНИКА (ФР.)', 'MQ', 'MTQ'),
(584, 'МАРШАЛЛОВЫ ОСТРОВА', 'РЕСПУБЛИКА МАРШАЛЛОВЫ ОСТРОВА', 'MH', 'MHL'),
(484, 'МЕКСИКА', 'МЕКСИКАНСКИЕ СОЕДИНЕННЫЕ ШТАТЫ', 'MX', 'MEX'),
(583, 'МИКРОНЕЗИЯ', 'ФЕДЕРАТИВНЫЕ ШТАТЫ МИКРОНЕЗИИ', 'FM', 'FSM'),
(508, 'МОЗАМБИК', 'РЕСПУБЛИКА МОЗАМБИК', 'MZ', 'MOZ'),
(498, 'МОЛДОВА', 'РЕСПУБЛИКА МОЛДОВА', 'MD', 'MDA'),
(492, 'МОНАКО', 'КНЯЖЕСТВО МОНАКО', 'MC', 'MCO'),
(496, 'МОНГОЛИЯ', 'МОНГОЛИЯ', 'MN', 'MHG'),
(500, 'МОНТСЕРРАТ', 'МОНТСЕРРАТ (БРИТ.)', 'MS', 'MSR'),
(104, 'МЬЯНМА', 'СОЮЗ МЬЯНМА', 'MM', 'MMR'),
(516, 'НАМИБИЯ', 'РЕСПУБЛИКА НАМИБИЯ', 'NA', 'NAM'),
(520, 'НАУРУ', 'РЕСПУБЛИКА НАУРУ', 'NR', 'NRU'),
(524, 'НЕПАЛ', 'КОРОЛЕВСТВО НЕПАЛ', 'NP', 'NPL'),
(562, 'НИГЕР', 'РЕСПУБЛИКА НИГЕР', 'NE', 'NER'),
(566, 'НИГЕРИЯ', 'ФЕДЕРАТИВНАЯ РЕСПУБЛИКА НИГЕРИЯ', 'NG', 'NGA'),
(530, 'НИДЕРЛАНДСКИЕ АНТИЛЫ', 'НИДЕРЛАНДСКИЕ АНТИЛЫ', 'AN', 'ANT'),
(528, 'НИДЕРЛАНДЫ', 'КОРОЛЕВСТВО НИДЕРЛАНДЫ', 'NL', 'NLD'),
(558, 'НИКАРАГУА', 'РЕСПУБЛИКА НИКАРАГУА', 'NI', 'NIC'),
(570, 'НИУЭ', 'РЕСПУБЛИКА НИУЭ', 'NU', 'NIU'),
(554, 'НОВАЯ ЗЕЛАНДИЯ', 'НОВАЯ ЗЕЛАНДИЯ', 'NZ', 'NZL'),
(540, 'НОВАЯ КАЛЕДОНИЯ', 'НОВАЯ КАЛЕДОНИЯ', 'NC', 'NCL'),
(578, 'НОРВЕГИЯ', 'КОРОЛЕВСТВО НОРВЕГИЯ', 'NO', 'NOR'),
(574, 'НОРФОЛК', 'ОСТРОВ НОРФОЛК', 'NF', 'NFK'),
(784, 'ОБЪЕД. АРАБСКИЕ ЭМИРАТЫ', 'ОБЪЕДИНЕННЫЕ АРАБСКИЕ ЭМИРАТЫ', 'AE', 'ARE'),
(833, 'О-В МЭН', 'ОСТРОВ МЭН', 'IM', 'IMY'),
(162, 'О-В РОЖДЕСТВА', 'ОСТРОВ РОЖДЕСТВА (АВСТРАЛ.)', 'CX', 'CXR'),
(184, 'О-ВА КУКА', 'ОСТРОВА КУКА (Н. ЗЕЛ.)', 'СК', 'COK'),
(512, 'ОМАН', 'СУЛТАНАТ ОМАН', 'OM', 'OMN'),
(586, 'ПАКИСТАН', 'ИСЛАМСКАЯ РЕСПУБЛИКА ПАКИСТАН', 'PK', 'PAK'),
(585, 'ПАЛАУ', 'РЕСПУБЛИКА ПАЛАУ', 'PW', 'PLW'),
(275, 'ПАЛЕСТИНСКАЯ ТЕРРИТОРИЯ, ОККУПИРОВАННАЯ', 'ОККУПИРОВАННАЯ ПАЛЕСТИНСКАЯ ТЕРРИТОРИЯ', 'PS', 'PSE'),
(591, 'ПАНАМА', 'РЕСПУБЛИКА ПАНАМА', 'PA', 'PAN'),
(598, 'ПАПУА - НОВАЯ ГВИНЕЯ', 'ПАПУА - НОВАЯ ГВИНЕЯ', 'PG', 'PNG'),
(600, 'ПАРАГВАЙ', 'РЕСПУБЛИКА ПАРАГВАЙ', 'PY', 'PRY'),
(604, 'ПЕРУ', 'РЕСПУБЛИКА ПЕРУ', 'PE', 'PER'),
(612, 'ПИТКЭРН', 'ПИТКЭРН (БРИТ.)', 'PN', 'PCN'),
(616, 'ПОЛЬША', 'РЕСПУБЛИКА ПОЛЬША', 'PL', 'POL'),
(620, 'ПОРТУГАЛИЯ', 'ПОРТУГАЛЬСКАЯ РЕСПУБЛИКА', 'PT', 'PRT'),
(630, 'ПУЭРТО-РИКО', 'ПУЭРТО-РИКО', 'PR', 'PRI'),
(638, 'РЕЮНЬОН', 'РЕЮНЬОН', 'RE', 'REU'),
(643, 'РОССИЯ', 'РОССИЙСКАЯ ФЕДЕРАЦИЯ', 'RU', 'RUS'),
(646, 'РУАНДА', 'РУАНДИЙСКАЯ РЕСПУБЛИКА', 'RW', 'RWA'),
(642, 'РУМЫНИЯ', 'РУМЫНИЯ', 'RO', 'ROM'),
(882, 'САМОА', 'НЕЗАВИСИМОЕ ГОСУДАРСТВО САМОА', 'WS', 'WSM'),
(678, 'САН-ТОМЕ И ПРИНСИПИ', 'ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА САН-ТОМЕ И ПРИНСИПИ', 'ST', 'STR'),
(674, 'САН-МАРИНО', 'РЕСПУБЛИКА САН-МАРИНО', 'SM', 'SMR'),
(682, 'САУДОВСКАЯ АРАВИЯ', 'КОРОЛЕВСТВО САУДОВСКАЯ АРАВИЯ', 'SA', 'SAU'),
(748, 'СВАЗИЛЕНД', 'КОРОЛЕВСТВО СВАЗИЛЕНД', 'SZ', 'SWZ'),
(654, 'СВЯТАЯ ЕЛЕНА', 'ОСТРОВ СВЯТОЙ ЕЛЕНЫ (БРИТ.)', 'SH', 'SHN'),
(690, 'СЕЙШЕЛЫ', 'РЕСПУБЛИКА СЕЙШЕЛЫ', 'SC', 'SYC'),
(666, 'СЕН-ПЬЕР И МИКЕЛОН', 'СЕН-ПЬЕР И МИКЕЛОН (ФР.)', 'PM', 'SPM'),
(686, 'СЕНЕГАЛ', 'РЕСПУБЛИКА СЕНЕГАЛ', 'SN', 'SEN'),
(670, 'СЕНТ-ВИНСЕНТ И ГРЕНАДИНЫ', 'СЕНТ-ВИНСЕНТ И ГРЕНАДИНЫ', 'VC', 'VCT'),
(659, 'СЕНТ-КИТС И НЕВИС', 'ФЕДЕРАЦИЯ СЕНТ-КИТС (СЕНТ-КРИСТОФЕР) И НЕВИС', 'KN', 'KNA'),
(662, 'СЕНТ-ЛЮСИЯ', 'СЕНТ-ЛЮСИЯ', 'LC', 'LCA'),
(688, 'СЕРБИЯ', 'РЕСПУБЛИКА СЕРБИЯ', 'RS', 'SRB'),
(702, 'СИНГАПУР', 'РЕСПУБЛИКА СИНГАПУР', 'SG', 'SGP'),
(760, 'СИРИЯ', 'СИРИЙСКАЯ АРАБСКАЯ РЕСПУБЛИКА', 'SY', 'SYR'),
(703, 'СЛОВАКИЯ', 'СЛОВАЦКАЯ РЕСПУБЛИКА', 'SK', 'SVK'),
(705, 'СЛОВЕНИЯ', 'РЕСПУБЛИКА СЛОВЕНИЯ', 'SI', 'SVN'),
(826, 'СОЕДИНЕННОЕ КОРОЛЕВСТВО', 'СОЕДИНЕННОЕ КОРОЛЕВСТВО ВЕЛИКОБРИТАНИИ И СЕВЕРНОЙ ИРЛАНДИИ', 'GB', 'GBR'),
(90, 'СОЛОМОНОВЫ О-ВА', 'СОЛОМОНОВЫ ОСТРОВА', 'SB', 'SLB'),
(706, 'СОМАЛИ', 'СОМАЛИЙСКАЯ РЕСПУБЛИКА', 'SO', 'SOM'),
(736, 'СУДАН', 'РЕСПУБЛИКА СУДАН', 'SD', 'SDN'),
(740, 'СУРИНАМ', 'РЕСПУБЛИКА СУРИНАМ', 'SR', 'SUR'),
(840, 'США', 'СОЕДИНЕННЫЕ ШТАТЫ АМЕРИКИ', 'US', 'USA'),
(694, 'СЬЕРРА-ЛЕОНЕ', 'РЕСПУБЛИКА СЬЕРРА-ЛЕОНЕ', 'SL', 'SLE'),
(762, 'ТАДЖИКИСТАН', 'РЕСПУБЛИКА ТАДЖИКИСТАН', 'TJ', 'TJK'),
(764, 'ТАИЛАНД', 'КОРОЛЕВСТВО ТАИЛАНД', 'TH', 'THA'),
(158, 'ТАЙВАНЬ', 'ТАЙВАНЬ (В СОСТАВЕ КИТАЯ)', 'TW', 'TWN'),
(834, 'ТАНЗАНИЯ', 'ОБЪЕДИНЕННАЯ РЕСПУБЛИКА ТАНЗАНИЯ (ОРТ)', 'TZ', 'TZA'),
(796, 'ТЕРКС И КАЙКОС', 'ОСТРОВА ТЕРКС И КАЙКОС (БРИТ.)', 'TC', 'TCA'),
(626, 'ТИМОР-ЛЕСТЕ', 'ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА ТИМОР-ЛЕСТЕ', 'TP', 'TMP'),
(768, 'ТОГО', 'ТОГОЛЕЗСКАЯ РЕСПУБЛИКА', 'TG', 'TGO'),
(772, 'ТОКЕЛАУ', 'ТОКЕЛАУ (ЮНИОН) (Н. ЗЕЛ.)', 'TK', 'TKL'),
(776, 'ТОНГА', 'КОРОЛЕВСТВО ТОНГА', 'TO', 'TON'),
(780, 'ТРИНИДАД И ТОБАГО', 'РЕСПУБЛИКА ТРИНИДАД И ТОБАГО', 'TT', 'TTO'),
(798, 'ТУВАЛУ', 'ТУВАЛУ', 'TV', 'TUV'),
(788, 'ТУНИС', 'ТУНИССКАЯ РЕСПУБЛИКА', 'TN', 'TUN'),
(795, 'ТУРКМЕНИЯ', 'ТУРКМЕНИСТАН', 'TM', 'TKM'),
(792, 'ТУРЦИЯ', 'ТУРЕЦКАЯ РЕСПУБЛИКА', 'TR', 'TUR'),
(800, 'УГАНДА', 'РЕСПУБЛИКА УГАНДА', 'UG', 'UGA'),
(860, 'УЗБЕКИСТАН', 'РЕСПУБЛИКА УЗБЕКИСТАН', 'UZ', 'UZB'),
(804, 'УКРАИНА', 'УКРАИНА', 'UA', 'UKR'),
(876, 'УОЛЛИС И ФУТУНА', 'ОСТРОВА УОЛЛИС И ФУТУНА', 'WF', 'WLF'),
(858, 'УРУГВАЙ', 'ВОСТОЧНАЯ РЕСПУБЛИКА УРУГВАЙ', 'UY', 'URY'),
(234, 'ФАРЕРСКИЕ О-ВА', 'ФАРЕРСКИЕ ОСТРОВА (В СОСТАВЕ ДАНИИ)', 'FO', 'FRO'),
(242, 'ФИДЖИ', 'РЕСПУБЛИКА ОСТРОВОВ ФИДЖИ', 'FJ', 'FJI'),
(608, 'ФИЛИППИНЫ', 'РЕСПУБЛИКА ФИЛИППИНЫ', 'PH', 'PHL'),
(246, 'ФИНЛЯНДИЯ', 'ФИНЛЯНДСКАЯ РЕСПУБЛИКА', 'FI', 'FIN'),
(238, 'ФОЛКЛЕНДСКИЕ О-ВА', 'ФОЛКЛЕНДСКИЕ ОСТРОВА (МАЛЬВИНСКИЕ)', 'FK', 'FLK'),
(260, 'ФР. ЮЖНЫЕ ТЕРРИТОРИИ', 'ФРАНЦУЗСКИЕ ЮЖНЫЕ ТЕРРИТОРИИ (ФР.)', 'TF', 'ATF'),
(250, 'ФРАНЦИЯ', 'ФРАНЦУЗСКАЯ РЕСПУБЛИКА', 'FR', 'FRA'),
(258, 'ФРАНЦУЗСКАЯ ПОЛИНЕЗИЯ', 'ФРАНЦУЗСКАЯ ПОЛИНЕЗИЯ (ФР.)', 'PF', 'PYF'),
(334, 'ХЕРД И МАКДОНАЛЬД', 'ОСТРОВ ХЕРД И ОСТРОВА МАКДОНАЛЬД', 'HM', 'HMD'),
(191, 'ХОРВАТИЯ', 'РЕСПУБЛИКА ХОРВАТИЯ', 'HR', 'HRV'),
(140, 'ЦЕНТР. - АФР. РЕСПУБЛИКА', 'ЦЕНТРАЛЬНО-АФРИКАНСКАЯ РЕСПУБЛИКА (ЦАР)', 'CF', 'CAF'),
(148, 'ЧАД', 'РЕСПУБЛИКА ЧАД', 'TD', 'TCD'),
(499, 'ЧЕРНОГОРИЯ', 'РЕСПУБЛИКА ЧЕРНОГОРИЯ', 'ME', 'MNE'),
(203, 'ЧЕХИЯ', 'ЧЕШСКАЯ РЕСПУБЛИКА', 'CZ', 'CZE'),
(152, 'ЧИЛИ', 'РЕСПУБЛИКА ЧИЛИ', 'CL', 'CHL'),
(756, 'ШВЕЙЦАРИЯ', 'ШВЕЙЦАРСКАЯ КОНФЕДЕРАЦИЯ', 'CH', 'CHE'),
(752, 'ШВЕЦИЯ', 'КОРОЛЕВСТВО ШВЕЦИЯ', 'SE', 'SWE'),
(744, 'ШПИЦБЕРГЕН И ЯН-МАЙЕН', 'ШПИЦБЕРГЕН И ЯН-МАЙЕН (НОРВ.)', 'SJ', 'SJM'),
(144, 'ШРИ-ЛАНКА', 'ДЕМОКРАТИЧЕСКАЯ СОЦИАЛИСТИЧЕСКАЯ РЕСПУБЛИКА ШРИ-ЛАНКА', 'LK', 'LKA'),
(218, 'ЭКВАДОР', 'РЕСПУБЛИКА ЭКВАДОР', 'EC', 'ECU'),
(226, 'ЭКВАТОРИАЛЬНАЯ ГВИНЕЯ', 'РЕСПУБЛИКА ЭКВАТОРИАЛЬНАЯ ГВИНЕЯ', 'GQ', 'GNQ'),
(248, 'ЭЛАНДСКИЕ ОСТРОВА', 'ЭЛАНДСКИЕ ОСТРОВА', 'AX', 'ALA'),
(222, 'ЭЛЬ-САЛЬВАДОР', 'РЕСПУБЛИКА ЭЛ-САЛЬВАДОР', 'SV', 'SLV'),
(232, 'ЭРИТРЕЯ', 'ЭРИТРЕЯ', 'ER', 'ERI'),
(233, 'ЭСТОНИЯ', 'ЭСТОНСКАЯ РЕСПУБЛИКА', 'EE', 'EST'),
(231, 'ЭФИОПИЯ', 'ФЕДЕРАТИВНАЯ ДЕМОКРАТИЧЕСКАЯ  РЕСПУБЛИКА ЭФИОПИЯ', 'ET', 'ETH'),
(710, 'ЮЖНАЯ АФРИКА', 'ЮЖНО-АФРИКАНСКАЯ РЕСПУБЛИКА', 'ZA', 'ZAF'),
(239, 'ЮЖНАЯ ДЖОРДЖИЯ И ЮЖНЫЕ САНДВИЧЕВЫ ОСТРОВА', 'ЮЖНАЯ ДЖОРДЖИЯ И ЮЖНЫЕ САНДВИЧЕВЫ ОСТРОВА', 'GS', 'SGS'),
(388, 'ЯМАЙКА', 'ЯМАЙКА', 'JM', 'JAM'),
(392, 'ЯПОНИЯ', 'ЯПОНИЯ', 'JP', 'JPN');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
