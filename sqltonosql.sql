-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 01:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqltonosql`
--

-- --------------------------------------------------------

--
-- Table structure for table `autocomplate`
--

CREATE TABLE `autocomplate` (
  `id` int(11) NOT NULL,
  `auto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autocomplate`
--

INSERT INTO `autocomplate` (`id`, `auto`) VALUES
(1, '\"SELECT DISTINCT Estimation_method FROM roadmap3;\"'),
(2, '\"SELECT COUNT(DISTINCT Estimation_method_detailed) FROM roadmap3;\"'),
(3, '\"SELECT DISTINCT Estimation_method FROM roadmap3 WHERE Estimation_method = \'Counted\' AND \'Estimated\';\"'),
(4, '\"SELECT DISTINCT Estimation_method_detailed FROM roadmap3 WHERE roadmap3.Road LIKE \'%U\';\"'),
(5, '\"SELECT AADFYear, CP, Estimation_method, Road, RCat FROM roadmap3 ORDER BY Road ASC LIMIT 500;\"'),
(6, '\"SELECT MIN(AADFYear) FROM roadmap3 WHERE Estimation_method = \'Counted\' AND Estimation_method_detailed = \'Manual count\' GROUP BY Estimation_method;\"'),
(7, '\"SELECT MAX(AADFYear) FROM roadmap3 WHERE Estimation_method = \'Counted\' AND Estimation_method_detailed = \'Manual count\' GROUP BY Estimation_method;\"'),
(8, '\"SELECT AVG(AADFYear) FROM roadmap3 WHERE Estimation_method = \'Counted\' AND Estimation_method_detailed = \'Manual count\' GROUP BY Estimation_method;\"'),
(9, '\"SELECT SUM(*) as sum_FdBUS, AADFYear, CP, Estimation_method, Estimation_method_detailed FROM roadmap3 GROUP BY Estimation_method;\"'),
(10, '\"SELECT * FROM roadmap3 WHERE Estimation_method != True;\"'),
(11, '\"SELECT * FROM roadmap3 WHERE Estimation_method = True;\"'),
(12, '\"SELECT * FROM roadmap3 WHERE Estimation_method != false;\"'),
(13, '\"SELECT AADFYear, Estimation_method FROM roadmap1 WHERE Road IS NULL OR RCat IS NULL GROUP BY CP LIMIT 50;\"'),
(14, '\"SELECT COUNT(Road) as ROAD FROM roadmap3;\"'),
(15, '\"SELECT COUNT(Road) as totalroad, AADFYear as year FROM roadmap3 WHERE Estimation_method = \'Counted\';\"'),
(16, '\"SELECT COUNT(Road) FROM roadmap3 ORDER BY Estimation_method DESC LIMIT 100;\"'),
(17, '\"SELECT COUNT(*) FROM roadmap3 WHERE Estimation_method_detailed NOT LIKE \'Manual count%\';\"'),
(18, '\"SELECT COUNT(*) as count_Estimation_method FROM roadmap3;\"'),
(19, '\"SELECT COUNT(*) as count_Estimation_method FROM roadmap3 ORDER BY AADFYear;\"'),
(20, '\"SELECT COUNT(Estimation_method) FROM roadmap3 WHERE AADFYear = \'2000\' ORDER BY Road LIMIT 500;\"'),
(21, '\"SELECT COUNT(Estimation_method) FROM roadmap3 WHERE AADFYear = \'2000\' OR Road = \'A3111\' ORDER BY Road LIMIT 500;\"'),
(22, '\"SELECT COUNT(Estimation_method) FROM roadmap3 WHERE AADFYear = \'2000\' AND RCat = \'PR\' GROUP BY Estimation_method;\"'),
(23, '\"SELECT COUNT (*)  FROM roadmap3 WHERE roadmap5 LIKE  \'PR_%\' GROUP BY roadmap5 HAVING count > 100;\"'),
(24, '\"SELECT Estimation_method, Estimation_method_detailed, AVG(total_estimation_method), MIN(Estimation_method_detailed), MAX(Road), SUM(RCat) from roadmap5 GROUP BY Estimation_method, Estimation_method_detailed HAVING AVG(total_estimation_method) > MIN(Estimation_method_detailed);\"'),
(25, '\"SELECT Estimation_method, Estimation_method_detailed, AVG(total_estimation_method) as AVGTOTAL, MIN(Estimation_method_detailed) as MINESTIMATION, MAX(Road) as MAXROAD, SUM(RCat) as SUMRCAT FROM roadmap5 GROUP BY Estimation_method, Estimation_method_detailed HAVING AVGTOTAL > MINESTIMATION;\"'),
(26, '\"SELECT Estimation_method, Estimation_method_detailed, AVG(total_estimation_method) as AVGTOTAL, MIN(Estimation_method_detailed) as MINESTIMATION, MAX(Road) as MAXROAD, SUM(RCat) as SUMRCAT FROM roadmap5 GROUP BY Estimation_method, Estimation_method_detailed HAVING AVGTOTAL > MINESTIMATION ORDER BY AVGTOTAL DESC;\"'),
(27, '\"SELECT Estimation_method as Estimation_m, CP as id_CP, COUNT(*) FROM roadmap5 WHERE Estimation_method = \"Estimated\" GROUP BY Estimation_method, CP;\"'),
(28, '\"SELECT Estimation_method as Estimation_m, CP as id_CP, COUNT(*) as total_cp FROM roadmap5 WHERE Estimation_method = \"Estimated\" GROUP BY Estimation_method, CP;\"'),
(29, '\"SELECT Estimation_method as Estimation_m, CP as id_CP, COUNT(*) as total_cp FROM roadmap5 WHERE Estimation_method = \"Counted\" GROUP BY Estimation_method, CP;\"'),
(30, '\"SELECT * FROM roadmap5 WHERE CP BETWEEN 100 AND 1000;\"'),
(31, '\"SELECT * FROM roadmap5 WHERE CP BETWEEN 500 AND 1000 ORDER BY Road;\"'),
(32, '\"SELECT CP, COUNT(*) FROM roadmap5 WHERE CP BETWEEN 300 AND 1100;\"'),
(33, '\"SELECT CP, COUNT(*) FROM roadmap5 WHERE CP BETWEEN 200 AND 900 ORDER by Estimation_method LIMIT 100;\"'),
(34, '\"SELECT Estimation_method, Road, CP, AVG(CP) FROM roadmap5 WHERE CP BETWEEN 100 AND 600;\"'),
(35, '\"SELECT Estimation_method, Road, COUNT(CP)  FROM roadmap5 WHERE cp BETWEEN 500 AND 900 ORDER BY RCat ASC;\"'),
(36, '\"SELECT Estimation_method, Road, COUNT(CP)  FROM roadmap5 WHERE cp BETWEEN 500 AND 900 ORDER BY RCat DESC;\"'),
(37, '\"SELECT CP, COUNT(CP) FROM roadmap5 WHERE Estimation_method = \'Counted\' GROUP BY RCat HAVING COUNT(RCat) > 500;\"'),
(38, '\"SELECT COUNT(DISTINCT(AADFYear)) as aadfyear_count FROM roadmap5 GROUP BY RCat;\"'),
(39, '\"SELECT COUNT(DISTINCT(AADFYear)) as aadfyear_count, COUNT(Road) as countroad FROM roadmap5;\"'),
(40, '\"SELECT COUNT(CP), Estimation_method, Estimation_method_detailed FROM roadmap5 GROUP BY RCat;\"'),
(41, '\"SELECT COUNT(CP), COUNT(Road) as TotalRoad FROM roadmap5 GROUP BY RCat;\"'),
(42, '\"SELECT COUNT(CP), COUNT(Road) as TotalRoad FROM roadmap5 GROUP BY RCat LIMIT 100;\"'),
(43, '\"SELECT COUNT(CP), Estimation_method FROM roadmap5 GROUP BY RCat ORDER BY COUNT(CP) DESC;\"'),
(44, '\"SELECT COUNT(Road), Estimation_method FROM roadmap5 GROUP BY RCat HAVING COUNT(Road) > 50 ORDER BY COUNT(Road) DESC;\"'),
(45, '\"SELECT Estimation_method FROM roadmap5 WHERE Road = \'A3111\' AND CP < 100;\"'),
(46, '\"SELECT AADFYear, AVG(CP) FROM roadmap5 GROUP BY AADFYear ORDER BY AVG(CP) DESC;\"'),
(47, '\"SELECT AADFYear, AVG(CP) FROM roadmap5 GROUP BY AADFYear HAVING AVG(CP) > 500 ORDER BY AVG(CP) DESC;\"'),
(48, '\"SELECT RCat, COUNT(*) FROM roadmap5 WHERE RCat IN (\'PR\', \'TR\') GROUP BY RCat ORDER BY Road;\"'),
(49, '\"SELECT RCat, COUNT(*) FROM roadmap5 GROUP BY RCat HAVING RCat IN (\'PR\', \'TR\') ORDER BY RCat;\"'),
(50, '\"SELECT CP as CP, COUNT(*) as c FROM roadmap5 WHERE 1=1 GROUP BY RCat.CP HAVING c >= 500 and c <= 600;\"'),
(51, '\"SELECT AADFYear, CP FROM roadmap3 WHERE AADFYear <> \'2019\' OR Estimation_method <> Estimated;\"'),
(52, '\"SELECT DISTINCT Estimation_method FROM roadmap3 WHERE Estimation_method_detailed.Manual LIKE \'%Manual count\';\"'),
(53, '\"SELECT AADFYear, CP as CP, COUNT(*) as c FROM roadmap3 WHERE 1=1 GROUP BY road.CP HAVING c >= 2000 and c <= 60000 ORDER BY CP;\"'),
(54, '\"SELECT AADFYear, Road, COUNT(*) as r FROM roadmap3 WHERE 10=10 GROUP BY Rcat.Road HAVING COUNT(*) >= 2000 and COUNT(*) <=3000;\"'),
(55, '\"SELECT r.S_Ref_N as ref, r.RCategory as category, trest.roadmap2 as total, crest.totalref as total FROM roadmap6 as r INNER JOIN (SELECT S_Ref_N, COUNT(*) as totalpayments FROM table_address GROUP BY payment) as trest on r.payment = trest.payment INNER JOIN (SELECT S_Ref_N, category, COUNT(*) as totalref FROM roadmap6 GROUP BY S_Ref_N, category) as crest on r.S_Ref_N = crest.S_Ref_N and r.category = crest.category ORDER BY S_Ref_N ASC, r.category ASC limit 10;\"'),
(56, '\"SELECT r.S_Ref_N as ref, r.RCategory as category, crest.roadmap2 as total FROM roadmap2 as r INNER JOIN (SELECT S_Ref_N, category, COUNT(*) as totalref FROM roadmap2 GROUP BY S_Ref_N, category) as crest on r.S_Ref_N = crest.S_Ref_N AND r.category = crest.category ORDER BY r.S_Ref_N ASC, r.Road ASC limit 10;\"'),
(57, '\"SELECT r.S_Ref_N as ref, trest.totalref as total FROM roadmap2 as r INNER JOIN (SELECT S_Ref_N, COUNT(*) as totalref FROM roadmap6 GROUP BY S_Ref_N) as trest on r.S_Ref_N = trest.S_Ref_N order by trest.totalref ASC, S_Ref_N ASC limit 10;\"'),
(58, '\"SELECT t1.A_Junction as A_Junction1, t2.Road as road2 FROM roadmap2 as t1 INNER JOIN roadmap6 as t2 on t1.A_Junction1 = t2.Road and t1.RCat = t2.RCat;\"'),
(59, '\"SELECT t1.A_Junction as A_Junction1, t2.Road as road2 FROM roadmap2 as t1 INNER JOIN roadmap6 as t2 on t1.A_Junction1 = t2.Road;\"'),
(60, '\"SELECT t.RCategory, MAX(t.total) as maxi FROM (select r.S_Ref_N as ref, trest.totalref as total FROM roadmap6);\"'),
(61, '\"SELECT t.RCategory as category, MAX(t.total) as maxi, COUNT(*) as counti FROM roadmap6 as r INNER JOIN (SELECT r.S_Ref_N as ref, r.ONS_LA_Name as La_name, trest.totalref as total FROM roadmap4 as r INNER JOIN (SELECT S_Ref_N, COUNT(*) as totalref FROM roadmap6 GROUP BY S_Ref_N) as trest on r.cuisine = trest.S_Ref_N ORDER BY trest.totalref DESC, S_Ref_N ASC, ONS_LA_Name limit 10) as t on r.S_Ref_N = t.S_Ref_N and r.ONS_LA_Name = t.ONS_LA_Name GROUP BY t.S_Ref_N;\"'),
(62, '\"SELECT t.RCategory as category, MAX(t.total) as maxi, COUNT(*) as counti FROM roadmap6 as r INNER JOIN (SELECT r.S_Ref_N as ref, r.category as category, trest.totalref as total FROM roadmap4 as r INNER JOIN (SELECT S_Ref_N, COUNT(*) as totalref FROM roadmap6 GROUP BY S_Ref_N) as trest on r.cuisine = trest.S_Ref_N ORDER BY trest.totalref DESC, S_Ref_N ASC, ONS_LA_Name limit 10) as t on r.S_Ref_N = t.S_Ref_N and r.RCategory = t.RCategory GROUP BY t.RCategory;\"'),
(63, '\"SELECT t.RCategory as category, MAX(t.total) as maxi, COUNT(*) as counti FROM roadmap6 WHERE RCategory = \'PR\' ORDER BY category LIMIT 100;\"'),
(64, '\"SELECT t.RCategory as category, MAX(t.total) as maxi, COUNT(*) as counti FROM roadmap6 ORDER BY RCategory LIMIT 100;\"'),
(65, '\"SELECT t.RCategory as category, MAX(t.total) as maxi, COUNT(*) as counti FROM roadmap6 ORDER BY RCategory;\"'),
(66, '\"SELECT t.RCategory as category, t.S_Ref_N as ref, MAX(t.totalref) as maxitotal, COUNT(*) as coxi FROM roadmap6;\"'),
(67, '\"SELECT t.S_Ref_N as ref, MAX(t.total) as maxi, COUNT(*) as counti FROM roadmap6;\"'),
(68, '\"SELECT c.sub1.RCategory as pc, c.sub2.ONS_LA_Code,  COUNT(c.S_Ref_N) FROM roadmap6 as c WHERE c.sub1.RCategory LIKE \'PR%\' GROUP BY c.sub1.RCategory, c.sub2.ONS_LA_Code ORDER BY c.sub1.RCategory asc, c.sub2.ONS_LA_Code DESC;\"'),
(69, '\"SELECT c.RCategory as ac, c.ONS_LA_Code,  COUNT (c.S_Ref_N) FROM roadmap6 as c WHERE c.RCategory LIKE \'PR%\' GROUP BY c.RCategory, c.ONS_LA_Code ORDER BY c.RCategory ASC, c.ONS_LA_Code DESC;\"'),
(70, '\"SELECT S_Ref_N as nc, ONS_LA_Code,  COUNT (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY ONS_LA_Code, ONS_LA_Name ORDER BY ONS_LA_Name ASC, ONS_LA_Code DESC;\"'),
(71, '\"SELECT S_Ref_N as nc, ONS_LA_Code as cc,  COUNT (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY RCategory, ONS_LA_Code ORDER BY nc ASC, cc DESC;\"'),
(72, '\"SELECT S_Ref_N as nc, ONS_LA_Code as cc,  COUNT (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY RCategory, ONS_LA_Code ORDER BY COUNT (imprest_amount) DESC;\"'),
(73, '\"SELECT S_Ref_N as nc, AVG (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY RCategory ORDER BY AVG (imprest_amount) DESC;\"'),
(74, '\"SELECT S_Ref_N as nc, ONS_LA_Code as cc,  COUNT (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY ONS_LA_Code, RCategory ORDER BY ONS_LA_Code ASC, RCategory DESC;\"'),
(75, '\"SELECT S_Ref_N as nc, MIN (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY ONS_LA_Name ORDER BY MIN (imprest_amount) DESC;\"'),
(76, '\"SELECT S_Ref_N as nc, MAX (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY ONS_LA_Name ORDER BY MAX (imprest_amount) DESC;\"'),
(77, '\"SELECT S_Ref_N as nc, SUM (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY ONS_LA_Code ORDER BY c DESC;\"'),
(78, '\"SELECT S_Ref_N as nc, SUM (imprest_amount) as c  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY ONS_LA_Code ORDER BY SUM (imprest_amount) DESC;\"'),
(79, '\"SELECT S_Ref_N as nc, COUNT (imprest_amount) as c  FROM roadmap6 WHERE ONS_LA_Code LIKE \'PR%\' GROUP BY ONS_LA_Code ORDER BY COUNT (imprest_amount) DESC;\"'),
(80, '\"SELECT S_Ref_N, COUNT (imprest_amount)  FROM roadmap6 WHERE ONS_LA_Code LIKE \'PR%\' GROUP BY ONS_LA_Code ORDER BY COUNT (imprest_amount) DESC;\"'),
(81, '\"SELECT S_Ref_N, SUM (imprest_amount)  FROM roadmap6 WHERE RCategory LIKE \'PR%\' GROUP BY ONS_LA_Name;\"'),
(82, '\"SELECT c.sub1.RCat as c1, c.sub2.ONS_LA_Code as c2 FROM roadmap4 as c WHERE c.RCat IS NULL ORDER BY c.sub1.RCat ASC, c.sub2.ONS_LA_Code ASC LIMIT 5 offset 4;\"'),
(83, '\"SELECT c.RCat as c1, c.ONS_LA_Code as c2 FROM roadmap4 as c WHERE c.RCat IS NULL ORDER BY c.ONS_LA_Code ASC, c.ONS_LA_Name ASC LIMIT 5 offset 4;\"'),
(84, '\"SELECT c.RCat as c1, c.ONS_LA_Code FROM roadmap4 as c WHERE c.RCat IS NOT NULL;\"'),
(85, '\"SELECT c.RCat as c1, c.ONS_LA_Code FROM roadmap4 as c WHERE c.RCat IS NULL;\"'),
(86, '\"SELECT c.RCat, c.ONS_LA_Code FROM roadmap4 as c WHERE c.RCat IS NULL;\"'),
(87, '\"SELECT RCat as c1, ONS_LA_Code as c2 FROM roadmap4 WHERE CP IS NULL ORDER BY RCat ASC, ONS_LA_Code ASC offset 4;\"'),
(88, '\"SELECT RCat as c1, ONS_LA_Name as c2 FROM roadmap4 WHERE CP IS NULL ORDER BY RCat ASC, ONS_LA_Code ASC LIMIT 5;\"'),
(89, '\"SELECT RCat as c1, ONS_LA_Name as c2 FROM roadmap4 WHERE RCat IS NULL ORDER BY ONS_LA_Name ASC, ONS_LA_Code ASC LIMIT 5 offset 4;\"'),
(90, '\"SELECT RCat as c1, ONS_LA_Name as c2 FROM roadmap4 WHERE RCat IS NULL ORDER BY ONS_LA_Name ASC, ONS_LA_Name ASC;\"'),
(91, '\"SELECT RCat as c1, ONS_LA_Name FROM roadmap4 WHERE RCat IS NULL ORDER BY RCat ASC, ONS_LA_Name;\"'),
(92, '\"SELECT RCat as c1, ONS_LA_Name FROM roadmap4 WHERE RCat IS NULL ORDER BY RCat ASC;\"'),
(93, '\"SELECT RCat as c1, ONS_LA_Name as c2 FROM roadmap5 WHERE RCat IS NULL AND ONS_LA_Name = \'Nottinghamshire\';\"'),
(94, '\"SELECT RCat as c1, ONS_LA_Name as c2 FROM roadmap5 WHERE RCat IS NULL;\"'),
(95, '\"SELECT RCat as c1, ONS_LA_Name FROM roadmap5 WHERE RCat IS NULL AND ONS_LA_Name = \'Nottinghamshire\';\"'),
(96, '\"SELECT RCat as c1, ONS_LA_Name FROM roadmap5 WHERE RCat IS NULL;\"'),
(97, '\"SELECT CP.RCat, COUNT(*) as countcat FROM roadmap5 WHERE 5=5 GROUP BY CP.RCat HAVING COUNT(*) = COUNT(*);\"'),
(98, '\"SELECT CP.RCat, COUNT(*) as countcat FROM roadmap5 GROUP BY CP.RCat HAVING COUNT(*) = COUNT(*);\"'),
(99, '\"SELECT CP.RCat, COUNT(*) as countcat FROM roadmap5 GROUP BY CP.RCat HAVING countcat > 5;\"'),
(100, '\"SELECT CP as CP, COUNT(*) as c FROM roadmap5 WHERE 1=1 GROUP BY RCat.CP HAVING c >= 500 and c <= 600;\"'),
(101, '\"SELECT RCat, COUNT(*) FROM roadmap5 GROUP BY RCat HAVING RCat IN (\'PR\', \'TR\') ORDER BY RCat;\"'),
(102, '\"SELECT RCat, COUNT(*) FROM roadmap5 WHERE RCat IN (\'PR\', \'TR\') GROUP BY RCat ORDER BY Road;\"'),
(103, '\"SELECT AADFYear, Estimation_method FROM roadmap1 WHERE Road IS NULL OR RCat IS NULL LIMIT 50;\"'),
(104, '\"SELECT AADFYear, AVG(CP) FROM roadmap3 GROUP BY AADFYear ORDER BY AVG(CP) DESC;\"'),
(105, '\"SELECT Estimation_method FROM roadmap5 WHERE Road = \'A3111\' AND CP < 100;\"'),
(106, '\"SELECT COUNT(Road), Estimation_method FROM roadmap5 GROUP BY RCat HAVING COUNT(Road) > 50 ORDER BY COUNT(Road) DESC;\"'),
(107, '\"SELECT COUNT(CP), Estimation_method FROM roadmap5 GROUP BY RCat ORDER BY COUNT(CP) DESC;\"'),
(108, '\"SELECT COUNT(CP), COUNT(Road) as TotalRoad FROM roadmap5 GROUP BY RCat LIMIT 100;\"'),
(109, '\"SELECT COUNT(CP), COUNT(Road) as TotalRoad FROM roadmap5 GROUP BY RCat;\"'),
(110, '\"SELECT COUNT(CP), Estimation_method, Estimation_method_detailed FROM roadmap5 GROUP BY RCat;\"'),
(111, '\"SELECT COUNT(DISTINCT(AADFYear)) as aadfyear_count, COUNT(Road) as countroad FROM roadmap5;\"'),
(112, '\"SELECT COUNT(DISTINCT(AADFYear)) as aadfyear_count FROM roadmap5 GROUP BY RCat;\"'),
(113, '\"SELECT CP, COUNT(CP) FROM roadmap5 WHERE Estimation_method = \'Counted\' GROUP BY RCat HAVING COUNT(RCat) > 500;\"'),
(114, '\"SELECT Estimation_method, Road, COUNT(CP)  FROM roadmap5 WHERE cp BETWEEN 500 AND 900 ORDER BY RCat DESC;\"'),
(115, '\"SELECT Estimation_method, Road, COUNT(CP)  FROM roadmap5 WHERE cp BETWEEN 500 AND 900 ORDER BY RCat ASC;\"'),
(116, '\"SELECT Estimation_method, Road, CP, AVG(CP) FROM roadmap5 WHERE CP BETWEEN 100 AND 600;\"'),
(117, '\"SELECT CP, COUNT(*) FROM roadmap5 WHERE CP BETWEEN 200 AND 900 ORDER by Estimation_method LIMIT 100;\"'),
(118, '\"SELECT CP, COUNT(*) FROM roadmap5 WHERE CP BETWEEN 300 AND 1100;\"'),
(119, '\"SELECT AADFYear, Estimation_method FROM roadmap1 WHERE Road IS NULL AND RCat IS NULL ORDER BY CP LIMIT 50;\"'),
(120, '\"SELECT AADFYear, Estimation_method FROM roadmap1 WHERE Road IS NULL OR RCat IS NULL GROUP BY CP LIMIT 50;\"'),
(121, '\"SELECT Estimation_method as Estimation_m, CP as id_CP, COUNT(*) as total_cp FROM roadmap5 WHERE Estimation_method = \"Counted\" GROUP BY Estimation_method, CP;\"'),
(122, '\"SELECT Estimation_method as Estimation_m, CP as id_CP, COUNT(*) as total_cp FROM roadmap5 WHERE Estimation_method = \"Estimated\" GROUP BY Estimation_method, CP;\"'),
(123, '\"SELECT Estimation_method as Estimation_m, CP as id_CP, COUNT(*) FROM roadmap5 WHERE Estimation_method = \"Estimated\" GROUP BY Estimation_method, CP;\"'),
(124, '\"SELECT Estimation_method, Estimation_method_detailed, AVG(total_estimation_method) as AVGTOTAL, MIN(Estimation_method_detailed) as MINESTIMATION, MAX(Road) as MAXROAD, SUM(RCat) as SUMRCAT FROM roadmap5 GROUP BY Estimation_method, Estimation_method_detailed HAVING AVGTOTAL > MINESTIMATION ORDER BY AVGTOTAL DESC;\"'),
(125, '\"SELECT Estimation_method, Estimation_method_detailed, AVG(total_estimation_method) as AVGTOTAL, MIN(Estimation_method_detailed) as MINESTIMATION, MAX(Road) as MAXROAD, SUM(RCat) as SUMRCAT FROM roadmap5 GROUP BY Estimation_method, Estimation_method_detailed HAVING AVGTOTAL > MINESTIMATION;\"'),
(126, '\"SELECT Estimation_method, Estimation_method_detailed, AVG(total_estimation_method), MIN(Estimation_method_detailed), MAX(Road), SUM(RCat) from roadmap5 GROUP BY Estimation_method, Estimation_method_detailed HAVING AVG(total_estimation_method) > MIN(Estimation_method_detailed);\"'),
(127, '\"SELECT COUNT (*)  FROM roadmap3 WHERE roadmap5 LIKE  \'PR_%\' GROUP BY roadmap5 HAVING count > 100;\"'),
(128, '\"SELECT COUNT(Estimation_method) FROM roadmap3 WHERE AADFYear = \'2000\' AND RCat = \'PR\' GROUP BY Estimation_method;\"'),
(129, '\"SELECT COUNT(Estimation_method) FROM roadmap3 WHERE AADFYear = \'2000\' OR Road = \'A3111\' ORDER BY Road LIMIT 500;\"'),
(130, '\"SELECT COUNT(Estimation_method) FROM roadmap3 WHERE AADFYear = \'2000\' ORDER BY Road LIMIT 500;\"'),
(131, '\"SELECT COUNT(*) as count_Estimation_method FROM roadmap3 ORDER BY AADFYear;\"'),
(132, '\"SELECT COUNT(*) as count_Estimation_method FROM roadmap3;\"'),
(133, '\"SELECT COUNT(*) FROM roadmap3 WHERE Estimation_method_detailed NOT LIKE \'Manual count%\';\"'),
(134, '\"SELECT COUNT(Road) FROM roadmap3 ORDER BY Estimation_method DESC LIMIT 100;\"'),
(135, '\"SELECT COUNT(Road) as totalroad, AADFYear as year FROM roadmap3 WHERE Estimation_method = \'Counted\';\"'),
(136, '\"SELECT COUNT(Road) as totalroad FROM roadmap3;\"'),
(137, '\"SELECT * FROM roadmap4 WHERE S_Ref_E BETWEEN 1000 AND 2000 ORDER BY Road;\"'),
(138, '\"SELECT MIN(CP) FROM roadmap1;\"'),
(139, '\"SELECT AADFYear, Estimation_method FROM roadmap1 WHERE Road IS NULL OR RCat IS NULL GROUP BY CP LIMIT 50;\"'),
(140, '\"SELECT AADFYear, Estimation_method FROM roadmap1 WHERE Road IS NULL OR RCat IS NULL GROUP BY CP LIMIT 50;\"'),
(141, '\"SELECT SUM(*) as sum_FdBUS, AADFYear, CP, Estimation_method, Estimation_method_detailed FROM roadmap3  GROUP BY Estimation_method;\"'),
(142, '\"SELECT AVG(AADFYear) FROM roadmap3  WHERE Estimation_method = \'Counted\' AND Estimation_method_detailed = \'Manual count\' GROUP BY Estimation_method;\"'),
(143, '\"SELECT MAX(AADFYear) FROM roadmap3  WHERE Estimation_method = \'Counted\' AND Estimation_method_detailed = \'Manual count\' GROUP BY Estimation_method;\"'),
(144, '\"SELECT MIN(AADFYear) FROM roadmap3  WHERE Estimation_method = \'Counted\' AND Estimation_method_detailed = \'Manual count\' GROUP BY Estimation_method;\"'),
(145, '\"SELECT AVG(AADYear) FROM roadmap3 WHERE Estimation_method = ‘Counted’ ORDER BY Road LIMIT 100;\"'),
(146, '\"SELECT AADFYear, CP, Estimation_method, Road, RCat FROM roadmap3  ORDER BY Road ASC LIMIT 500;\"'),
(147, '\"SELECT S_Ref_E.RCat, COUNT(*) as countcat FROM roadmap1 GROUP BY S_Ref_E.RCat HAVING COUNT(*) = COUNT(*);\"'),
(148, '\"SELECT S_Ref_E.RCat, COUNT(*) as countcat FROM roadmap1 GROUP BY S_Ref_E.RCat HAVING countcat > 500;\"'),
(149, '\"SELECT COUNT (*)  FROM roadmap1 WHERE RCat LIKE  \'PR_%\' GROUP BY S_Ref_E HAVING count > 100;\"'),
(150, '\"SELECT COUNT(AADFYear) FROM roadmap1 WHERE Estimation_method = \'Estimated\' AND RCat = \'PR\' GROUP BY Road;\"'),
(151, '\"SELECT COUNT(AADFYear) FROM roadmap1 WHERE Estimation_method = \'Estimated\' OR RCat = \'PR\' ORDER BY Road LIMIT 100;\"'),
(152, '\"SELECT COUNT(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road LIMIT 100;\"'),
(153, '\"SELECT COUNT(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road;\"'),
(154, '\"SELECT COUNT(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' LIMIT 100;\"'),
(155, '\"SELECT COUNT(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\';\"'),
(156, '\"SELECT COUNT(CP) FROM roadmap1 ORDER BY RCat DESC LIMIT 100;\"'),
(157, '\"SELECT COUNT(S_Ref_E) as totalref, date_transaction as date FROM roadmap6 WHERE RCat = \'PR\';\"'),
(158, '\"SELECT COUNT(RCat) FROM roadmap1;\"'),
(159, '\"SELECT SUM(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' AND RCat = \'PR\' GROUP BY Road;\"'),
(160, '\"SELECT SUM(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' OR RCat = \'PR\' ORDER BY Road LIMIT 100;\"'),
(161, '\"SELECT SUM(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road LIMIT 100;\"'),
(162, '\"SELECT SUM(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road;\"'),
(163, '\"SELECT SUM(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' LIMIT 100;\"'),
(164, '\"SELECT SUM(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\';\"'),
(165, '\"SELECT SUM(*) as sum_cp_road FROM roadmap1 ORDER BY Road;\"'),
(166, '\"SELECT SUM(*) as sum_cp_road, RCat FROM roadmap1 GROUP BY Road;\"'),
(167, '\"SELECT SUM(*) as sum_cp_road FROM roadmap1;\"'),
(168, '\"SELECT SUM(CP) FROM roadmap1 ORDER BY Road DESC LIMIT 100;\"'),
(169, '\"SELECT SUM(CP) FROM roadmap1;\"'),
(170, '\"SELECT AVG(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' AND RCat = \'PR\' GROUP BY Road;\"'),
(171, '\"SELECT AVG(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' OR RCat = \'PR\' ORDER BY Road LIMIT 100;\"'),
(172, '\"SELECT AVG(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road LIMIT 100;\"'),
(173, '\"SELECT AVG(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road;\"'),
(174, '\"SELECT AVG(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' LIMIT 100;\"'),
(175, '\"SELECT AVG(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\';\"'),
(176, '\"SELECT AVG(*) as avg_cp_road FROM roadmap1 ORDER BY Estimation_method;\"'),
(177, '\"SELECT AVG(*) as avg_cp_road FROM roadmap1;\"'),
(178, '\"SELECT AVG(CP) FROM roadmap1 ORDER BY Road;\"'),
(179, '\"SELECT AVG(CP), RCat FROM roadmap1 GROUP BY Estimation_method;\"'),
(180, '\"SELECT AVG(CP) FROM roadmap1;\"'),
(181, '\"SELECT MAX(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' AND Road = \'A3111\' GROUP BY Road;\"'),
(182, '\"SELECT MAX(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' OR Road = \'A3111\' ORDER BY Road LIMIT 100;\"'),
(183, '\"SELECT MAX(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road LIMIT 100;\"'),
(184, '\"SELECT MAX(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road;\"'),
(185, '\"SELECT MAX(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' LIMIT 100;\"'),
(186, '\"SELECT MAX(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\';\"'),
(187, '\"SELECT MAX(*) as max_cp_road FROM roadmap1 ORDER BY Road;\"'),
(188, '\"SELECT MAX(*) as max_cp_road FROM roadmap1;\"'),
(189, '\"SELECT AADFYear, MAX(CP) as MAX_CP FROM roadmap1;\"'),
(190, '\"SELECT MAX(CP), Estimation_method FROM roadmap1  GROUP BY Road;\"'),
(191, '\"SELECT MAX(CP) FROM roadmap1;\"'),
(192, '\"SELECT MIN(CP) FROM roadmap1 WHERE Road = \'A3111\' AND RCat = \'PR\' GROUP BY Road;\"'),
(193, '\"SELECT MIN(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' OR Road = \'A3111\' ORDER BY Estimation_method LIMIT 100;\"'),
(194, '\"SELECT MIN(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road LIMIT 100;\"'),
(195, '\"SELECT MIN(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' ORDER BY Road;\"'),
(196, '\"SELECT MIN(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\' LIMIT 100;\"'),
(197, '\"SELECT MIN(CP) FROM roadmap1 WHERE Estimation_method = \'Estimated\';\"'),
(198, '\"SELECT MIN(*) as min_cp FROM roadmap1;\"'),
(199, '\"SELECT Estimation_method AS FULL_METHOD, Road AS Road_ORIGIN, RCat AS ROAD_CAT FROM roadmap1;\"'),
(200, '\"SELECT MIN(CP), RCat FROM roadmap1 GROUP BY Road;\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autocomplate`
--
ALTER TABLE `autocomplate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autocomplate`
--
ALTER TABLE `autocomplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
