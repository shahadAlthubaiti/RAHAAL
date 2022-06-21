-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 13, 2022 at 07:47 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `ask` text NOT NULL,
  `answer` longtext NOT NULL,
  `action` text NOT NULL,
  `keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `ask`, `answer`, `action`, `keyword`) VALUES
(2, 'Good afternoon|afternoon|GOOD AFTERNOON|AFTERNOON|good afternoon|Good Afternoon', 'Good afternoon !', 'text', ''),
(3, 'Good morning|morning|GOOD MORNING|MORNING|good morning|Good Morning', 'Good Morning !', 'text', ''),
(4, 'How are you doing?|how are you doing?|HOW ARE YOU DOING?|How are you doing ?|how are you doing ?|HOW ARE YOU DOING ?|how are u doing?|How Are You Doing?|How Are U Doing?|HOW ARE U DOING?|How are u doing?|HOW Are U Doing?|how are you?|How are you?|HOW ARE YOU?|How Are You?|how are u?|how are u ?|how are you doing today?|How are you doing today?|HOW ARE YOU DOING TODAY?|how are u doing today?|How you doing?|how you doing?|HOW YOU DOING?|how u doing?', 'Doing good , thank you', 'text', ''),
(5, 'What is your name?|What is your name ?|what is your name?|what is your name ?|what is your name|WHAT IS YOUR NAME?|WHAT IS YOUR NAME ?|what\'s your name?|what\'s your name ?|what is ur name?|what is ur name ?|What Is Your Name?|What Is Your Name ?|What is ur name?|What\'s ur name?|What\'s ur name ?', 'My name is Rahaal', 'text', ''),
(6, 'What is your family name ?|family?', 'As a robot , I do not have a family name', 'text', ''),
(7, 'Are you a boy or a girl ?|boy?|girl?|boy', ' I am a boy', 'text', ''),
(8, 'Hi|hi|HI|Hello|HEELO|hello|hi!|hi?|HI!|HI?|hello?|Hello?|HEELO?|hello!|HELLO!|hello?|hello', 'Hello !', 'text', ''),
(10, 'bye|Bye|BYE|bye bye|BYE BYE|Bye Bye|bye-bye|good-bye|GOOD-BYE|Good-Bye|see you|See You|SEE YOU|see u|See U|SEE U|goodbye|GOODBYE|Goodbye', 'goodbye', 'text', ''),
(11, 'weather|weather?|weather ?|Weather|Weather?|Weather ?|WEATHER?|WEATHER|WEATHER ?|weather today|Weather Today|WEATHER TODAY|weather today?|weather today ?|Weather Today?|Weather Today ?|WEATHER TODAY?|today weather|today weather?|TODAY WEATHER|weathr', 'Would you like to know the weather today ? ', 'question', 'weather'),
(12, 'who are you?|who are you ?|you?|you ?|who are u?|who are u ?|who are you|who are u|WHO ARE YOU?|WHO ARE YOU ?|WHO ARE YOU|U?|U ?|u?|u ?|Who Are You?|Who Are You ?', 'I am Rahaal', 'text', ''),
(13, 'events|event|evnt|evemt|evnts|evt', 'What <strong>event</strong> are you looking for ? select the event', 'list', 'events'),
(14, 'park|parks|prks|prk', 'What <strong>park</strong> are you looking for ? select the park', 'list', 'parks'),
(15, 'Which events are activity event?|activity event?|activitys event?|activitys event|activity even|now events|now event|event now', 'There are Taif Honey Festival,Trampo Park, Adventure Gate, Zuha Al-Taif', 'show', 'Taif Honey Festival,Trampo Park,Adventure Gate,Zuha Al-Taif'),
(16, 'Which events are shows event?|shows event?|shows event|show event|a123', 'There are Taif Honey Festival, Taif Rose Festival, Strawberry Farm, Al-Reef Farm, Zuha Al-Tai', 'show', 'Taif Honey Festival,Taif Rose Festival, Strawberry Farm,Al-Reef Farm,Zuha Al-Tai'),
(17, 'Which events are shopping event?|shopping event?|shopping event|shop event', 'There are Taif Honey Festival, Taif Rose Festival, Strawberry Farm', 'show', 'Taif Honey Festival,Taif Rose Festival,Strawberry Farm'),
(18, 'Which events are cultural event?|cultural event?|cultural event', 'There are Souq Okaz, Shubra Place', 'show', 'Souq Okaz,Shubra Place'),
(19, 'Which parks have football playground?|Which parks have football area?', 'There are Al-Ruddaf park, king Abduallah park click on the park to view its information', 'show', 'Al-Ruddaf park,king Abduallah park'),
(20, 'Which parks have Mosque?', 'There are Alruddaf park, king Abduallah park, Al- Faisaliyah, King Fahad, Taif Zoo, King Faisal, Al-Hokair', 'show', 'Alruddaf park,king Abduallah park,Al- Faisaliyah,King Fahad,Taif Zoo,King Faisal,Al-Hokair'),
(21, 'Which parks have Restaurant?| Which parks have food booths?', 'There are Alruddaf park, king Abduallah park, Al- Faisaliyah, Taif Zoo, Al-shalaal, Al-Hokair Time', 'show', 'Alruddaf park,king Abduallah park,Al- Faisaliyah,Taif Zoo,Al-shalaal,Al-Hokair Time'),
(22, 'Which events are open all days of the week?|events open all days|events open all days?|event open all day?|event open all day|a123', 'There are Souq Okaz, Al-Reef Farm, Adventure Gate, Trampo Park', 'show', 'Souq Okaz,Al-Reef Farm,Adventure Gate, Trampo Park');

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` text NOT NULL,
  `ticket` text NOT NULL,
  `open` text NOT NULL,
  `description` longtext NOT NULL,
  `image_path` text NOT NULL,
  `age` text NOT NULL,
  `rule` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`id`, `name`, `location`, `ticket`, `open`, `description`, `image_path`, `age`, `rule`, `address`) VALUES
