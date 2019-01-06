-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 06, 2019 at 07:56 AM
-- Server version: 8.0.13
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnforgrow`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`name`, `Email`, `phone`, `msg`) VALUES
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554590, 'jhgkhjkg'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554590, 'jhgkhjkg'),
('SDf', 'zxcfdsf', 7897897, 'sdafdsf'),
('SDf', 'zxcfdsf', 7897897, 'sdafdsf'),
('XFD', 'dsaf', 789987, 'dsafsdf'),
('lala', 'kodaskf@', 12345, 'sda;lfkjldsjf\r\n'),
('lala', 'kodaskf@', 12345, 'sda;lfkjldsjf\r\n'),
('kaka', 'dsadsa', 4567, 'dsafdsa'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554590, 'ndsakjf kdsnfkla sdklf\r\n'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554590, 'dsf'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 968554590, 'ha bhabsbfds'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 968554590, 'dslkfj;lkds;j from main'),
('kam', 'set31@gmail.com', 5548488, 'sddgadgaf'),
('kam', 'set31@gmail.com', 5548488, 'sddgadgaf'),
('kam', 'set31@gmail.com', 5548488, 'sddgadgaf'),
('kam', 'set31@gmail.com', 5548488, 'sddgadgaf'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 96855459, 'kjfhjfkhfj'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 96855459, 'kjfhjfkhfj'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554590, 'mfjghfhgfkg sem\r\n'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554590, 'dsfsadfsadf'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 9685545, 'mamam jlkjal kljalks\r\n'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 96855459, 'dksjhflk \r\nsdkjf \r\nbaba\r\n bba\r\n'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 96855459, 'dksjhflk \r\nsdkjf \r\nbaba\r\n bba\r\n'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554, 'dksjhflk \r\nsdkjf \r\nbaba\r\n bba\r\n'),
('ka', 'semprajapat31@gmail.com', 968554, 'sd'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 96855459, 'sdfasdfsd'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 96855459, 'sdfasdfsd'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 9685545, 'dsfsdfsdf\r\nsem\r\nbaba'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 9685, 'sdfsadf\r\n'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 9685, 'sdfsadf\r\n'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 96, 'kjhfklsdfsd'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 9685, 'sdfsadf\r\n'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 9, 'sdkljfk\r\nsdnklf\r\nsdkf\r\n'),
('kamlesh prajapat', 'kamleshbprajapat@gmail.com', 9, 'sdkljfk\r\nsdnklf\r\nsdkf\r\n'),
('kamlesh prajapat', 'semprajapat31@gmail.com', 968554, 'kl');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` varchar(50) NOT NULL,
  `tag_line` text NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`sno`, `name`, `title`, `tag_line`, `content`, `img_file`, `slug`) VALUES
