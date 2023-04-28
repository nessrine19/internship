CREATE TABLE `internship` (
  `ID_internship` int(11) auto_increment not null primary key,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `website_link` varchar(100),
  `location` varchar(100),
  `duration` int(11),
  `start_date` date NULL ,
  `end_date` date NULL,
  `salary` int(20) NULL,
  `create_datetime` datetime NOT NULL,
  `ID_provider` int(11) NULL,
  FOREIGN KEY (`ID_provider`) REFERENCES `provider`(`ID_provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
