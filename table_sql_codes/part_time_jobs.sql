CREATE TABLE `jobs_part` (
  `ID_jobs_part` int(11) auto_increment not null primary key,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `website_link` varchar(100),
  `location` varchar(100),
  `duration` int(11),
  `start_date` date NOT NULL ,
  `end_date` date NOT NULL,
  `position` varchar(20) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `ID_provider` int(11) not null,
  FOREIGN KEY (`ID_provider`) REFERENCES `provider`(`ID_provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
