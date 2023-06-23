-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 08:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`) VALUES
(1, 1, 1, 101, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `district_id`) VALUES
(1, 'Gampaha', 1),
(2, 'Ja-Ela', 1),
(3, 'Kalaniya', 1),
(4, 'Minuwangoda', 1),
(5, 'Negombo', 1),
(6, 'Wattala', 1),
(7, 'Colombo', 2),
(8, 'Dehiwala', 2),
(9, 'Hanwella', 2),
(10, 'Kollonawa', 2),
(11, 'Kotte', 2),
(12, 'Moratuwa', 2),
(13, 'Kaluthara', 3),
(14, 'Horana', 3),
(15, 'Aglawatta', 3),
(16, 'Ingiriya', 3),
(17, 'Panadura', 3),
(18, 'Walallavita', 3),
(19, 'Bulathsinhala', 3),
(20, 'Berualla', 3),
(21, 'Millaniya', 3),
(22, 'Bandaragama', 3),
(23, 'Dodangoda', 3),
(24, 'Millaniya', 3),
(25, 'Ampara', 4),
(26, 'Pottuvil', 4),
(27, 'Thirukkovila', 4),
(28, 'Akkaraipattu', 4),
(29, 'Lahugala', 4),
(30, 'Navithaveli', 4),
(31, 'Dehiattakandiya', 4),
(32, 'Mahaoya', 4),
(33, 'uhana', 4),
(34, 'Karativu', 4),
(35, 'Eragama', 4),
(36, 'Anuradhapura', 5),
(37, 'Mininthale', 5),
(38, 'Medawachchiya', 5),
(39, 'Rajanganaya', 5),
(40, 'Thalawa', 5),
(41, 'Palugaswewa', 5),
(42, 'Horowpothana', 5),
(43, 'Kahabithigollewa', 5),
(44, 'Thabuththegama', 5),
(45, 'Baddulla', 6),
(46, 'Bandarawella', 6),
(47, 'Haputale', 6),
(48, 'Passara', 6),
(49, 'Welimada', 6),
(50, 'Soranathota', 6),
(51, 'Mahiyanganaya', 6),
(52, 'Hali-Ela', 6),
(53, 'Ella', 6),
(54, 'Paranagama', 6),
(55, 'Halludumulla', 6),
(56, 'Batticalo', 7),
(57, 'Valachenai', 7),
(58, 'Kattankudy', 7),
(59, 'Kiran', 7),
(60, 'Hambantota', 8),
(61, 'Ambalantota', 8),
(62, 'Tangalle', 8),
(63, 'Thissamaharama', 8),
(64, 'Sooriyawewa', 8),
(65, 'Katuwana', 8),
(66, 'Wallasmulla', 8),
(67, 'Agunakolapelessa', 8),
(68, 'Lunugamvehera', 8),
(69, 'Belliatta', 8),
(70, 'Jaffna', 9),
(71, 'Nallur', 9),
(72, 'Kopay', 9),
(73, 'Kandy', 10),
(74, 'Akurana', 10),
(75, 'Delthota', 10),
(76, 'Doluwa', 10),
(77, 'Harispattuwa', 10),
(78, 'Kundasale', 10),
(79, 'Poojapitiya', 10),
(80, 'Thumpana', 10),
(81, 'Udunuwara', 10),
(82, 'Yatinuwara', 10),
(83, 'Kegalle', 11),
(84, 'Galigamuwa', 11),
(85, 'Dehiovita', 11),
(86, 'Warakapola', 11),
(87, 'Yatiyanthota', 11),
(88, 'Galle', 12),
(89, 'Akmeemana', 12),
(90, 'Ambalangoda', 12),
(91, 'Baddegama', 12),
(92, 'Balapitya', 12),
(93, 'Benthota', 12),
(94, 'Elpitiya', 12),
(95, 'Gonapinuwala', 12),
(96, 'Nagoda', 12),
(97, 'Hikkaduwa', 12),
(98, 'Walivita', 12),
(99, 'Karandeniya', 12),
(100, 'Imaduwa', 12),
(101, 'Habaraduwa', 12),
(102, 'Killinochchiya', 13),
(103, 'Kurunegala', 14),
(104, 'Alawwa', 14),
(105, 'Abanpola', 14),
(106, 'Bingiriya', 14),
(107, 'Glgamuwa', 14),
(108, 'Ibbagauwa', 14),
(109, 'Kuliyapitiya', 14),
(110, 'Mahawa', 14),
(111, 'Maspotha', 14),
(112, 'Mallawapitiya', 14),
(113, 'Mawathagama', 14),
(114, 'Narammal', 14),
(115, 'Nikaweratiya', 14),
(116, 'Paduwasnuwara', 14),
(117, 'Pannala', 14),
(118, 'Polgahawela', 14),
(119, 'Polpithigama', 14),
(120, 'Rideegama', 14),
(121, 'Wariyapola', 14),
(122, 'Mannarama', 15),
(123, 'Mathale', 16);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `province`, `district`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(101, 'Wijewardena Ranathunga', 'i-wonder , Sri Lanka', 'Western Province', 'Gampaha', 'Gampaha', '0124575563', 'monitizeMore.lk', 'hansie.lakshika@gmail.com', 'NmE3Y2I2OGRhYTk5ZjIyYTkxOTE3NjUwMjQzY2ZlYTY=', 'MonetizeMore builds industry leading ad technology that is seen by more than 300M people per month. The company has been running for 8 years achieving consistent double digit growth each year with a team of 80+ team members spread across the globe.\r\n', '6086e76f47b6f.png', '2021-04-26 15:43:16', 1),
(102, 'Maheem Perera', 'Reach It Right (Pvt) Ltd , Sri Lanka', 'Central Province', 'Colombo', 'Colombo', '0124579963', 'reach23.lk', 'reach@gmail.com', 'ZDc0YTNmZjI4OGZlNjRkNGYyZjFhNzIwMTkzMjM4Mzg=', '\"REACH IT RIGHT is a full fledged digital marketing agency and consultancy firm that looks through YOUR vision and designs your marketing strategies exclusively to fit your audience and excel your competitors. We carry out extensive research before we dra', '6086f0815d04a.png', '2021-04-26 16:55:29', 1),
(103, 'Michelle De Soisa', 'Wasp Technologies, Sri Lanka', '', 'Colombo', 'Colombo', '1023654478', 'wasptech.com', 'lakshika@gmail.com', 'ZDg3NGFiYWUxNDE3OGY1YmZjZGE2NDg3MDA2OWJiNTc=', 'Wasp Technologies is a fast emerging company in Sri Lanka which provides services to local and foreign markets. We specialize in Web Development, Mobile Application Development, Software Development and Digital Marketing.', '60878bd2b0f6e.png', '2021-04-27 03:58:10', 1),
(104, 'Jone Homes', 'BlackSwan Technologies, Sri Lanka', '', 'Gampaha', 'Ja Ela', '0754862214', 'black.lk', 'han@gmail.com', 'NTgxNDEzOTFjNWViZDMxZTEyODg1OTE3ZGY0Y2VmYjM=', 'BlackSwan Technologies is seeking a brilliant, creative and highly motivated UI/UX Engineer to combine the art of design with the art of programming. Responsibilities will include the translation of the UI/UX design wireframes to actual code that will pro', '6087935796fc7.png', '2021-04-27 04:24:21', 1),
(105, 'Billy Kumar', 'Daraz', '', 'Colombo', 'Colombo', '0154785524', 'darazd.com', 'lak@gmail.com', 'Njk3NjY1MDI4MGZkZTlhNmUxYWY1YzJlNTQxNjRjZWQ=', 'Daraz is one of Sri Lanka’s biggest e-commerce platforms that offers users a virtual shopping mall where you can browse and shop through more than 2 million products of assorted categories! Whether you’re looking for the latest gadgets or tech devices or ', '60879e742ab96.png', '2021-04-27 05:17:40', 1),
(106, 'Soniya Weerasinhe', 'Zebra Technologies, Sri Lanka', '', 'Colombo', 'Colombo', '0124579632', 'zebra.lk', 'gunawardena@gmail.com', 'YmI3YTFhZjc1ZjhjZmM1YjlhNzVkODU3ZWQ3NzQxYTk=', 'Zebra was incorporated in 1969 as Data Specialties Incorporated, a manufacturer of high-speed electromechanical products. The company changed its focus to specialty on-demand labeling and ticketing systems in 1982 and became Zebra Technologies Corporation', '6087a416d520d.png', '2021-04-27 05:41:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `province_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `province_id`) VALUES
(1, 'Kandy', 1),
(2, 'Matale', 1),
(3, 'Nuwara Eliya', 1),
(4, 'Ampara', 2),
(5, 'Batticaloa', 2),
(6, 'Trincomalee', 2),
(7, 'Jaffna', 3),
(8, 'Kilinocchiya', 3),
(9, 'Mannarama', 3),
(10, 'Mullaitivu', 3),
(11, 'Vavniyawa', 3),
(12, 'Anuradhapura', 4),
(13, 'Polonnaruwa', 4),
(14, 'Kurunegala', 5),
(15, 'Putthalama', 5),
(16, 'Kegalle', 6),
(17, 'Rathnapura', 6),
(18, 'Galle', 7),
(19, 'Hambantota', 7),
(20, 'Matara', 7),
(21, 'Badulla', 8),
(22, 'Monaragala', 8),
(23, 'Colombo', 9),
(24, 'Gampaha', 9),
(25, 'Kalutara', 9);

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`) VALUES
(101, 101, 'Remote JavaScript Web Developer', '<p>MonetizeMore builds industry leading ad technology that is seen by more than 300M people per month. The company has been running for 8 years achieving consistent double digit growth each year with a team of 80+ team members spread across the globe.</p><br>\r\n\r\n<p>MonetizeMore offers location and schedule freedom to every one of its team members. That means that you would have the lifestyle autonomy to choose to work from anywhere in the world, during the time of day you prefer. This new-age work lifestyle would enable you to engineer your ideal lifestyle. Say goodbye to endless commutes, stuffy business attire and the arbitrary 9 – 5 work day. Take your life back into your hands by joining the MonetizeMore team!<p><br>\r\n\r\n\r\n<h3><b>Responsibilities</b></h3>\r\n\r\n<br><p>The day-to-day work of a MonetizeMore web developer includes:</p>\r\n\r\n<br><p><li>Developing features or product using: JavaScript, Python/Flask, PostgreSQL, Linux, Docker, Git, Cloud Services and any other new technologies.\r\nBuilding JavaScript applications capable of tracking and responding to billions of requests per month.</li></p>\r\n<br><p><li>Developing APIs and integrating with 3rd party APIs to automate manual tasks.</li></p>\r\n<br><p><li>Implementing UI facilitating third-party reporting and streamlining ad operations.</li></p>\r\n<br><p><li>Integration of services to maximize ad revenues and maintain strong user experience.</li></p>\r\n\r\n<br><p><li>Attending daily stand-up meetings (15 mins) and other Scrum meetings (Every 3 weeks).</li></p>\r\n<h3><b>Attributes</b></h3><br>\r\n<p>MonetizeMore web developer attributes include:</p><br>\r\n\r\n<p>Teamwork Attributes:</p><br>\r\n<p><li>Collaboration: Working remotely on complex projects necessitates that you work together with your team and share knowledge.</li></p>\r\n<br><p><li>Communication Skills: You are comfortable communicating in English at all levels, have strong spoken and written communication skills and are an active listener.</li></p><br>\r\n\r\n<p>If you think you are a good fit to join the MonetizeMore product team, please apply below and give specific reasons what sets you apart. We hire individuals not robots so don’t be afraid to show a little personality.</p>\r\n', '80000', '150000', '1', 'Computer Science Degree at any University.', '2021-04-26 15:55:46'),
(102, 102, 'Senior/Junior Software Engineer', '<p>We are looking for an energetic team leader and a quick learner who seeks for the best experience and knowledge to join our team on developing SaaS platforms.</p> <p>You should excel in working with large-scale applications and frameworks and have outstanding communication and leadership skills.</p> <br><p> Full Time / Contract Basis.</p><br><h4><b>Technical Skills</b></h4><br>\r\n\r\n<p><li>Experience in Laravel is a must.</li></p>\r\n<br><p><li>Experience in PHP is a must.</li></p>\r\n<br><p><li>Experience in Agile and GIT.</li></p>\r\n<br><p><li>ReactJS and NodeJS will be an added advantage.</li></p>\r\n<br><p><li>Should be familiar with Ubuntu / Linux based development environments.</li></p>\r\n\r\n\r\n<br><b><h3>Requirements</h3><br></b>\r\n\r\n<p><li>Minimum 2 years commercial experience on relevant tools and technologies.</li></h3>\r\n<br><p><li>Quick Learner and Positive attitude.</p></li>\r\n<br><p><li>Exposure to industry coding standards in PHP and JavaScript.</li></p>\r\n<br><p><li>Communication skills in verbal and written English.</li></p>\r\n<br><p><li>Excellent attitude and proven track record of team play and lead.</li></p>\r\n<br><p><li>Analytical thinking and good problem-solving skills.</li></p>\r\n<br><p><li>Willingness to move between multiple projects and technologies.</li></p>\r\n\r\n<br>\r\n<b><p>The selected candidate will gain sufficient Experience and Knowledge in Software Solutions.</p></b>\r\n\r\n<p><b>No Remote work.</b></p>\r\n\r\n\r\n\r\n<p><h4>For more details</h4>-<u>careers@reachitright.com</u></p>', '80000', '155000', '1', 'Computer Science Degree', '2021-04-26 17:01:59'),
(104, 103, 'UI/UX and Graphic Designer', '<p>Wasp Technologies is a fast emerging company in Sri Lanka which provides services to local and foreign markets. We specialize in Web Development, Mobile Application Development, Software Development and Digital Marketing.</p>\r\n\r\n\r\n\r\n<h3><b>Responsibilities</b></h3><br>\r\n\r\n\r\n\r\n<p><li>Design social media posts, brochures, logos, flyers, banners, etc\r\nMaintain Design Consistency and being able to work with the Branding Guidelines.</li></p>\r\n<br><p><li>Develop Branding Guidelines.</li></p>\r\n<br><p><li>Should be able to understand and gather client requirements and provide suitable designs in order to meet client requirements.</li></p>\r\n<br><p><li>Creating Wireframes</li></p>\r\n<br><p><li>Web and Mobile App UI Designing</li></p><br>\r\n\r\n\r\n<h3><b>Requirements</b></h3><br>\r\n\r\n\r\n\r\n<p><li>Experience working with Photoshop / Illustrator / XD</li></p>\r\n<br><p><li>Creativity is a Must</li></p>\r\n<br><p><li>Communication skills</li></p>\r\n<br><p><li>Knowledge in Video Editng will be an Added Advantage</li></p><br>\r\n\r\n\r\n<h4>Work Location - Boralesgamuwa</h4>', '79000', '188000', '3', 'Computer Science Special Degree', '2021-04-27 04:01:45'),
(105, 104, 'UI/UX Engineer', '<p>BlackSwan Technologies is seeking a brilliant, creative and highly motivated UI/UX Engineer to combine the art of design with the art of programming. Responsibilities will include the translation of the UI/UX design wireframes to actual code that will produce visual elements of the application. You will work with the UI/UX designer and bridge the gap between graphical design and technical implementation, taking an active role on both sides and defining how the application looks as well as how it works. The UI/UX Engineer will have a crucial part in contributing to the roadmap of a scalable AI infrastructure with a web interface and will need to master a wide variety of cutting-edge technologies, working in a semi-autonomous environment.</p><br>\r\n\r\n<h3><b>Responsibilities:</b></h3>\r\n\r\n<br><p><li>Develop new user-facing features</li></p>\r\n<br><p><li>Translate designer mock-ups and wireframes into front end code</li></p>\r\n<br><p><li>Align the look & fell of all applications</li></p>\r\n<br><p><li>Ensure the technical feasibility of UI/UX designs</li></p><br>\r\n\r\n \r\n\r\n<h3><b>Requirements:</b></h3>\r\n\r\n<br><p><li>Bachelors or Master’ degree in computer science, information systems, STEM or related</li></p>\r\n<br><p><li>5+ years of experience with HTML5 and CSS3</li></p>\r\n<br><p><li>2+ years of experience with CSS preprocessors like Sass and LESS</li></p>\r\n\r\n<br><p><li>Excellent time-management, multi-tasking, and communication skills</li></p><br>\r\n \r\n', '65000', '84000', '5', 'Bachelors or Master’ degree in computer science or Bachelors or Master’ degree in information systems', '2021-04-27 04:32:26'),
(106, 105, 'Junior Data Scientist ', '<p>Looking for the best deals on various categories under one place? Daraz.lk prides itself on being among the best online shopping apps in Sri Lanka! Now, with the Daraz App, find all that you’re looking for while shopping in Sri Lanka in the comfort of your home! On the Daraz Online Shopping App, be the first to know about the latest sale, shopping festivals, and flash deals with the app push notifications. The Daraz Shopping App is your ultimate discount app in Sri Lanka where you can make the most of your online shopping experience!</p><br>\r\n\r\n<p>Daraz is one of Sri Lanka’s biggest e-commerce platforms that offers users a virtual shopping mall where you can browse and shop through more than 2 million products of assorted categories! Whether you’re looking for the latest gadgets or tech devices or looking to revamp your wardrobe with trendy fashion apparel or simply looking to buy home decor, Daraz Sri Lanka has it all and that too at discounted prices. With more than thousands of registered brands and sellers from the Daraz Seller Center. Daraz Online Shopping App has more than 115,000 satisfied users!</p><br>\r\n\r\n<h3><b>Job Role:</b></h3><br>\r\n\r\n\r\n\r\n<p><li>Work with stakeholders throughout the organization to identify opportunities on site by leveraging data to drive business.</li></p>\r\n<br><p><li>Mine and analyze data from databases to drive optimization and improvement with cross functional teams </li></p>\r\n<br><p><li>Develop custom data models and algorithms to enhance the recommendations on the platform.</li></p>\r\n<br><p><li>Use predictive modeling to increase and optimize convergence, customer experiences, customer engagement, revenue generation and other business KPIs on the platform.</li></p><br>\r\n\r\n\r\n\r\n<h3><b>Candidate Requirements:</b></h3>\r\n\r\n\r\n\r\n<br><p><li>Strong problem solving and analytical skills with an emphasis on customer behavioral analysis in ecommerce industry</li></p>\r\n<br><p><li>Knowledge and Experience on variety of machine learning techniques (clustering algorithms, decision tree learning, etc.) and their real-world advantages/drawbacks.</li></p>\r\n<br><p><li>Experience querying databases and using statistical computer languages: SQL, Python\r\nCoding knowledge and experience in Java</li></p>\r\n<br><p><li>Bachelor\'s degree in Computer Science, Computer Engineering or related fields</li></p><br>\r\n\r\n<h4><b>Competencies Required:</b></h4><br>\r\n<ul>\r\n<li>Stake holder Management</li>\r\n<li>Creativity and Innovation</li>\r\n<li>Soft skills and systems knowledge</li>\r\n</ul>', '45000', '95000', '2', 'Computer Science Degree', '2021-04-27 05:21:25'),
(107, 106, 'Android Developer', '<h3><b><u>Overview</u></b></h3><br>\r\n<p>Analyzes, develops, designs, and maintains software for the organization\\\'s products and systems. Performs system integration of software and hardware to maintain throughput and program consistency. Develops, validates, and tests: structures and user documentation. Work may be reviewed for accuracy and overall adequacy. Follows established processes and directions.</p><br>\r\n\r\n<h3><b>Responsibilities</b></h3><br>\r\n<p><li>Designs, develops, and tests on a variety of software assignments that constitute a portion of a larger project</li></p>\r\n<br><p><li>Develops and tests documentation which describes the specific software functionality</li></p>\r\n<br><p><li>Runs software tests designed by more experienced engineers</li></p>\r\n<br><p><li>Provides recommendations and implements solutions to complex issues. Insures compliance with quality process and standards</li></p>\r\n<br><p><li>performance and improve productivity</li></p>\r\n\r\n<h3><b>Qualifications</b></h3><br>\r\n<p><li>A Bachelor\'s degree in Computer Science or Computer engineering.</li></p>\r\n<br><p><li>Programming skills in Java, Java Script and Kotlin.</li></p>\r\n<br><p><li>5 years of experience in Android application development, Google Firebase or similar cloud databases, web services and REST APIs</li></p>\r\n<br><p><li>Familiarity with agile software development methodologies, good communication skills will be a definite plus</li></p>', '63000', '560000', '5', 'Computer Science Degree', '2021-04-27 05:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `sortname`, `name`) VALUES
(1, 'Cp', 'Central Province'),
(2, 'EP', 'Eastern Province'),
(3, 'NCP', 'North Central Province'),
(4, 'NP', 'Northern Province'),
(5, 'NWP', 'North Western Province'),
(6, 'SP', 'Sabaragamuwa Province'),
(7, 'SOP', 'Southern Province'),
(8, 'UP', 'Uva Province'),
(9, 'WP', 'Western Province');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `aboutme` text DEFAULT NULL,
  `skills` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `district`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`) VALUES
(1, 'Sanduni', 'Senevirathna', 'thathsarasanduni@gmail.com', 'sanduni', '66/1,Kithulakanda RD,Radawana', 'Gampaha', 'Gampaha', '0785810336', 'One yera work experience in software company', 'Computer Science', '2020', '1994-03-24 17:34:04', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(101, 'hansie', 'guna', 'hansie.lakshika@gmail.com', 'NmE3Y2I2OGRhYTk5ZjIyYTkxOTE3NjUwMjQzY2ZlYTY=', 'sgdasjfg', 'fgjas', '', '0124563321', 'ffs', 'sfasf', '2021-03-30', '1999-01-21', '22', 'Sfs', '6086df317a435.pdf', 'cf915baa31aa520a04687c4135e165e7', 0, '', 'fF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48315;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4121;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
