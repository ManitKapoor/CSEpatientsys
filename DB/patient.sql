

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE `p_admin` (
  `doc_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `p_admin` (`doc_id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');



CREATE TABLE `p_app` (
  `app_id` int(11) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `d_id` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `date` varchar(120) NOT NULL,
  `encoder` varchar(50) NOT NULL,
  `datead` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `p_app` (`app_id`, `p_id`, `d_id`, `time`, `date`, `encoder`, `datead`) VALUES
(18, 'P14-1446715927', 'D13-1446715600', '11:00:00', '28-02-2010', 'ksthistj', '2015-11-05 04:06:28');

-- --------------------------------------------------------



CREATE TABLE `p_doctor` (
  `count_id` int(11) NOT NULL,
  `d_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `mi` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bdate` date NOT NULL,
  `brgy` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `postal` int(10) NOT NULL,
  `remark` text NOT NULL,
  `datead` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `p_doctor` (`count_id`, `d_id`, `fname`, `lname`, `mi`, `age`, `gender`, `status`, `bdate`, `brgy`, `city`, `prov`, `postal`, `remark`, `datead`) VALUES
(23, 'D13-1446715600', 'Pranshu', 'Shrivastava', '', 25, 'Male', 'Single', '1990-10-28', '', '', '', 11, '', '2015-11-05 01:27:10');



CREATE TABLE `p_patient` (
  `count_id` int(11) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `mi` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bdate` date NOT NULL,
  `brgy` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `postal` int(10) NOT NULL,
  `remark` text NOT NULL,
  `datead` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `p_patient` (`count_id`, `p_id`, `fname`, `lname`, `mi`, `age`, `gender`, `status`, `bdate`, `brgy`, `city`, `prov`, `postal`, `remark`, `datead`) VALUES
(11, 'P14-1446715927', 'Bhargav ', 'Maniar', '', 20, 'Female', 'Married', '1995-02-16', '', '', '', 21545, '', '2015-11-05 01:33:17');


DELIMITER $$
CREATE TRIGGER `removeforeing` BEFORE DELETE ON `p_patient` FOR EACH ROW BEGIN
    DELETE FROM p_app WHERE p_id = OLD.p_id;
 END
$$
DELIMITER ;


ALTER TABLE `p_admin`
  ADD PRIMARY KEY (`doc_id`);


ALTER TABLE `p_app`
  ADD PRIMARY KEY (`app_id`);


ALTER TABLE `p_doctor`
  ADD PRIMARY KEY (`count_id`),
  ADD UNIQUE KEY `d_id` (`d_id`);


ALTER TABLE `p_patient`
  ADD PRIMARY KEY (`count_id`),
  ADD UNIQUE KEY `p_id` (`p_id`),
  ADD UNIQUE KEY `p_id_2` (`p_id`);

ALTER TABLE `p_admin`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `p_app`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `p_doctor`
  MODIFY `count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `p_patient`
  MODIFY `count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