(1, 'Sem prajapat', 'Sanjuu', 'Nice post', 'Sanju is a 2018 Indian biographical film directed by Rajkumar Hirani and written by Hirani and Abhijat Joshi. It was jointly produced by Hirani and Vidhu Vinod Chopra under the banners Rajkumar Hirani Films and Vinod Chopra Films respectively. The film follows the life of Bollywood actor Sanjay Dutt, his addiction with drugs, arrest for alleged association with the 1993 Bombay bombings, relationship with his father, comeback in the industry, the eventual drop of charges from bombay blasts, and release after completing his jail term. Ranbir Kapoor stars as Dutt, along with an ensemble cast which features Paresh Rawal as Sunil Dutt, Vicky Kaushal, Manisha Koirala as Nargis, Dia Mirza as Manyata Dutt, Sonam Kapoor, Anushka Sharma and Jim Sarbh. \r\n\r\nIn a conversation with Hirani, Dutt shared anecdotes from his life, which the former found intriguing and prompted him to make a film based on Dutt\'s life. It was titled Sanju after the nickname Dutt\'s mother Nargis used to call him. Principal photography began in January 2017 and was completed by January 2018. The film\'s soundtrack was composed by Rohan-Rohan and Vikram Montrose, with A. R. Rahman as a guest composer. Fox Star Studios acquired the distribution rights of the film. \r\n\r\nSanju was released worldwide on 29 June 2018. It received positive reviews from critics, who praised Kapoor and Kaushal\'s performance and Hirani\'s direction; some criticised its supposed image-cleansing of its protagonist. It registered the highest opening for any film released in India in 2018, and on its third day, it had the highest single day collection ever for a Hindi film in India. With a worldwide gross of ₹586.85 crore (US$82 million), Sanju ranks as the highest grossing Bollywood film of 2018, the second highest-earning Hindi film in India of all time, and one of the highest-grossing \r\n', 'Sanju.jpg', 'first'),
(2, 'Kamlesh prajapat', 'Avenger-Infinity war', 'Coolest post', 'Avengers: Infinity War is a 2018 American superhero film based on the Marvel Comics superhero team the Avengers, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the sequel to 2012\'s The Avengers and 2015\'s Avengers: Age of Ultron, and the nineteenth film in the Marvel Cinematic Universe (MCU). The film is directed by Anthony and Joe Russo, written by Christopher Markus and Stephen McFeely, and features an ensemble cast including Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Don Cheadle, Tom Holland, Chadwick Boseman, Paul Bettany, Elizabeth Olsen, Anthony Mackie, Sebastian Stan, Danai Gurira, Letitia Wright, Dave Bautista, Zoe Saldana, Josh Brolin, and Chris Pratt. In the film, the Avengers and the Guardians of the Galaxy attempt to stop Thanos from amassing the all-powerful Infinity Stones.\r\n\r\nThe film was announced in October 2014 as Avengers: Infinity War – Part 1. The Russo brothers came on board to direct in April 2015 and by May, Markus and McFeely had signed on to write the script for the film, which drew inspiration from Jim Starlin\'s 1991 The Infinity Gauntlet comic and Jonathan Hickman\'s 2013 Infinity comic. In 2016, Marvel shortened the title to Avengers: Infinity War. Filming began in January 2017 at Pinewood Atlanta Studios in Fayette County, Georgia, with a large cast consisting mostly of actors reprising their roles from previous MCU films, including Brolin as Thanos. The production lasted until July 2017, shooting back-to-back with a direct sequel, Avengers: Endgame. Additional filming took place in Scotland, England, the Downtown Atlanta area, and New York City. With an estimated budget in the range of $316–400 million, it is one of the most expensive films ever made.', 'avenger.jpg', 'second'),
(3, 'vishal prajapat', 'PUBG', 'Good post', 'PlayerUnknown\'s Battlegrounds (PUBG) is an online multiplayer battle royale game developed and published by PUBG Corporation, a subsidiary of South Korean video game company Bluehole. The game is based on previous mods that were created by Brendan \"PlayerUnknown\" Greene for other games using the film Battle Royale for inspiration, and expanded into a standalone game under Greene\'s creative direction. In the game, up to one hundred players parachute onto an island and scavenge for weapons and equipment to kill others while avoiding getting killed themselves. The available safe area of the game\'s map decreases in size over time, directing surviving players into tighter areas to force encounters. The last player or team standing wins the round.\r\n\r\nThe game was first released for Microsoft Windows via Steam\'s early access beta program in March 2017, with a full release on December 20, 2017. That same month, the game was released by Microsoft Studios for the Xbox One via its Xbox Game Preview program, and officially released in September 2018. The same year, a port for the PlayStation 4 was released, in addition to two different mobile versions for Android and iOS. The game is one of the best-selling of all time, with over fifty million sold across all platforms by June 2018. In addition, the Windows version holds a peak concurrent player count of over three million on Steam, which is an all-time high on the platform.', 'pubg.jpg', 'third'),
(4, 'Aman', 'facebook', 'Good in there Case', '\r\nFacebook, Inc.\r\nFacebook Logo (2015) light.svg\r\nFacebook user page (2014).jpg\r\nMark Zuckerberg\'s profile (viewed from the login page)\r\nType of business	Public\r\nType of site\r\nSocial networking service\r\nAvailable in	Multilingual (140)\r\nTraded as	\r\nNASDAQ: FB (Class A)\r\nNASDAQ-100 component\r\nS&P 100 component\r\nS&P 500 component\r\nFounded	February 4, 2004; 14 years ago in Cambridge, Massachusetts[1]\r\nHeadquarters	1 Hacker Way\r\n(aka 1601 Willow Road)\r\nMenlo Park, California, U.S.\r\nCoordinates	37.4848°N 122.1484°WCoordinates: 37.4848°N 122.1484°W\r\nArea served	United States (2004–present)\r\nWorldwide, except blocking countries (2005–present)\r\nFounder(s)	\r\nMark Zuckerberg\r\nEduardo Saverin\r\nAndrew McCollum\r\nDustin Moskovitz\r\nChris Hughes\r\nKey people	Mark Zuckerberg\r\n(Chairman and CEO)\r\nSheryl Sandberg\r\n(COO)\r\nDavid Wehner\r\n(CFO)\r\nMike Schroepfer\r\n(CTO)\r\nChris Cox\r\n(CPO)\r\nIndustry	Internet\r\nProducts	Messenger\r\nWatch\r\nRevenue	Increase US$40.653 billion (2017)[2]\r\nOperating income	Increase US$20.203 billion (2017)[2]\r\nNet income	Increase US$15.934 billion (2017)[2]\r\nTotal assets	Increase US$84.524 billion (2017)[2]\r\nTotal equity	Increase US$74.347 billion (2017)[2]\r\nEmployees	30,275 (June 30, 2018)[3]\r\nSubsidiaries	Instagram\r\nWhatsApp\r\nOculus VR\r\nWebsite	www.facebook.com or\r\nwww.fb.com\r\nAlexa rank	Steady 3 (January 2019)[4]\r\nRegistration	Required\r\nUsers	Increase 2.2 billion monthly active users (January 2018)\r\nCurrent status	Active\r\nWritten in	C++, PHP (as HHVM),[5] D[6]\r\nFacebook, Inc. is an American online social media and social networking service company based in Menlo Park, California. Its website was launched on February 4, 2004, by Mark Zuckerberg, along with fellow Harvard College students and roommates Eduardo Saverin, Andrew McCollum, Dustin Moskovitz and Chris Hughes. It is considered one of the Big Four technology companies along with Amazon, Apple and Google.[7][8]\r\n\r\nThe founders initially limited the website\'s membership to Harvard students and subsequently Columbia, Stanford and Yale students. Membership was eventually expanded to the remaining Ivy League schools, MIT, and higher education institutions in the Boston area. Facebook gradually added support for students at various other universities, and eventually to high school students. Since 2006, anyone who claims to be at least 13 years old has been allowed to become a registered user of Facebook, though variations exist in this requirement, depending on local laws. The name comes from the face book directories often given to American university students. Facebook held its initial public offering (IPO) in February 2012, valuing the company at $104 billion, the largest valuation to date for a newly listed public company. It began selling stock to the public three months later. Facebook makes most of its revenue from advertisements that appear onscreen.', 'fb.jpg', 'fourth'),
(8, 'Jayesh Gupta', 'whatsapp', 'thik takk', 'sdkfjlad', 'whatsapp.jpg', 'fourth'),
(11, 'Jayesh Gupta', 'whatsapp', 'thik takk', 'sdfadsf', 'fb.jpg', 'fourth');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
