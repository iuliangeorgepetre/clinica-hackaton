-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: nov. 08, 2019 la 09:09 AM
-- Versiune server: 10.1.37-MariaDB
-- Versiune PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `hackaton`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `medicamente_interzise`
--

CREATE TABLE `medicamente_interzise` (
  `id` int(5) NOT NULL,
  `nume` varchar(45) NOT NULL,
  `since` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `medicamente_interzise`
--

INSERT INTO `medicamente_interzise` (`id`, `nume`, `since`) VALUES
(1, 'piroxicam', '2017-08-16'),
(2, 'aulin', '2019-04-27'),
(3, 'stilbestrola', '0000-00-00'),
(4, 'thyreotom', '0000-00-00'),
(5, 'Alatrofloxacin', '0000-00-00'),
(6, 'Alclofenac', '2018-10-09'),
(7, 'Aminopyrine', '0000-00-00'),
(8, 'Amobarbital', '0000-00-00'),
(9, 'Amoproxan', '0000-00-00'),
(10, 'acetate', '0000-00-00'),
(11, 'Antrafenine', '0000-00-00'),
(12, 'Azaribine', '0000-00-00'),
(13, 'Bendazac', '0000-00-00'),
(14, 'Benoxaprofen', '0000-00-00'),
(15, 'Benzarone', '0000-00-00'),
(16, 'Benziodarone', '0000-00-00'),
(17, 'lacetanilanide', '0000-00-00'),
(18, 'Bezitramide', '0000-00-00'),
(19, 'Bithionol', '0000-00-00'),
(20, 'Broazolam', '0000-00-00'),
(21, 'Bromfenac', '0000-00-00'),
(22, 'Bucetin', '0000-00-00'),
(23, 'Buformin', '0000-00-00'),
(24, 'Bunamiodyl', '0000-00-00'),
(25, 'Canrenone', '0000-00-00'),
(26, 'Chlorphentermine', '0000-00-00'),
(27, 'Cianidanol', '0000-00-00'),
(28, 'Cinepazide', '0000-00-00'),
(29, 'Clioquinol', '0000-00-00'),
(30, 'Clobutinol', '0000-00-00'),
(31, 'Cloforex', '0000-00-00'),
(32, 'Clomacron', '0000-00-00'),
(33, 'Clometacin', '0000-00-00'),
(34, 'Cyclobarbital', '0000-00-00'),
(35, 'Cyclofenil', '0000-00-00'),
(36, 'Dantron', '0000-00-00'),
(37, 'Dexfenfluramine', '0000-00-00'),
(38, 'Diacetoxydiphenolisatin', '0000-00-00'),
(39, 'Diethylstilbestrol', '0000-00-00'),
(40, 'Difemerine', '0000-00-00'),
(41, 'Dihydrostreptomycin', '0000-00-00'),
(42, 'Dilevalol', '0000-00-00'),
(43, 'Dinoprostone', '0000-00-00'),
(44, 'iodide', '0000-00-00'),
(45, 'Dofetilide', '0000-00-00'),
(46, 'Ebrotidine', '0000-00-00'),
(47, 'Encainide', '0000-00-00'),
(48, 'carbamate', '0000-00-00'),
(49, 'Etretinate', '0000-00-00'),
(50, 'Exifone', '0000-00-00'),
(51, 'Fenclofenac', '0000-00-00'),
(52, 'Fenfluramine', '0000-00-00'),
(53, 'Fenoterol', '0000-00-00'),
(54, 'Feprazone', '0000-00-00'),
(55, 'Fipexide', '0000-00-00'),
(56, 'Flunitrazepam', '0000-00-00'),
(57, 'Flupirtine', '0000-00-00'),
(58, 'Gatifloxacin', '0000-00-00'),
(59, 'Glafenine', '0000-00-00'),
(60, 'Ibufenac', '0000-00-00'),
(61, 'Indalpine', '0000-00-00'),
(62, 'Indoprofen', '0000-00-00'),
(63, 'strophantin', '0000-00-00'),
(64, 'Iproniazid', '0000-00-00'),
(65, 'phosphate', '0000-00-00'),
(66, 'Isoxicam', '0000-00-00'),
(67, 'Kava', '0000-00-00'),
(68, 'Ketorolac', '0000-00-00'),
(69, 'tryptophan', '0000-00-00'),
(70, 'acetate', '0000-00-00'),
(71, 'Mebanazine', '0000-00-00'),
(72, 'Methandrostenolone', '0000-00-00'),
(73, 'Methapyrilene', '0000-00-00'),
(74, 'Methaqualone', '0000-00-00'),
(75, 'Metipranolol', '0000-00-00'),
(76, 'Metofoline', '0000-00-00'),
(77, 'Mibefradil', '0000-00-00'),
(78, 'Minaprine', '0000-00-00'),
(79, 'Moxisylyte', '0000-00-00'),
(80, 'Muzolimine', '0000-00-00'),
(81, 'Nefazodone', '0000-00-00'),
(82, 'in', '0000-00-00'),
(83, 'Nialamide', '0000-00-00'),
(84, 'Nikethamide', '0000-00-00'),
(85, 'Nitrefazole', '0000-00-00'),
(86, 'Nomifensine', '0000-00-00'),
(87, 'Oxeladin', '0000-00-00'),
(88, 'Oxyphenbutazone', '0000-00-00'),
(89, 'Ozogamicin', '0000-00-00'),
(90, 'Pentobarbital', '0000-00-00'),
(91, 'Pentylenetetrazol', '0000-00-00'),
(92, 'Perhexiline', '0000-00-00'),
(93, 'Phenacetin', '0000-00-00'),
(94, 'Buformin', '0000-00-00'),
(95, 'Phenolphthalein', '0000-00-00'),
(96, 'Phenoxypropazine', '0000-00-00'),
(97, 'Phenylbutazone', '0000-00-00'),
(98, 'Pirprofen', '0000-00-00'),
(99, 'Prenylamine', '0000-00-00'),
(100, 'Proglumide', '0000-00-00'),
(101, 'Pronethalol', '0000-00-00'),
(102, 'Propanidid', '0000-00-00'),
(103, 'Proxibarbal', '0000-00-00'),
(104, 'Pyrovalerone', '0000-00-00'),
(105, 'Remoxipride', '0000-00-00'),
(106, 'Sertindole', '0000-00-00'),
(107, 'Sitaxentan', '0000-00-00'),
(108, 'Sorivudine', '0000-00-00'),
(109, 'Sparfloxacin', '0000-00-00'),
(110, 'Sulfacarbamide', '0000-00-00'),
(111, 'Sulfamethoxydiazine', '0000-00-00'),
(112, 'Sulfamethoxypyridazine', '0000-00-00'),
(113, 'Suloctidil', '0000-00-00'),
(114, 'Suprofen', '0000-00-00'),
(115, 'Temafloxacin', '0000-00-00'),
(116, 'Temafloxacin', '0000-00-00'),
(117, 'Tetrazepam', '0000-00-00'),
(118, 'Thalidomide', '0000-00-00'),
(119, 'Thenalidine', '0000-00-00'),
(120, 'Thiobutabarbitone', '0000-00-00'),
(121, 'Triacetyldiphenolisatin', '0000-00-00'),
(122, 'Triazolam', '0000-00-00'),
(123, 'Triparanol', '0000-00-00'),
(124, 'Vincamine', '0000-00-00'),
(125, 'Zimelidine', '0000-00-00'),
(126, 'Zomepirac', '0000-00-00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `patologii`
--

CREATE TABLE `patologii` (
  `id` int(11) NOT NULL,
  `CNP` varchar(15) NOT NULL,
  `numePatologie` varchar(45) NOT NULL,
  `status` varchar(20) NOT NULL,
  `dataDiag` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `patologii`
--

INSERT INTO `patologii` (`id`, `CNP`, `numePatologie`, `status`, `dataDiag`) VALUES
(7, '10970613037893', 'i99-23', 'In Tratament', '2019-04-16'),
(8, '10970619038893', 'Pojar', 'Vindecat', '2019-04-01'),
(9, '2750717117928', 'Sequard', 'Vindecat', '2001-11-21'),
(10, '1700200356866', 'Sindrom Tietze', 'Vindecat', '2008-10-19'),
(11, '2750717117928', 'Cenuroza', 'Vindecat', '2008-08-18'),
(12, '2750717117928', 'Boala M', 'In tratament', '2008-11-19'),
(13, '2800910023284', 'Anemie pernicioasa', 'In tratament', '2018-11-27'),
(14, '1621203242324', 'Bagasoza', 'Vindecat', '2003-10-01'),
(15, '1570920225185', 'Robin', 'Vindecat', '2019-04-12'),
(16, '2750717117928', 'Boala Mcardle', 'Vindecat', '2010-11-21'),
(17, '1900509366216', 'Tetanos', 'In tratament', '2019-07-17'),
(18, '5080427011582', 'Boala Peyronie', 'Vindecat', '2017-00-29'),
(19, '2350324115253', 'Cancer mamar', 'Vindecat', '2010-04-09'),
(20, '2800910023284', 'Tenosinovita', 'In tratament', '2019-02-03'),
(21, '2270512261163', 'Sindrom Ramsay ', 'Vindecat', '2003-07-19'),
(22, '2270512261163', 'Boala M', 'In tratament', '2003-03-16'),
(23, '2350324115253', 'Schlatter', 'In tratament', '2008-01-02'),
(24, '2270512261163', 'Hemoragie cerebrala', 'Vindecat', '2001-05-27'),
(25, '6000314309535', 'Arteriopatie', 'Vindecat', '2018-03-08'),
(26, '1900509366216', 'Cancer de col', 'In tratament', '2009-12-12'),
(27, '1700200356866', 'Ateroscleroza', 'Vindecat', '2005-09-17'),
(28, '6000314309535', 'Najjar', 'Vindecat', '2008-08-25'),
(29, '1700200356866', 'Cancer esofagian', 'Vindecat', '2008-02-20'),
(30, '2270512261163', 'Sindrom Pancoast', 'In tratament', '2013-07-22'),
(31, '1700200356866', 'Hernie inghinala', 'Vindecat', '2012-04-08'),
(32, '5080427011582', 'Tuberculoza pulmonara', 'In tratament', '2015-12-12'),
(33, '5080427011582', 'Sindroame vasomotorii periferice', 'Vindecat', '2004-05-14'),
(34, '1700200356866', 'Boala Osgood', 'In tratament', '2003-06-17'),
(35, '1700200356866', 'Vitiligo', 'Vindecat', '2008-12-19'),
(36, '1900509366216', 'Anemie feripriva', 'In tratament', '2001-02-19'),
(37, '1621203242324', 'Sindrom Pierre ', 'Vindecat', '2019-07-00'),
(38, '2270512261163', 'Tuse convulsiva', 'In tratament', '2016-02-00'),
(39, '2800910023284', 'Sindrom Mallory', 'In tratament', '2012-11-21'),
(40, '2350324115253', 'Artrita', 'In tratament', '2016-03-20'),
(41, '2750717117928', 'Poliomielita', 'Vindecat', '2013-09-12'),
(42, '1700200356866', 'Insomnie', 'Vindecat', '2018-12-14'),
(43, '2270512261163', 'Demodicoza', 'In tratament', '2015-10-17'),
(44, '2270512261163', 'Torticolis spastic', 'Vindecat', '2011-03-02'),
(45, '2270512261163', 'Anchilostomiaza', 'In tratament', '2013-01-04'),
(46, '6000314309535', 'Tricocefaloza', 'Vindecat', '2003-00-08'),
(47, '5080427011582', 'Sindrom Kartagener', 'Vindecat', '2018-12-26'),
(48, '6000314309535', 'Boala Hodgkin', 'In tratament', '2010-06-26'),
(49, '2750717117928', 'Osteocondrodisplazie', 'In tratament', '2016-10-28'),
(50, '1700200356866', 'Anorexie', 'Vindecat', '2001-01-20'),
(51, '6000314309535', 'Hemofilie', 'Vindecat', '2001-06-27'),
(52, '5080427011582', 'Boala Kienbock', 'Vindecat', '2007-12-01'),
(53, '2270512261163', 'Alopecie', 'Vindecat', '2013-01-07'),
(54, '2270512261163', 'Cancer esofagian', 'In tratament', '2014-11-22'),
(55, '2350324115253', 'Hemoragie', 'In tratament', '2015-03-17'),
(56, '1900509366216', 'Pojar', 'Vindecat', '2013-01-27'),
(57, '6000314309535', 'Mononucleoza infec', 'In tratament', '2004-10-26'),
(58, '6000314309535', 'Prostatita', 'In tratament', '2001-10-25'),
(59, '6000526035278', 'Pojar', 'In Tratament', '2019-04-03'),
(60, '1700200356866', 'Pojar', 'In Tratament', '2019-05-15');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `simptome`
--

CREATE TABLE `simptome` (
  `id` int(50) NOT NULL,
  `simptom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `simptome`
--

INSERT INTO `simptome` (`id`, `simptom`) VALUES
(1, 'Abdomen acuta '),
(2, 'Accelerarea frecventa'),
(3, 'Acufene '),
(4, 'Afazie '),
(5, 'Ageuzia '),
(6, 'Alopecie '),
(7, 'Amenoreea '),
(8, 'Ame '),
(9, 'Amnezie '),
(10, 'Amor '),
(11, 'Amor '),
(12, 'Anemie '),
(13, 'Anomalii ale pupilelor '),
(14, 'Anorexie '),
(15, 'Anosmie '),
(16, 'Anurie '),
(17, 'Anxietate '),
(18, 'Apatie '),
(19, 'Apnee de somn '),
(20, 'Ariditate vaginala '),
(21, 'Aritmie cardiaca '),
(22, 'Arsura la stomac '),
(23, 'Artralgie '),
(24, 'Artralgie la cot '),
(25, 'Artralgie umar '),
(26, 'Ascita '),
(27, 'Ataxia '),
(28, 'Atrofie musculara '),
(29, 'Balonare '),
(30, 'Blefaroptoza '),
(31, 'Blefarospasm '),
(32, 'Borborisme '),
(33, 'Ca '),
(34, 'Catatonia '),
(35, 'Chemozis '),
(36, 'Cianoza '),
(37, 'Ciclu menstrual neregulat '),
(38, 'Claudica '),
(39, 'Coccigodinie '),
(40, 'Cocoa '),
(41, 'Colorarea pielii '),
(42, 'Confuzie '),
(43, 'Conjunctivita '),
(44, 'Constipa '),
(45, 'Consum excesiv de lichide '),
(46, 'Convulsii '),
(47, 'Co '),
(48, 'Crampe menstruale  '),
(49, 'Crampe musculare '),
(50, 'Deformarile piciorului '),
(51, 'Delir '),
(52, 'Demen '),
(53, 'Depigmentarea pielii '),
(54, 'Depresia '),
(55, 'Descuamarea pielii '),
(56, 'Deviere laterala a coloanei vertebrale '),
(57, 'Diaree '),
(58, 'Dificultate a vorbirii '),
(59, 'Dificultate  '),
(60, 'Dificultate  '),
(61, 'Dificultate la  '),
(62, 'Diplopie '),
(63, 'Disgeuzia '),
(64, 'Dispepsie '),
(65, 'Durere a penisului '),
(66, 'Durere cervicala '),
(67, 'Durere cronica '),
(68, 'Durere de cap '),
(69, 'Durere de din '),
(70, 'Durere de g '),
(71, 'Durere de ochi '),
(72, 'Durere de spate '),
(73, 'Durere de urechi '),
(74, 'Durere  '),
(75, 'Durere  '),
(76, 'Durere la nivelul degetelor piciorului '),
(77, 'Durere la nivelul  '),
(78, 'Durere la urinare Durere pelvina la '),
(79, 'Durere perinealaDurere precordiala '),
(80, 'Durere toracica asociata cu respira '),
(81, 'Durerea abdominala cronica '),
(82, 'Durerea de calc '),
(83, 'Durerea de s '),
(84, 'Durerea faciala '),
(85, 'Durerea membrului inferior '),
(86, 'Durerea membrului superior '),
(87, 'Durerea rectala '),
(88, 'Dureri generalizate '),
(89, 'Dureri vaginale '),
(90, 'Echimoza '),
(91, 'Ecolalia '),
(92, 'Eliminare involuntara de urina '),
(93, 'Eliminare necontrolata de materii fecale '),
(94, 'Emfizemul subcutanat '),
(95, 'Emisie involuntara de urina '),
(96, 'Epistaxis '),
(97, 'Epuizarea '),
(98, 'Erectie '),
(99, 'Eruptie '),
(100, 'Euforia '),
(101, 'Expectora '),
(102, 'Febra '),
(103, 'Febra acuta '),
(104, 'Febra '),
(105, 'Feminizarea '),
(106, 'Fenomen '),
(107, 'Raynaud '),
(108, 'Ficat marit '),
(109, 'Forma '),
(110, 'Fotofobia '),
(111, 'Frigiditate '),
(112, 'Frison '),
(113, 'Galactoree '),
(114, 'Ganglioni limfatici mari '),
(115, 'Ginecomastie '),
(116, 'Grea '),
(117, 'Hematemeza '),
(118, 'Hematurie '),
(119, 'Hemipareza '),
(120, 'Hemoragie rectala '),
(121, 'Hemoragii uterine disfunc '),
(122, 'Hemospermie '),
(123, 'Heterocromia oculara '),
(124, 'Hiperhidroza '),
(125, 'Hiperpigmentarea bucala '),
(126, 'Hipersaliva '),
(127, 'Hipersomnia '),
(128, 'Hipertensiune arterialaHipotensiune arteriala cron'),
(129, 'Hipotermia '),
(130, 'HipotonieHirsutism '),
(131, 'Icter '),
(132, 'Impoten '),
(133, 'Indigestia '),
(134, 'Infertilitatea '),
(135, 'Inflama '),
(136, 'Insomnia '),
(137, 'Ipohondria '),
(138, 'Labilitate emo '),
(139, 'Lacrimare  '),
(140, 'Le '),
(141, 'Limba albicioasa '),
(142, 'Limba paroasa '),
(143, 'Limba umflata '),
(144, 'Luarea  '),
(145, 'Mastodinia '),
(146, 'Matrea '),
(147, 'Metroragia '),
(148, 'Mic '),
(149, 'Mirosul anormal al urinei '),
(150, 'Mi '),
(151, 'Modificari ale unghiilor '),
(152, 'Monoplegia '),
(153, 'Nas  '),
(154, 'Nictalopia '),
(155, 'Nicturie '),
(156, 'Nistagmus '),
(157, 'Noduli mamari '),
(158, 'Oboseala musculara '),
(159, 'Opistotonus '),
(160, 'Orbire '),
(161, 'Paralizia '),
(162, 'Paranoia '),
(163, 'Picioare reci '),
(164, 'Pierderea sensibilita '),
(165, 'Pleoape cazute '),
(166, 'Pleurezia '),
(167, 'Pubertate  '),
(168, 'Pubertate precoce '),
(169, 'Puls asimetric '),
(170, 'Puls diminuat '),
(171, 'Puls neregulat '),
(172, 'Purpura '),
(173, 'Ragu '),
(174, 'Reac '),
(175, 'Reflux esofagian '),
(176, 'Respira '),
(177, 'Retardul mintal '),
(178, 'Retardul psihomotor '),
(179, 'Reten '),
(180, 'Rigiditate cervicala '),
(181, 'Ro '),
(182, 'Scaunele acolice '),
(183, 'Scotomul '),
(184, 'Secre '),
(185, 'Secre '),
(186, 'Sensibilitatea toracica '),
(187, 'Setea excesiva '),
(188, 'Sforait '),
(189, 'Sindromul picioarelor nelini '),
(190, 'Sinucidere '),
(191, 'Spasm facial '),
(192, 'Spasticitatea '),
(193, 'Steatoreea '),
(194, 'Stridor '),
(195, 'Suflul cardiac '),
(196, 'Surditatea '),
(197, 'Telangiectazii '),
(198, 'Tenesme vezicale '),
(199, 'Testicul tumefiat '),
(200, 'Tinitus '),
(201, 'Tremuraturi '),
(202, 'Tulburari de respira '),
(203, 'Tumefac '),
(204, 'Tumefac '),
(205, 'Tuse '),
(206, 'Umflarea picioarelor '),
(207, 'Unghii sfar '),
(208, 'Urina tulbureUrinare excesiva '),
(209, 'Urinari frecvente '),
(210, 'Vedere neclara '),
(211, 'Virilizare '),
(212, 'Vulvodinia '),
(213, 'Xeroftalmie '),
(214, 'Xerostomia ');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `stocmedicamente`
--

CREATE TABLE `stocmedicamente` (
  `id` int(5) NOT NULL,
  `nume` varchar(45) NOT NULL,
  `cantitate` int(5) NOT NULL,
  `doe` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `stocmedicamente`
--

INSERT INTO `stocmedicamente` (`id`, `nume`, `cantitate`, `doe`) VALUES
(1, 'aspirina', 100, '2020-04-06'),
(2, 'diazepam', 100, '2020-08-06'),
(3, 'morfina', 20, '2019-04-27'),
(4, 'aulin', 100, '2020-03-04'),
(5, 'piroxicam', 100, '2020-03-04'),
(6, 'Alclofenac', 12, '2019-04-27'),
(7, 'Diclofenac', 100, '2024-09-02'),
(8, 'expiratron', 200, '2017-09-26'),
(12, 'Alatrofloxacin', 0, '2012-04-23'),
(13, 'Alclofenac', 0, '2012-04-23'),
(14, 'Aminopyrine', 0, '2019-04-16'),
(15, 'Amobarbital', 0, '2018-12-09'),
(16, 'Amoproxan', 0, '2019-01-15'),
(17, 'acetate', 0, '2018-09-12'),
(18, 'Antrafenine', 0, '2018-09-14'),
(19, 'Azaribine', 0, '2019-03-23'),
(20, 'Bendazac', 0, '2019-03-30'),
(21, 'Benoxaprofen', 0, '2019-03-06'),
(22, 'Benzarone', 0, '2019-04-30'),
(23, 'Benziodarone', 0, '2019-07-12'),
(24, 'lacetanilanide', 0, '2019-01-07'),
(25, 'Bezitramide', 0, '2018-09-05'),
(26, 'Bithionol', 0, '2019-04-16'),
(27, 'Broazolam', 0, '2018-11-13'),
(28, 'Bromfenac', 0, '2018-08-22');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `cnp` varchar(15) NOT NULL,
  `nume` varchar(45) NOT NULL,
  `prenume` varchar(44) NOT NULL,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `tipuser` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `cnp`, `nume`, `prenume`, `user`, `pass`, `tipuser`) VALUES
(29, '5000613035348', 'Petre', 'George', 'iuliangeorgepetre', 'bucuresti99', 'medic'),
(30, '1700200356866', 'Preda ', 'Andrei', 'evelos12', 'parfum99', 'pacient'),
(31, '1900509366216', 'Baciu', 'Traian', 'traianciobanu', 'bucuresti99', 'pacient'),
(32, '5080427011582', 'Pantera', 'Roz', 'panteraroz99', 'bucuresti99', 'pacient'),
(33, '2270512261163', 'Petrescu', 'Mihai', 'petrescu.mihai', 'bucuresti99', 'pacient'),
(35, '1621203242324', 'Georgescu', 'Mihai', 'georgescumihai', 'bucuresti99', 'pacient'),
(36, '6000526035278', 'Terorista', 'Alexutza', 'alexutza', 'bucuresti99', 'pacient');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `medicamente_interzise`
--
ALTER TABLE `medicamente_interzise`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `patologii`
--
ALTER TABLE `patologii`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `simptome`
--
ALTER TABLE `simptome`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `stocmedicamente`
--
ALTER TABLE `stocmedicamente`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `medicamente_interzise`
--
ALTER TABLE `medicamente_interzise`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT pentru tabele `patologii`
--
ALTER TABLE `patologii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pentru tabele `simptome`
--
ALTER TABLE `simptome`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pentru tabele `stocmedicamente`
--
ALTER TABLE `stocmedicamente`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
