-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 05, 2013 at 04:57 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `internshipmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `batch` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `internshipRegiPeriod` bit(1) NOT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `administration`
--


-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `companyUserName` varchar(255) NOT NULL,
  `allowed` bit(1) NOT NULL,
  `companyAddress` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `companyTelephone` varchar(255) DEFAULT NULL,
  `companyWeb` varchar(255) DEFAULT NULL,
  `contactPerson` varchar(255) DEFAULT NULL,
  `noOfVacancies` varchar(255) DEFAULT NULL,
  `receiveCv` bit(1) NOT NULL,
  `state` bit(1) NOT NULL,
  `alternateCPerson` varchar(255) DEFAULT NULL,
  `contactperson1` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `aboutCompany` text,
  `alContactPerson` varchar(255) DEFAULT NULL,
  `alContactPersonEmail` varchar(255) DEFAULT NULL,
  `alContactPersonTelNo` varchar(255) DEFAULT NULL,
  `companyEmail` varchar(255) DEFAULT NULL,
  `contactPersonEmail` varchar(255) DEFAULT NULL,
  `contactPersonTelNo` varchar(255) DEFAULT NULL,
  `technologies` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`companyUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyUserName`, `allowed`, `companyAddress`, `companyName`, `companyTelephone`, `companyWeb`, `contactPerson`, `noOfVacancies`, `receiveCv`, `state`, `alternateCPerson`, `contactperson1`, `specification`, `aboutCompany`, `alContactPerson`, `alContactPersonEmail`, `alContactPersonTelNo`, `companyEmail`, `contactPersonEmail`, `contactPersonTelNo`, `technologies`) VALUES
('99x', b'0', '#65, Walukarama Road Colombo 03 SRI LANKA', '99X Technology', '0114721194', 'http://www.99xtechnology.com/', '99X Technology', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr Manoj Fernando', 'fernando@99x.lk', '0777896754', 'info@99x.lk', 'anura@99x.lk', '0711234543', 'Java, Android, C# , Testing and automation, Due diligence audit'),
('calcey', b'0', 'Calcey Technologies (Pvt) Ltd. #21, Seibel Avenue Colombo 05, 00500 Sri Lanka', 'Calcey technologies (pvt) Ltd', '0112827560', 'http://www.calcey.com/', 'Calcey technologies (pvt) Ltd', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr Lahiru Chamara', 'lahiru@calcey.com', '0712345678', 'info@calcey.com', 'himanka@calcey.com', '0712456789', 'Web, mobile ,cloud'),
('exilesoft', b'0', 'Exilesoft (Pvt) Ltd. 201, Sir James Peiris Mawatha Colombo 02 Sri Lanka', 'Exilesoft (Pvt) Ltd', '0112039006', 'http://www.exilesoft.com/', 'Exilesoft (Pvt) Ltd', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr Asoka Perera', 'asoka@exilesoft.com', '0756453342', 'info@exilesoft.com', 'thushara@exilesoft.com', '0711234543', 'Agile distributed team modelling,\r\nAgile design modelling,\r\nEngineering by DDD TDD BDD and FDD,\r\nTransparency of every day production,\r\nContinuous Delivery,\r\nWiki based collaboration platforms'),
('ifs', b'0', 'IFS Sri Lanka LTD and IFS RandD Ltd ,501, Galle Road ,Colombo 06, Colombo', 'IFS (pvt) Ltd', '0112336440', 'http://www.ifsworld.com/', 'IFS (pvt) Ltd', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr Sunil Dharshana ', 'sunil@ifs.com', '0112765689', 'info@ifs.com', 'nalin@ifs.com', '0112364401', 'Java, C , Mobile technology, C# , Web technologies'),
('mit', b'0', 'Millennium IT Software (Private) Limited 1, Millennium Drive,Malabe,Sri Lanka.', 'Millenium It ', '0112400000', 'http://www.milleniumit.com/main.html', 'Millenium It ', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr. Sugathadasa Alwis', 'alwis@mit.lk', '0786456734', 'info@millenniumit.com', 'ransara@mit.lk', '0711873456', 'C++ , Qt '),
('sampathit', b'0', 'Sampath IT Solutions, No 732, Maradana Road, Colombo 10, Sri Lanka', 'Sampath IT solutions', '0115738541', 'http://sits.lk/', 'Sampath IT solutions', NULL, b'0', b'0', NULL, NULL, NULL, NULL, '', '', '', 'sitsinfo@sits.lk', 'malith@sits.lk', '0775634567', 'Java , mobile technology, web '),
('unicorn', b'0', '21/8A 1/2 Level #2, Chandra Silva Mw, Pagoda Road, Nugegoda. Sri Lanka.', 'Unicorn solutions (pvt) Ltd', '0112811944', 'http://www.unicorn-solutions.com/', 'Unicorn solutions (pvt) Ltd', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr Kavindu Jayawardane', 'kavindu@unicorn-solutions.com', '0714567888', 'info@unicorn-solutions.com', 'amali@unicorn-solutions.com', '0715690911', 'Java, PHP, C#, System maintenace'),
('vesess', b'0', '27 B, Rosmead Place, Colombo 00700, Sri Lanka', 'Vesess (pvt) Ltd', '0112336440', 'http://vesess.com/', 'Vesess (pvt) Ltd', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr Viduranga Wijesooriya', 'viduranga@vesess.com', '0713456789', 'info@vesess.com', 'hewage@vesess.com', '0713452367', 'Java, PHP, AJAX, Javascript, '),
('virtusa', b'0', 'No: 752, Dr. Danister De Silva Mw, Dematagoda, Colombo 09', 'Virtusa  pvt Ltd', '0114605500', 'http://www.virtusa.com/', 'Virtusa  pvt Ltd', NULL, b'0', b'0', NULL, NULL, NULL, NULL, 'Mr Pabodha Rathnapriya ', 'prabodha@virtusa.com', '0745233212', 'inf0@virtusa.com', 'jgunasekera@virtusa.com', '9411470218', 'Java, C#, mobile , services, web technologies');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msgId` int(11) NOT NULL AUTO_INCREMENT,
  `checked` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `msgCategory` varchar(255) DEFAULT NULL,
  `receiveId` varchar(255) DEFAULT NULL,
  `senderId` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`msgId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msgId`, `checked`, `content`, `date`, `msgCategory`, `receiveId`, `senderId`, `subject`) VALUES