(1, ' Souq Okaz ', 'https://goo.gl/maps/4EmQtkutDu6Mczpv5', 'free', 'All days of the weeks', ' A largest market in the islamic world, nowadays hosts thousands of tourists from around the world. The tradition of poetry recital competitions, arts& crafts exhibitions remain in the souq today. In addition to that, you may want to explore ancient footprints of the market. ', 'images/ScreenShot2022-04-14at10.49.25AM.png', 'all', 'physical distancing, mask-wearing, only family', ''),
(2, ' Strawberry Farm ', 'https://goo.gl/maps/ai3TM4pxwv59LEfc8', 'free', 'Strawberry season', ' Although the farm primarily focuses on planting and harvesting strawberries, it is also open to families and has many enjoyable facilities and activities. Children can feed various birds. Visitors can also relax to the soothing sound of waterfalls. ', 'images/ScreenShot2022-04-14at10.50.55AM.png', 'all years', 'physical distancing, mask-wearing, only family', ''),
(3, ' Rose Festival ', 'https://goo.gl/maps/qiyZxJd392ARttts5', 'free', 'from end of march to the beginning of april', ' The festival is linked to the season of blooming flowers in the spring, so that visitors can enjoy learning about roses and the stages of picking and distilling them. ', 'images/ScreenShot2022-04-14at10.51.30AM.png', 'all ages', 'physical distancing, mask-wearing, only family', ''),
(4, ' Al-reef Farm ', 'https://goo.gl/maps/ZQd3bu5yCKpJHTMu5', 'free', 'All days of the weeks', ' Everyone can visit the farm and enjoy its natural facilities that include trees, while children will find their fun in the bird garden and also their own play area. ', 'images/ScreenShot2022-04-14at10.52.46AM.png', 'all', 'physical distancing, mask-wearing, food and drinks is not allowed from outside', ''),
(5, ' Zuha Al-Taif ', 'https://goo.gl/maps/9tbPMqZtzVLF5yZQA', '100 riyal', '21-july to 21 september', ' In Zuha Al-Taif, there is nothing but the family atmosphere of fun and happiness, here you will enjoy the fragrance of flowers, and the deliciousness of the fruits and vegetables of the sectarian soil, gathered to make fresh juices for us. ', 'images/ScreenShot2022-04-14at10.53.17AM.png', 'all years', 'physical distancing, mask-wearing, food and drinks is not allowed from outside', ''),
(6, 'Shubra Palace', 'https://goo.gl/maps/muDqMQTApYh6wYuw8', 'free', 'All days execpt Sunday', '', 'images/new/ShubraPalace.jpg', 'all', 'Show Tawakkalna, physical distancing, mask-wearing', ''),
(7, 'Trampo Park', 'https://g.page/trampopark_sa?shar', 'free', 'All days of the weeks', '', 'images/new/tpark.jpg', 'all', 'Show Tawakkalna, physical distancing, mask-wearing, only family', ''),
(8, 'Taif Honey Festiva', 'https://goo.gl/maps/qiyZxJd392ARttts5', 'free', 'With the rose festival', '', 'images/new/honey.png', 'all', 'physical distancing, mask-wearing, only family', ''),
(9, 'Adventure Gate', 'https://g.page/adventure-taif?shar', 'free', 'All days of the weeks', '', 'images/new/Adventuregate.jpg', 'all', 'Show Tawakkalna, Games depend on a certain length', '');

