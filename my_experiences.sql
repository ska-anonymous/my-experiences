-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 08:38 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_experiences`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `people` int(11) DEFAULT NULL,
  `expID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `exp_name` varchar(255) DEFAULT NULL,
  `exp_type` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `lon` float DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `exp_description` text DEFAULT NULL,
  `bookings` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `exp_name`, `exp_type`, `country`, `region`, `lon`, `lat`, `exp_description`, `bookings`) VALUES
(1, 'London Eye', 'Photography', 'United Kingdom', 'London', -0.1196, 51.5033, 'A must-visit landmark in London.', 4),
(2, 'Eiffel Tower', 'Photography', 'France', 'Paris', 2.2945, 48.8584, 'Iconic landmark offering stunning views of Paris.', 0),
(3, 'Great Wall of China', 'Hiking', 'China', 'Beijing', 116.57, 40.4319, 'Impressive structure winding across the Chinese landscape.', 0),
(4, 'Machu Picchu', 'Hiking', 'Peru', 'Cusco Region', -72.5459, -13.1631, 'Ancient Incan citadel nestled in the mountains.', 0),
(5, 'Serengeti National Park', 'Wildlife Safari', 'Tanzania', 'Arusha', 34.7656, -2.3333, 'Vast savannah teeming with diverse African wildlife.', 0),
(6, 'Pyramids of Giza', 'Historical Tours', 'Egypt', 'Cairo', 31.1342, 29.9792, 'Ancient pyramids and iconic Sphinx in the desert.', 0),
(7, 'Taj Mahal', 'Photography', 'India', 'Uttar Pradesh', 78.0422, 27.1751, 'Exquisite marble mausoleum and UNESCO World Heritage Site.', 0),
(8, 'Grand Canyon', 'Hiking', 'United States', 'Arizona', -112.112, 36.1069, 'Breathtaking natural wonder carved by the Colorado River.', 0),
(9, 'Santorini', 'Photography', 'Greece', 'South Aegean', 25.4615, 36.3932, 'Picturesque island known for its stunning sunsets and white-washed buildings.', 0),
(10, 'Sydney Opera House', 'Music', 'Australia', 'New South Wales', 151.214, -33.8568, 'Iconic performing arts center on Sydney Harbour.', 0),
(11, 'Museum of Modern Art', 'Art', 'United States', 'New York', -73.9776, 40.7614, 'Renowned museum showcasing modern and contemporary art.', 0),
(12, 'Marrakech Medina', 'Cultural Tours', 'Morocco', 'Marrakesh-Safi', -7.9867, 31.6295, 'Vibrant marketplace offering a glimpse into Moroccan culture.', 0),
(13, 'Angkor Wat', 'Photography', 'Cambodia', 'Siem Reap', 103.865, 13.4125, 'Magnificent temple complex and UNESCO World Heritage Site.', 0),
(14, 'Niagara Falls', 'Sightseeing', 'Canada', 'Ontario', -79.0747, 43.0828, 'Majestic waterfall on the border of Canada and the United States.', 0),
(15, 'Galapagos Islands', 'Wildlife Exploration', 'Ecuador', 'Galápagos', -90.9656, -0.7439, 'Unique ecosystem with diverse wildlife species.', 0),
(16, 'Tokyo Disneyland', 'Entertainment', 'Japan', 'Chiba', 139.87, 35.6329, 'Magical theme park for all ages.', 0),
(17, 'Acropolis of Athens', 'Historical Tours', 'Greece', 'Attica', 23.7261, 37.9715, 'Ancient citadel with iconic ruins atop a rocky hill.', 0),
(18, 'Golden Gate Bridge', 'Sightseeing', 'United States', 'California', -122.479, 37.8199, 'Iconic suspension bridge spanning the Golden Gate Strait.', 0),
(19, 'Statue of Liberty', 'Sightseeing', 'United States', 'New York', -74.0445, 40.6892, 'Iconic symbol of freedom and democracy.', 0),
(20, 'Chichen Itza', 'Historical Tours', 'Mexico', 'Yucatan', -88.5686, 20.6843, 'Impressive Mayan ruins and UNESCO World Heritage Site.', 0),
(21, 'Venice Canals', 'Boat Tours', 'Italy', 'Veneto', 12.3155, 45.4408, 'Romantic city known for its intricate canal system.', 0),
(22, 'Yellowstone National Park', 'Outdoor Activities', 'United States', 'Wyoming', -110.554, 44.4279, 'Vast wilderness with geothermal features and wildlife.', 0),
(23, 'Sagrada Familia', 'Architecture', 'Spain', 'Catalonia', 2.1744, 41.4036, 'Gaudi designed basilica known for its unique architecture.', 0),
(24, 'Mount Everest Base Camp', 'Trekking', 'Nepal', 'Sagarmatha', 86.925, 28.0028, 'Starting point for treks to the world\'s highest peak.', 0),
(25, 'The Great Barrier Reef', 'Scuba Diving', 'Australia', 'Queensland', 145.727, -18.2871, 'World\'s largest coral reef system teeming with marine life.', 0),
(26, 'Alhambra', 'Historical Tours', 'Spain', 'Andalusia', -3.5882, 37.176, 'Stunning Moorish palace and fortress complex.', 0),
(27, 'Museum of Natural History', 'Science', 'United States', 'New York', -73.9741, 40.7813, 'Famous museum featuring exhibits on natural history.', 0),
(28, 'Tikal', 'Historical Tours', 'Guatemala', 'El Petén', -89.6165, 17.222, 'Mayan ruins set in the lush Guatemalan rainforest.', 0),
(29, 'Stonehenge', 'Historical Tours', 'United Kingdom', 'Wiltshire', -1.8262, 51.1789, 'Mysterious prehistoric monument shrouded in history.', 0),
(30, 'Saint Basil\'s Cathedral', 'Architecture', 'Russia', 'Moscow', 37.6176, 55.752, 'Colorful Orthodox church with iconic onion domes.', 0),
(31, 'Bora Bora', 'Beach Vacation', 'French Polynesia', 'Society Islands', -151.742, -16.5004, 'Tropical paradise known for its turquoise waters and overwater bungalows.', 0),
(32, 'Mount Kilimanjaro', 'Trekking', 'Tanzania', 'Kilimanjaro', 37.3556, -3.0674, 'Africa\'s highest peak offering breathtaking views.', 0),
(33, 'Christ the Redeemer', 'Sightseeing', 'Brazil', 'Rio de Janeiro', -43.2104, -22.9519, 'Iconic statue overlooking the city of Rio de Janeiro.', 0),
(34, 'The Vatican', 'Historical Tours', 'Vatican City', 'Vatican City', 12.4524, 41.9029, 'Spiritual center of the Roman Catholic Church.', 0),
(35, 'The Hermitage', 'Art', 'Russia', 'Saint Petersburg', 30.3162, 59.9398, 'One of the world\'s largest and oldest art museums.', 0),
(36, 'Kremlin and Red Square', 'Historical Tours', 'Russia', 'Moscow', 37.6175, 55.7539, 'Historic fortified complex and central square in Moscow.', 0),
(37, 'Hagia Sophia', 'Historical Tours', 'Turkey', 'Istanbul', 28.9773, 41.0086, 'Former Byzantine church turned mosque turned museum.', 0),
(38, 'Table Mountain', 'Hiking', 'South Africa', 'Western Cape', 18.4151, -33.9628, 'Iconic flat-topped mountain overlooking Cape Town.', 0),
(39, 'The Louvre', 'Art', 'France', 'Paris', 2.3376, 48.8606, 'World\'s largest art museum and historic monument.', 0),
(40, 'Easter Island', 'Historical Tours', 'Chile', 'Valparaíso', -109.438, -27.1212, 'Remote island famous for its monumental statues.', 0),
(41, 'The Colosseum', 'Historical Tours', 'Italy', 'Rome', 12.4924, 41.8902, 'Ancient amphitheater with rich historical significance.', 0),
(42, 'Uluru (Ayers Rock)', 'Nature', 'Australia', 'Northern Territory', 131.037, -25.3444, 'Sacred red rock formation and UNESCO World Heritage Site.', 0),
(43, 'Great Ocean Road', 'Scenic Drives', 'Australia', 'Victoria', 143.663, -38.68, 'Picturesque coastal drive with stunning ocean views.', 0),
(44, 'Kangaroo Island', 'Nature', 'Australia', 'South Australia', 137.648, -35.7757, 'Island sanctuary known for its wildlife and natural beauty.', 0),
(45, 'Blue Mountains', 'Nature', 'Australia', 'New South Wales', 150.303, -33.7144, 'Mountain range near Sydney with deep valleys and eucalyptus forests.', 0),
(46, 'Bondi Beach', 'Beaches', 'Australia', 'New South Wales', 151.275, -33.8914, 'Popular beach destination known for its surf culture and vibrant atmosphere.', 0),
(47, 'Daintree Rainforest', 'Nature', 'Australia', 'Queensland', 145.345, -16.2533, 'Ancient rainforest home to diverse wildlife and unique ecosystems.', 0),
(48, 'Penguin Parade', 'Nature', 'Australia', 'Victoria', 145.13, -38.5163, 'Experience the nightly parade of little penguins returning to their nests.', 0),
(49, 'Whitsunday Islands', 'Nature', 'Australia', 'Queensland', 148.754, -20.3529, 'Archipelago of 74 stunning islands with pristine beaches and clear waters.', 0),
(50, 'Banff National Park', 'Nature', 'Canada', 'Alberta', -115.551, 51.4968, 'Canadian Rockies national park with stunning mountain landscapes.', 0),
(51, 'Rocky Mountains', 'Nature', 'Canada', 'British Columbia', -117.191, 52.9399, 'Spectacular mountain range spanning several Canadian provinces.', 0),
(52, 'Jasper National Park', 'Nature', 'Canada', 'Alberta', -117.869, 52.8734, 'Stunning national park with glaciers, lakes, and the Columbia Icefield.', 0),
(53, 'Whistler Blackcomb', 'Skiing', 'Canada', 'British Columbia', -122.957, 50.1163, 'Renowned ski resort with world-class slopes and outdoor activities.', 0),
(54, 'Petra', 'Historical Tours', 'Jordan', 'Ma\'an', 35.4444, 30.3285, 'Ancient city carved into rose-colored sandstone cliffs.', 0),
(55, 'Tokyo Disneyland', 'Theme Parks', 'Japan', 'Tokyo', 139.881, 35.6329, 'Popular theme park offering magical experiences for all ages.', 0),
(56, 'Borobudur Temple', 'Historical Tours', 'Indonesia', 'Central Java', 110.203, -7.6079, 'Massive Buddhist temple adorned with intricate stone carvings.', 0),
(57, 'Gardens by the Bay', 'Gardens', 'Singapore', 'Marina Bay', 103.865, 1.2819, 'Spectacular waterfront gardens with futuristic Supertrees.', 0),
(58, 'Jeju Island', 'Nature', 'South Korea', 'Jeju Province', 126.545, 33.3797, 'Volcanic island known for its natural beauty and unique culture.', 0),
(59, 'Kinkaku-ji', 'Historical Tours', 'Japan', 'Kyoto', 135.729, 35.0394, 'Golden Pavilion and Zen Buddhist temple in Kyoto.', 0),
(60, 'The Dead Sea', 'Nature', 'Jordan', 'Dead Sea', 35.4444, 31.5, 'Salt lake known for its high salt concentration and buoyancy.', 0),
(61, 'Mount Fuji', 'Hiking', 'Japan', 'Honshu', 138.731, 35.3606, 'Japan\'s highest mountain and an iconic symbol of the country.', 0),
(62, 'Ha Long Bay', 'Nature', 'Vietnam', 'Quảng Ninh', 107.074, 20.9101, 'Stunning UNESCO World Heritage Site with limestone islands and emerald waters.', 0),
(63, 'Bali Rice Terraces', 'Nature', 'Indonesia', 'Bali', 115.138, -8.4558, 'Picturesque terraced rice fields showcasing Bali\'s natural beauty.', 0),
(64, 'The Grand Palace', 'Historical Tours', 'Thailand', 'Bangkok', 100.49, 13.751, 'Magnificent palace complex and spiritual heart of Thailand.', 0),
(65, 'Jerusalem Old City', 'Historical Tours', 'Israel', 'Jerusalem', 35.2281, 31.7683, 'Historic walled city with religious significance for multiple faiths.', 0),
(66, 'Himeji Castle', 'Historical Tours', 'Japan', 'Hyogo', 134.694, 34.8391, 'Impressive feudal-era castle and UNESCO World Heritage Site.', 0),
(67, 'Forbidden City', 'Historical Tours', 'China', 'Beijing', 116.397, 39.918, 'Palatial complex that served as the imperial palace of China\'s emperors.', 0),
(68, 'Dubrovnik City Walls', 'Historical Tours', 'Croatia', 'Dubrovnik', 18.11, 42.6411, 'Well-preserved medieval walls surrounding the old town.', 0),
(69, 'Anne Frank House', 'Historical Tours', 'Netherlands', 'Amsterdam', 4.8837, 52.3752, 'Museum dedicated to Anne Frank and her wartime hiding place.', 0),
(70, 'Parthenon', 'Historical Tours', 'Greece', 'Athens', 23.7262, 37.9715, 'Ancient temple atop the Acropolis in Athens.', 0),
(71, 'Neuschwanstein Castle', 'Historical Tours', 'Germany', 'Bavaria', 10.7498, 47.5576, 'Fairy-tale castle known for its picturesque setting.', 0),
(72, 'Prague Castle', 'Historical Tours', 'Czech Republic', 'Prague', 14.398, 50.0917, 'Historic castle complex overlooking the city of Prague.', 0),
(73, 'Giant\'s Causeway', 'Nature', 'United Kingdom', 'County Antrim', -6.5143, 55.2408, 'Unique natural rock formation in Northern Ireland.', 0),
(74, 'Parc Güell', 'Parks', 'Spain', 'Barcelona', 2.1526, 41.4145, 'Park designed by Antoni Gaudí with colorful mosaics and scenic views.', 0),
(75, 'Saint Peter\'s Basilica', 'Historical Tours', 'Vatican City', 'Vatican City', 12.4534, 41.9022, 'One of the world\'s holiest Catholic sites.', 0),
(76, 'Blue Lagoon', 'Spa', 'Iceland', 'Grindavík', -20.8828, 63.8805, 'Geothermal spa with mineral-rich, turquoise waters.', 0),
(77, 'Brandenburg Gate', 'Historical Tours', 'Germany', 'Berlin', 13.3777, 52.5163, 'Iconic neoclassical monument and symbol of Berlin.', 0),
(78, 'Plitvice Lakes National Park', 'Nature', 'Croatia', 'Lika-Senj', 15.5841, 44.8654, 'Beautiful national park known for its cascading lakes and waterfalls.', 0),
(79, 'Amalfi Coast', 'Scenic Drives', 'Italy', 'Campania', 14.6116, 40.634, 'Breathtaking coastal stretch with picturesque towns.', 0),
(80, 'Florence Cathedral', 'Historical Tours', 'Italy', 'Florence', 11.2558, 43.7733, 'Iconic cathedral with a stunning Renaissance dome.', 0),
(81, 'Guggenheim Museum Bilbao', 'Art', 'Spain', 'Bilbao', -2.9337, 43.2682, 'Contemporary art museum designed by Frank Gehry.', 0),
(82, 'Charles Bridge', 'Historical Tours', 'Czech Republic', 'Prague', 14.4115, 50.0865, 'Historic bridge over the Vltava River in Prague.', 0),
(83, 'Tower of London', 'Historical Tours', 'United Kingdom', 'London', -0.0761, 51.5081, 'Medieval castle with a rich history.', 0),
(84, 'Buckingham Palace', 'Sightseeing', 'United Kingdom', 'London', -0.1409, 51.5014, 'Official residence of the British monarch.', 0),
(85, 'Edinburgh Castle', 'Historical Tours', 'United Kingdom', 'Edinburgh', -3.6187, 55.9486, 'Iconic castle overlooking the city of Edinburgh.', 0),
(86, 'The Beatles Story', 'Music', 'United Kingdom', 'Liverpool', -3.0026, 53.3986, 'Interactive museum showcasing the history of The Beatles.', 0),
(87, 'Roman Baths', 'Historical Tours', 'United Kingdom', 'Bath', -2.359, 51.3808, 'Well-preserved ancient Roman bathing complex.', 0),
(88, 'Windsor Castle', 'Historical Tours', 'United Kingdom', 'Windsor', -0.6067, 51.4839, 'Royal residence and the oldest inhabited castle in the world.', 0),
(89, 'The Shard', 'Sightseeing', 'United Kingdom', 'London', -0.0857, 51.5045, 'Tallest building in the United Kingdom with panoramic views.', 0),
(90, 'Warner Bros. Studio Tour London', 'Film', 'United Kingdom', 'Hertfordshire', -0.4196, 51.6907, 'Behind-the-scenes tour of the Harry Potter film series.', 0),
(91, 'Royal Botanic Gardens, Kew', 'Gardens', 'United Kingdom', 'London', -0.292, 51.4787, 'Botanical gardens with diverse plant collections.', 0),
(92, 'National Gallery', 'Art', 'United Kingdom', 'London', -0.1281, 51.5089, 'Art museum housing a vast collection of European masterpieces.', 0),
(93, 'York Minster', 'Historical Tours', 'United Kingdom', 'York', -1.0827, 53.9623, 'Impressive Gothic cathedral in the city of York.', 0),
(94, 'The British Museum', 'History', 'United Kingdom', 'London', -0.1269, 51.5194, 'World-renowned museum with an extensive collection of artifacts.', 0),
(95, 'Lake District National Park', 'Nature', 'United Kingdom', 'Cumbria', -3.139, 54.4609, 'Beautiful national park famous for its lakes and mountains.', 0),
(96, 'Royal Albert Hall', 'Music', 'United Kingdom', 'London', -0.1774, 51.501, 'Iconic concert hall hosting various performances.', 0),
(97, 'St. Paul\'s Cathedral', 'Historical Tours', 'United Kingdom', 'London', -0.0998, 51.5138, 'One of London\'s most famous cathedrals.', 0),
(98, 'Cambridge University', 'Education', 'United Kingdom', 'Cambridge', 0.1198, 52.2043, 'Renowned university with historic colleges and beautiful architecture.', 0),
(101, 'Web Programmer', 'Web Programming', 'Pakistan', 'Swat', 72.4839, 34.9355, 'I am experienced programmer in Pakistan District Swat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES
(1, 'john.doe@test.com', 'johnd', 'john123'),
(2, 'jane.doe@test.com', 'janed', 'jane123'),
(3, 'paul.harris@test.com', 'pharris', 'paul123'),
(4, 'erin.carter@test.com', 'ecarter', 'erin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expID` (`expID`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`expID`) REFERENCES `experiences` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