(1, NULL, '', '2013/11/04 15:05:46', NULL, 'admin', '114072L', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_response`
--

CREATE TABLE IF NOT EXISTS `message_response` (
  `responseMsgId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `msgId` int(11) NOT NULL,
  `senderId` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`responseMsgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message_response`
--


-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentUserName` varchar(255) NOT NULL,
  `alResult1` varchar(255) DEFAULT NULL,
  `alResult2` varchar(255) DEFAULT NULL,
  `alResult3` varchar(255) DEFAULT NULL,
  `alSubject1` varchar(255) DEFAULT NULL,
  `alSubject2` varchar(255) DEFAULT NULL,
  `alSubject3` varchar(255) DEFAULT NULL,
  `dateOfBirth` varchar(255) DEFAULT NULL,
  `digreeTitle` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `gpaSemester1` float NOT NULL,
  `gpaSemester2` float NOT NULL,
  `gpaSemester3` float NOT NULL,
  `maritalStatus` varchar(255) DEFAULT NULL,
  `mobile1` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `nameInFull` varchar(255) DEFAULT NULL,
  `nameWithInitials` varchar(255) DEFAULT NULL,
  `permanentAddress` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `yearOfAdmission` int(11) NOT NULL,
  `selected` bit(1) DEFAULT NULL,
  PRIMARY KEY (`studentUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--


-- --------------------------------------------------------

--
-- Table structure for table `student_company`
--

CREATE TABLE IF NOT EXISTS `student_company` (
  `state` varchar(255) DEFAULT NULL,
  `companyUserName` varchar(255) NOT NULL DEFAULT '',
  `studentUserName` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`companyUserName`,`studentUserName`),
  KEY `FK8B244A39AC437E2B` (`companyUserName`),
  KEY `FK8B244A3990A76BA7` (`studentUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_company`
--


-- --------------------------------------------------------

--
-- Table structure for table `student_complited_projects`
--

CREATE TABLE IF NOT EXISTS `student_complited_projects` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectDescription` varchar(255) DEFAULT NULL,
  `projectTitle` varchar(255) DEFAULT NULL,
  `projectYear` varchar(255) DEFAULT NULL,
  `studentUserName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`projectId`),
  KEY `FKC4DAFAD690A76BA7` (`studentUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `student_complited_projects`
--


-- --------------------------------------------------------

--
-- Table structure for table `student_other_qulification`
--

CREATE TABLE IF NOT EXISTS `student_other_qulification` (
  `otherQulificationId` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `studentUserName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`otherQulificationId`),
  KEY `FKEF199E4990A76BA7` (`studentUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `student_other_qulification`
--


-- --------------------------------------------------------

--
-- Table structure for table `student_professional_exp`
--

CREATE TABLE IF NOT EXISTS `student_professional_exp` (
  `professionalExpId` int(11) NOT NULL AUTO_INCREMENT,
  `briefDescription` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `workingPeriod` varchar(255) DEFAULT NULL,
  `studentUserName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`professionalExpId`),
  KEY `FKDFCC19A990A76BA7` (`studentUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `student_professional_exp`
--


-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `supportMessageId` int(11) NOT NULL AUTO_INCREMENT,
  `senderEmail` varchar(255) DEFAULT NULL,
  `senderMessage` varchar(255) DEFAULT NULL,
  `senderName` varchar(255) DEFAULT NULL,
  `senderUserName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supportMessageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `support`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` char(1) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `password`, `type`) VALUES
('99x', '202cb962ac59075b964b07152d234b70', 'c'),
('calcey', '202cb962ac59075b964b07152d234b70', 'c'),
('exilesoft', '202cb962ac59075b964b07152d234b70', 'c'),
('ifs', '202cb962ac59075b964b07152d234b70', 'c'),
('mit', '202cb962ac59075b964b07152d234b70', 'c'),
('sampathit', '202cb962ac59075b964b07152d234b70', 'c'),
('unicorn', '202cb962ac59075b964b07152d234b70', 'c'),
('vesess', '202cb962ac59075b964b07152d234b70', 'c'),
('virtusa', '202cb962ac59075b964b07152d234b70', 'c');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_company`
--
ALTER TABLE `student_company`
  ADD CONSTRAINT `FK8B244A3990A76BA7` FOREIGN KEY (`studentUserName`) REFERENCES `student` (`studentUserName`),
  ADD CONSTRAINT `FK8B244A39AC437E2B` FOREIGN KEY (`companyUserName`) REFERENCES `company` (`companyUserName`);

--
-- Constraints for table `student_complited_projects`
--
ALTER TABLE `student_complited_projects`
  ADD CONSTRAINT `FKC4DAFAD690A76BA7` FOREIGN KEY (`studentUserName`) REFERENCES `student` (`studentUserName`);

--
-- Constraints for table `student_other_qulification`
--
ALTER TABLE `student_other_qulification`
  ADD CONSTRAINT `FKEF199E4990A76BA7` FOREIGN KEY (`studentUserName`) REFERENCES `student` (`studentUserName`);

--
-- Constraints for table `student_professional_exp`
--
ALTER TABLE `student_professional_exp`
  ADD CONSTRAINT `FKDFCC19A990A76BA7` FOREIGN KEY (`studentUserName`) REFERENCES `student` (`studentUserName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