-- --------------------------------------------------------

--
-- Table structure for table `Parks`
--

CREATE TABLE `Parks` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` text NOT NULL,
  `ticket` text NOT NULL,
  `open` text NOT NULL,
  `description` longtext NOT NULL,
  `image_path` text NOT NULL,
  `age` text NOT NULL,
  `rule` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Parks`
--

INSERT INTO `Parks` (`id`, `name`, `location`, `ticket`, `open`, `description`, `image_path`, `age`, `rule`, `address`) VALUES
(1, ' King Abdullah Park ', 'https://goo.gl/pfWPQC', 'free', 'Saturday: 12pm-12am \r\nSunday: 1pm-12am\r\nTuesday: 1pm-12am\r\nWednesday: 1pm-12am\r\nThursday: 1pm-12am \r\nFriday: 4:30pm-12am', 'King Abdullah Park was opened in 2013 on an area of approximately 150,000 square meters, and it is considered one of the most important landmarks of the modern entertainment city of Taif and a haven for the people of the city, and among the most visited tourist places in Saudi Arabia. King Abdullah Park includes many distinctive facilities, 53,000 square meters of green spaces, 3 water fountains, and two artificial lakes. The park also includes large areas that include many hiking trails, a number of children\'s playgrounds, and playgrounds for football, basketball and volleyball. A number of open theaters and amphitheaters have been established that are used in the country\'s national and international celebrations, private and public concerts.', 'images/ScreenShot2022-04-14at10.44.57AM.png', 'all years', 'No \"bicycle, Football, Light fire, Cooking, Smoking\" (Families only)', '3032 King Khalid Road, Al Naseem, Taif 26524 6938'),
(2, ' Al Faisaliah Park ', 'https://goo.gl/sU2mgj', 'free', 'Everyday from 4pm-1am\r\nExcept thursday', ' It is one of the best parks in Taif. The park enjoys its location, as it is located in the heart of the city of Taif. It was created to be the perfect recreational getaway for city dwellers. The park includes all the recreational services that visitors need. Therefore, it has become one of the most famous tourist attractions in Taif. You can spend the most enjoyable times of entertainment with family or friends in Al Faisaliah Park, enjoying its vast green landscapes, taking an entertaining picnic tour, walking in the park’s many paths, jogging on the track of running competitions, or riding exciting bikes. You can also rest in the many seating areas of the park with umbrellas ', 'images/ScreenShot2022-04-14at10.44.07AM.png', 'all ', 'No \"bicycle, Football, Light fire, Cooking, Smoking\" (Families only)', 'Al Hawiyah, near 7473, 26571 3670, Taif 26571'),
(3, ' Al-Ruddaf Park ', 'https://goo.gl/oHvL2y', 'free', 'Everyday from 4pm-1am\r\nExcept Sunday', ' Al- Ruddaf Park is distinguished by its beautiful and unique architectural designs, which attract many visitors and tourists. You can relax amidst the vast green areas where the wonderful trees, and the picturesque figures of roses that enchant the eyes. Moreover, the park features water fountains, an artificial lake, and international gardens. The park has all the service facilities, with shaded wooden boards, toilets, a mosque, and playgrounds where you can practice various sports, to enjoy the most enjoyable holidays with the family. ', 'images/ScreenShot2022-04-14at10.45.50AM.png', 'all ages', 'No \"bicycle, Football, Light fire, Cooking, Smoking\"', 'Abu Talib, Ar Radf, Taif 26514'),
(4, ' Al Anoud Garden ', 'https://goo.gl/kCR3ZH', '18 riyal', 'no', ' Al-Anoud Park is one of the most prominent parks and tourist attractions in the city of Taif, and because the recreational elements and activities are one of the main components of the central park, these activities were identified and selected based on several factors, including social and cultural as well as customs and traditions, the nature of social relations in the city’s community and its behavior in general with the achievement of a kind of The balance between preserving the characteristics and the natural formation of the site ', 'images/ScreenShot2022-04-14at10.46.23AM.png', 'all ages', '', ''),
(5, ' Al Hadban Park ', 'https://goo.gl/maps/LTLrv2uNQdTN9AZd9', 'free', 'closed', ' Al-Hadban Al-Taif Park has unique designs that show the splendor of coordination between green landscapes, plants, colorful flowers and recreational centers. It has been provided with nearly 400 sessions and a canopy lounge equipped with all amenities and services, a large mosque, toilets and parking spaces that can accommodate a large number of cars. ', 'images/ScreenShot2022-04-14at10.47.02AM.png', 'no', '', ''),
(6, 'Al-jal', 'https://goo.gl/pfWPQC', 'free', '24-7', '', 'images/new/alj.jpg', '', 'No \"bicycle, Football, Light fire, Cooking, Smoking\" (Families only)', 'Al-Jal, Al- Jifjif District, Taif 26523'),
(7, 'Bab Al-Hazm', 'https://goo.gl/WjZeJy', 'free', '24-7', '', 'images/new/BabAl-hazm.jpg', '', 'No rules', 'Khalid Ibn Al Walid Bridge, Shubra, Taif'),
(10, 'Saiysad National park', 'https://goo.gl/eT2Mww', 'free', '24-7', '', 'images/new/SaiysadNationalpark.jpg', '', 'No rules', '7FVV+8J5 , Taif'),
(11, 'Al-Ghamd', 'https://goo.gl/TYA8Hi', 'free', '24-7', '', 'images/new/Al-Ghamd.jpg', '', 'No rules', 'XM+4979 W, Al Khalidiya h, Taif 26522'),
(12, 'Al-Anoud', 'https://goo.gl/kCR3ZH', 'free', '24-7', '', 'images/new/alan.jpeg', '', 'Families only', 'Wadi Waj Road, Umm Al- Arad, Taif 26511'),
(13, 'Lotus flower', 'https://goo.gl/maps/CzjV2mNEFoYmMvAz8', 'free', '24-7', '', 'images/new/Lotusflower.jpg', '', 'No rules', 'Qamariy ah, Taif 26523 7261, 26523 7261 ,3304'),
(14, 'Al -Sadad', 'https://goo.gl/maps/ffHEPsfbX9EgnkyAA', 'free', '24-7', '', 'images/new/Al-Sadad.jpg', '', 'No rules', 'Moaz Bin Jabal Street, Al-Sadd District, 2438 Taif 26514 8194'),
(15, 'Al-nakhi', 'https://goo.gl/maps/4fmPMic9Vw2fz3a17', 'free', '4pm-1am', '', 'images/new/Al-nakhil.jpg', '', 'No rules', 'Al Nuzhah, ،،26513 Taif'),
(16, 'Al Shoalah Tourist', 'https://goo.gl/maps/363vFRaT7ir9CLMH8', 'free', '24-7', '', 'images/new/Al-shoalahTourist.jpg', '', 'Shisha does not allowed', 'Al Khaledia h, Qurwa, Taif 26521'),
(17, 'Taif Zoo', 'https://goo.gl/maps/xEbwWWnHEkqGtX8Y7', 'free', '9am-1am', '', 'images/new/TaifZOO.jpg', '', 'No rules', '،3830 Taif 26514'),
(18, 'Al-Hadban Amusement', 'https://goo.gl/maps/LTLrv2uNQdTN9AZd9', 'free', '24-7', '', 'images/new/Al-HadbanAmusement.png', '', 'No rules', 'https://goo.gl/maps/LTLrv2uNQdTN9AZd9'),
(19, 'Al-Hokair Time', 'https://goo.gl/maps/3RyK1Zb2jWVGYxML8', 'free', 'Sunday - from 4 pm to 1 am Monday - from 10 am to 1 am', '', 'images/new/Al-HokairTime.png', '', 'No Bicycle, football, bonfire, cooking, smoking (for families)', 'Taif Shahar, Al- Saddad Street, 26513'),
(20, 'Umm Al-Arad', 'https://goo.gl/maps/LCdmiUDqbpmEBv9y6', 'free', 'From 4PM to 1AM except tuesday will be close', '', 'images/new/Al-Arad.jpg', '', 'No rules', 'Taif King Abdulla h Road 26512'),
(21, 'Al-sail Al-kabeer', 'https://goo.gl/maps/bLriYEQwJVjcyD9y6', 'free', '24 H', '', 'images/new/kabeer.jpeg', '', 'No rules', 'Taif, Al- Sail Al- Kabeer Road ,26347'),
(22, 'Al-salam 2', 'https://goo.gl/maps/EoqcGFdmRmPi8Zdh8', 'free', '24 H', '', 'images/new/Al-salam2.jpg', '', 'No rules', 'Taif,Auf road 2525'),
(23, 'Al-sail Al-saghir', 'https://goo.gl/maps/Q6KAHmojFjFKi3wj6', 'free', '24 H', '', 'images/new/Al-sailAl-saghir.png', '', 'No rules', 'Taif,Al- sail Road 2823'),
(24, 'Durrat Al-shafa', 'https://goo.gl/maps/e7L7rrqkKNMkjVEE7', 'free', '24 H', '', 'images/new/DurratAl-shafa.jpg', '', 'No rules', 'Umm Al-Arad, Taif 26512 8616'),
(25, 'Al-shalaal', 'https://goo.gl/maps/YeUDSodo99UW9PBX8\'', 'free', 'From 2 PM to 3 AM', '', 'images/new/Al-shalaal.jpg', '', 'No Bicycle, football, bonfire, cooking, smoking (for families)', 'Al Amir Sultan, Al Khalidiy ah, Taif 26521'),
(26, 'Green mountain', 'https://goo.gl/maps/kCvbAMVkJJ3jgmuR7', 'free', 'From 2 PM to 3 AM', '', 'images/new/GreenMountain.png', '', 'No Bicycle, football, bonfire, cooking, smoking (for families)', 'Alhada Rd, , Taif 26715'),
(27, 'King Faisal', 'https://goo.gl/maps/DWH1ugaXQry3hbur7', 'free', 'Temporarily closed', '', 'images/new/KingFaisal.jpg', '', 'No rules', '4582 ,7781 Saudi Arabia, Taif 26565'),
(28, 'Mount Dhaka', 'https://goo.gl/maps/NiucfudJb7SNjFgh8', 'free', 'Temporarily closed', '', 'images/new/MountDhaka.jpg', '', 'No rules', 'RP+G37 5C, Mount Dhaka 26765'),
(29, 'Spring park', 'https://goo.gl/maps/E7hWs6MW94vGqqsr8', 'free', '24-7', '', 'images/new/Springpark.jpg', '', 'No rules', 'C8P+Q7 3J, Nakhab, Taif 26513'),
(30, 'Massara', 'https://goo.gl/maps/DR8WNCPm6ZcN6J7K8', 'free', '24-7', '', 'images/new/Massara.png', '', 'No rules', 'Massara h, Taif 26528');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Parks`
--
ALTER TABLE `Parks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Parks`
--
ALTER TABLE `Parks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
