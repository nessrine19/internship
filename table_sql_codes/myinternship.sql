-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 12:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myinternship`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `ID_application` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `ID_provider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID_category` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `establishement`
--

CREATE TABLE `establishement` (
  `id_establishement` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `profissional_email` varchar(50) NOT NULL,
  `establishement_name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `establishement`
--

INSERT INTO `establishement` (`id_establishement`, `username`, `profissional_email`, `establishement_name`, `position`, `phone_number`, `pass`, `create_datetime`) VALUES
(13, 'ness', 'ness@gmail.com', 'company', 'manager', '123456543', '$2y$10$Ahacz2.dJv/mK', '0000-00-00 00:00:00'),
(14, 'nesrine', 'nesrine@gmail.com', 'company', 'manger ', '876567680', '12345678', '0000-00-00 00:00:00'),
(15, 'Nesrine Abdelhak', 'nesrine.abdelhak@ensia.edu.dz', 'tuetyi', 'manager', '53768876', '$2y$10$YWRVxBvL6ZRmT', '0000-00-00 00:00:00'),
(16, 'Nesrine Abdelhak', 'nesrine.abdelhak4567@ensia.edu.dz', 'company', 'manager', '087654', '123', '0000-00-00 00:00:00'),
(17, 'Nesrine Abdelhak', 'nesrine.abdelhak123@ensia.edu.dz', 'company', 'manager', '12345678', '12345678', '2023-04-25 16:38:48'),
(18, 'Nesrine Abdelhak', 'nesrine.abdelhak1233@ensia.edu.dz', 'company', 'manager', '1234567890', '$2y$10$0Jb5VwdwjmdXo', '2023-04-26 07:30:31'),
(19, 'Nesrine Abdelhak', 'nesrine.abdelhak1344@ensia.edu.dz', 'name', 'manager', '12345678', '123', '2023-04-28 12:40:56'),
(20, 'Nesrine Abdelhak', 'nesrine12345678@ensia.edu.dz', 'here', 'manager', '123456', '1234', '2023-04-28 14:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id_files` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_type` varchar(100) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id_files`, `file_name`, `file_path`, `file_type`, `file_size`, `id`, `uploaded_at`) VALUES
(1, 'ETCode_report.docx.pdf', 'uploads/ETCode_report.docx.pdf', 'application/pdf', 161152, 1, '2023-04-26 20:32:53'),
(2, 'ETCode_report.docx.pdf', 'uploads/ETCode_report.docx.pdf', 'application/pdf', 161152, 1, '2023-04-26 20:33:19'),
(3, 'ETCode_report.docx.pdf', 'uploads/ETCode_report.docx.pdf', 'application/pdf', 161152, 1, '2023-04-26 21:21:44'),
(4, 'html_css_team2_4.pdf', 'uploads/html_css_team2_4.pdf', 'application/pdf', 53002, 1, '2023-04-27 09:12:07'),
(5, 'The midterm.pdf', 'uploads/The midterm.pdf', 'application/pdf', 256579, 1, '2023-04-28 11:04:24'),
(6, 'The midterm.pdf', 'uploads/The midterm.pdf', 'application/pdf', 256579, 1, '2023-04-28 18:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE `internship` (
  `ID_internship` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `field` varchar(200) DEFAULT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `salary` int(20) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `ID_provider` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`ID_internship`, `title`, `description`, `field`, `website_link`, `location`, `duration`, `start_date`, `end_date`, `salary`, `create_datetime`, `ID_provider`) VALUES
(1, 'here', 'here', NULL, 'here', 'here', 10, '2023-04-27', '2023-05-27', 10, '2023-04-27 21:56:19', NULL),
(2, 'Marketing Intern', 'This is a description for internship 1', NULL, 'https://example.com/internship-1', 'Setif', 3, '2023-03-17', '2023-06-15', 12202, '2023-04-28 10:31:25', NULL),
(3, 'Marketing Intern', 'This is a description for internship 1', NULL, 'https://example.com/internship-1', 'Annaba', 3, '2023-09-02', '2023-12-01', 10425, '2023-04-28 10:31:19', NULL),
(4, 'Finance Intern', 'This is a description for internship 2', NULL, 'https://example.com/internship-2', 'Constantine', 1, '2023-01-20', '2023-02-19', 8768, '2023-04-28 10:31:19', NULL),
(5, 'Marketing Intern', 'This is a description for internship 3', NULL, 'https://example.com/internship-3', 'Constantine', 1, '2023-05-10', '2023-06-09', 14715, '2023-04-28 10:31:19', NULL),
(6, 'Software Development Intern', 'This is a description for internship 4', NULL, 'https://example.com/internship-4', 'Setif', 4, '2023-12-05', '2024-04-03', 12809, '2023-04-28 10:31:19', NULL),
(7, 'Graphic Design Intern', 'This is a description for internship 5', NULL, 'https://example.com/internship-5', 'Setif', 2, '2023-12-09', '2024-02-07', 9721, '2023-04-28 10:31:19', NULL),
(8, 'Marketing Intern', 'This is a description for internship 6', NULL, 'https://example.com/internship-6', 'Annaba', 4, '2023-04-28', '2023-08-26', 6751, '2023-04-28 10:31:19', NULL),
(9, 'Marketing Intern', 'This is a description for internship 1', NULL, 'https://example.com/internship-1', 'Setif', 3, '2023-03-17', '2023-06-15', 12202, '2023-04-28 10:31:25', NULL),
(10, 'Graphic Design Intern', 'This is a description for internship 2', NULL, 'https://example.com/internship-2', 'Annaba', 4, '2023-05-21', '2023-09-18', 7899, '2023-04-28 10:31:25', NULL),
(11, 'Software Development Intern', 'This is a description for internship 3', NULL, 'https://example.com/internship-3', 'Algiers', 2, '2023-05-17', '2023-07-16', 14546, '2023-04-28 10:31:25', NULL),
(12, 'Marketing Intern', 'This is a description for internship 4', NULL, 'https://example.com/internship-4', 'Annaba', 5, '2023-02-10', '2023-07-10', 5204, '2023-04-28 10:31:25', NULL),
(13, 'Software Development Intern', 'This is a description for internship 5', NULL, 'https://example.com/internship-5', 'Constantine', 6, '2023-04-01', '2023-09-28', 14602, '2023-04-28 10:31:25', NULL),
(14, 'Graphic Design Intern', 'This is a description for internship 6', NULL, 'https://example.com/internship-6', 'Constantine', 4, '2023-04-13', '2023-08-11', 6420, '2023-04-28 10:31:25', NULL),
(15, 'Finance Intern', 'This is a description for internship ID 81', NULL, 'https://example.com/internship-81', 'Setif', 6, '2023-06-21', '2023-12-18', 7348, '2023-04-28 10:39:18', NULL),
(16, 'Graphic Design Intern', 'This is a description for internship ID 68', NULL, 'https://example.com/internship-68', 'Setif', 5, '2023-10-14', '2024-03-12', 9828, '2023-04-28 10:39:18', NULL),
(17, 'Finance Intern', 'This is a description for internship ID 4', NULL, 'https://example.com/internship-4', 'Setif', 6, '2023-03-12', '2023-09-08', 13489, '2023-04-28 10:39:18', NULL),
(18, 'Software Development Intern', 'This is a description for internship ID 75', NULL, 'https://example.com/internship-75', 'Annaba', 3, '2023-01-13', '2023-04-13', 8932, '2023-04-28 10:39:18', NULL),
(19, 'Finance Intern', 'This is a description for internship ID 46', NULL, 'https://example.com/internship-46', 'Oran', 2, '2023-11-15', '2024-01-14', 10598, '2023-04-28 10:39:18', NULL),
(20, 'Software Development Intern', 'This is a description for internship ID 76', NULL, 'https://example.com/internship-76', 'Algiers', 4, '2023-04-01', '2023-07-30', 14892, '2023-04-28 10:39:18', NULL),
(21, 'here', 'here', 'ai ', 'here', 'here', 20, '2023-04-28', '2023-04-29', 2000, '2023-04-28 23:16:03', NULL),
(22, 'here', 'here', 'ai ', 'here', 'here', 20, '2023-04-28', '2023-04-29', 2000, '2023-04-28 23:16:52', NULL),
(23, 'here', 'here', 'ai', 'here', 'here', 20, '2023-04-28', '2023-04-29', 2000, '2023-04-28 23:17:58', NULL),
(24, 'here', 'here', 'ai', 'here', 'here', 20, '2023-04-28', '2023-04-29', 2000, '2023-04-28 23:18:04', NULL),
(25, 'here', 'here', 'ai', 'here', 'here', 10, '2023-04-28', '2023-04-29', 100, '2023-04-28 23:19:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE `interview` (
  `ID_interview` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_part`
--

CREATE TABLE `jobs_part` (
  `ID_jobs_part` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `field` varchar(200) DEFAULT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `ID_provider` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs_part`
--

INSERT INTO `jobs_part` (`ID_jobs_part`, `title`, `description`, `field`, `website_link`, `location`, `duration`, `start_date`, `end_date`, `position`, `company_name`, `create_datetime`, `ID_provider`) VALUES
(1, 'Product Manager Job', 'This is a Product Manager Job position at Microsoft.', NULL, 'http://www.microsoft.com/careers', 'Seattle, USA', 11, '2023-06-02', '2024-04-27', 'Marketing Manager', 'Google', '2023-04-28 11:24:11', NULL),
(2, 'Marketing Manager Job', 'This is a Marketing Manager Job position at Facebook.', NULL, 'http://www.facebook.com/careers', 'Seattle, USA', 7, '2023-12-04', '2024-07-01', 'Software Engineer', 'Facebook', '2023-04-28 11:24:11', NULL),
(3, 'Marketing Manager Job', 'This is a Marketing Manager Job position at Microsoft.', NULL, 'http://www.apple.com/careers', 'Seattle, USA', 12, '2023-10-07', '2024-10-01', 'Marketing Manager', 'Microsoft', '2023-04-28 11:24:11', NULL),
(4, 'Software Engineer Job', 'This is a Software Engineer Job position at Amazon.', NULL, 'http://www.apple.com/careers', 'San Francisco, USA', 5, '2023-07-12', '2023-12-09', 'Sales Representative', 'Facebook', '2023-04-28 11:24:11', NULL),
(5, 'Data Scientist Job', 'This is a Data Scientist Job position at Facebook.', NULL, 'http://www.facebook.com/careers', 'Chicago, USA', 11, '2023-10-12', '2024-09-06', 'Product Manager', 'Google', '2023-04-28 11:24:11', NULL),
(6, 'Data Scientist Job', 'This is a Data Scientist Job position at Microsoft.', NULL, 'http://www.microsoft.com/careers', 'San Francisco, USA', 6, '2023-12-04', '2024-06-01', 'Sales Representative', 'Amazon', '2023-04-28 11:24:11', NULL),
(7, 'Marketing Manager Job', 'This is a Marketing Manager Job position at Apple.', NULL, 'http://www.google.com/careers', 'New York, USA', 4, '2023-11-19', '2024-03-18', 'Marketing Manager', 'Amazon', '2023-04-28 11:24:11', NULL),
(8, 'Data Scientist Job', 'This is a Data Scientist Job position at Apple.', NULL, 'http://www.facebook.com/careers', 'Los Angeles, USA', 12, '2023-04-05', '2024-03-30', 'Marketing Manager', 'Google', '2023-04-28 11:24:11', NULL),
(9, 'Product Manager Job', 'This is a Product Manager Job position at Facebook.', NULL, 'http://www.facebook.com/careers', 'Seattle, USA', 9, '2023-05-25', '2024-02-19', 'Software Engineer', 'Microsoft', '2023-04-28 11:24:11', NULL),
(10, 'Product Manager Job', 'This is a Product Manager Job position at Amazon.', NULL, 'http://www.microsoft.com/careers', 'Chicago, USA', 8, '2023-06-03', '2024-01-29', 'Software Engineer', 'Microsoft', '2023-04-28 11:24:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `ID_provider` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `profissional_email` varchar(50) DEFAULT NULL,
  `establishement_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `id_establishement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `ID_scholarships` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `field` varchar(200) DEFAULT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `ID_provider` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`ID_scholarships`, `title`, `description`, `field`, `website_link`, `location`, `duration`, `start_date`, `end_date`, `type`, `create_datetime`, `ID_provider`) VALUES
(1, 'Scholarship 2', 'Description 4', NULL, 'http://www.scholarship1.com', 'Location 5', 10, '2023-05-28', '2023-06-27', 'Partially Funded', '2023-04-28 11:05:09', NULL),
(2, 'Scholarship 2', 'Description 4', NULL, 'http://www.scholarship2.com', 'Location 2', 3, '2023-06-27', '2023-07-27', 'Fully Funded', '2023-04-28 11:05:09', NULL),
(3, 'Scholarship 3', 'Description 4', NULL, 'http://www.scholarship3.com', 'Location 2', 12, '2023-07-27', '2023-08-26', 'Partially Funded', '2023-04-28 11:05:09', NULL),
(4, 'Scholarship 2', 'Description 4', NULL, 'http://www.scholarship4.com', 'Location 1', 3, '2023-08-26', '2023-09-25', 'Partially Funded', '2023-04-28 11:05:09', NULL),
(5, 'Scholarship 5', 'Description 1', NULL, 'http://www.scholarship5.com', 'Location 1', 11, '2023-09-25', '2023-10-25', 'Fully Funded', '2023-04-28 11:05:09', NULL),
(6, 'Scholarship 2', 'Description 2', NULL, 'http://www.scholarship6.com', 'Location 5', 11, '2023-10-25', '2023-11-24', 'Fully Funded', '2023-04-28 11:05:09', NULL),
(7, 'Scholarship 2', 'Description 1', NULL, 'http://www.scholarship7.com', 'Location 1', 8, '2023-11-24', '2023-12-24', 'Partially Funded', '2023-04-28 11:05:09', NULL),
(8, 'Scholarship 4', 'Description 5', NULL, 'http://www.scholarship8.com', 'Location 4', 7, '2023-12-24', '2024-01-23', 'Fully Funded', '2023-04-28 11:05:09', NULL),
(9, 'Scholarship 3', 'Description 2', NULL, 'http://www.scholarship9.com', 'Location 4', 9, '2024-01-23', '2024-02-22', 'Partially Funded', '2023-04-28 11:05:09', NULL),
(10, 'Scholarship 3', 'Description 4', NULL, 'http://www.scholarship10.com', 'Location 5', 2, '2024-02-22', '2024-03-23', 'Partially Funded', '2023-04-28 11:05:09', NULL),
(11, 'here', 'here', 'ai ', 'here', 'here', 100, '2023-04-28', '2023-04-29', 'fully funded', '2023-04-28 23:23:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `talks`
--

CREATE TABLE `talks` (
  `ID_talks` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `field` varchar(200) DEFAULT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `ID_provider` int(11) DEFAULT NULL,
  `talk_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `talks`
--

INSERT INTO `talks` (`ID_talks`, `name`, `description`, `field`, `website_link`, `location`, `duration`, `create_datetime`, `ID_provider`, `talk_date`) VALUES
(31, 'Blockchain Technology', 'Get practical advice and strategies for planning your career path and achieving your goals.', NULL, 'http://www.example.com/0', 'Berlin', 3, '2023-03-03 22:29:21', NULL, '2023-03-11'),
(32, 'Blockchain Technology', 'Get practical advice and strategies for planning your career path and achieving your goals.', NULL, 'http://www.example.com/1', 'London', 2, '2023-04-20 21:02:21', NULL, '2023-04-24'),
(33, 'Career Planning and Development', 'Discover how blockchain technology is revolutionizing industries, from finance to supply chain management.', NULL, 'http://www.example.com/2', 'Sydney', 180, '2023-03-18 20:33:21', NULL, '2023-03-28'),
(34, 'Sustainability and Green Technologies', 'Hear from successful entrepreneurs and learn about the challenges and opportunities of starting a business.', NULL, 'http://www.example.com/3', 'New York', 180, '2023-04-18 09:58:21', NULL, '2023-05-10'),
(35, 'Sustainability and Green Technologies', 'Explore the latest advancements and ethical considerations in the field of artificial intelligence.', NULL, 'http://www.example.com/4', 'Paris', 120, '2023-03-15 00:52:21', NULL, '2023-03-17'),
(36, 'Cybersecurity Trends and Threats', 'Get practical advice and strategies for planning your career path and achieving your goals.', NULL, 'http://www.example.com/5', 'New York', 120, '2023-04-04 21:58:21', NULL, '2023-04-06'),
(37, 'Career Planning and Development', 'Discover innovative solutions for environmental challenges and the growing field of sustainable technologies.', NULL, 'http://www.example.com/6', 'Toronto', 60, '2023-03-14 08:04:21', NULL, '2023-03-16'),
(38, 'Introduction to Machine Learning', 'Explore the latest advancements and ethical considerations in the field of artificial intelligence.', NULL, 'http://www.example.com/7', 'Dubai', 60, '2023-04-15 04:14:21', NULL, '2023-04-16'),
(39, 'The Future of Artificial Intelligence', 'Unlock your creativity and learn how to cultivate an innovative mindset in the workplace.', NULL, 'http://www.example.com/8', 'New York', 60, '2023-04-15 15:26:21', NULL, '2023-05-15'),
(40, 'Sustainability and Green Technologies', 'Explore the latest advancements and ethical considerations in the field of artificial intelligence.', NULL, 'http://www.example.com/9', 'Dubai', 120, '2023-03-23 05:19:21', NULL, '2023-04-22'),
(41, 'here', 'here', 'ai', 'here', 'here', 1000, '2023-04-28 23:24:24', NULL, '2023-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `edu_level` varchar(255) DEFAULT NULL,
  `study_year` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `edu_level`, `study_year`, `field`, `description`, `university`) VALUES
(1, '', '', NULL, '$2y$10$WUHY9zakB.gAOLg0n4vZNOUS1oeYYwAP3bR56wRPCQ1WBzegVdOGK', NULL, '2023-04-28 18:29:57', '2023-04-28 18:29:57', 'bachlor degree', '', '', '', ''),
(2, 'nesrine', 'nesrine.abdelhak@ensia.edu.dz', NULL, '$2y$10$Jb3DQ0yEVaWPaqUMDrN9ceq0fxNfFX58d5dnXGS3JkirAeu4MXbgW', NULL, NULL, NULL, '', '', '', NULL, NULL),
(3, 'nesrine', 'nesrineabdelhak7@gmail.com', NULL, '$2y$10$FCDIJzTb.IEE0FeMe2IACOCxdwfSzJpZgteCCm2mqRFsJo5uGtqxC', NULL, NULL, NULL, '', '', '', NULL, NULL),
(4, 'nesrine', 'nessabdelhak@gmail.com', NULL, '$2y$10$JhTF.nXwoUCIWYfhmG8rp.IrPdHZCN4IVp26l/V5k4JbYG04G/WC6', NULL, NULL, NULL, '', '', '', NULL, NULL),
(5, 'nesrine', 'nesrine@gmail.com', NULL, '$2y$10$9W9aVyen43fQAhtVv5NyFe3twa3Vpotu9yaody58XMyV0zTa51oNW', NULL, NULL, NULL, '', '', '', NULL, NULL),
(6, 'nesrine', 'nesrine12@gmail.com', NULL, '$2y$10$yasybaKJT10.TER0hJtUjOqyL7kGDp6c36n/1cmEn2TnOYeSFNhzC', NULL, NULL, NULL, '', '', '', NULL, NULL),
(7, 'nesrine abdelhak', 'nesrine123@gmail.com', NULL, '$2y$10$mMOxyfGjIFjvyeuujFgsCunqrhpd.Pk0dGYNcvIv7Kjk0QZizcKya', NULL, NULL, NULL, '', '', '', NULL, NULL),
(8, 'nesrine abdelhak', 'nesrine13@gmail.com', NULL, '$2y$10$6ehREgaxNu/TqJPRN6OxMOgnj6jBzBFOs3MSyWBZuxS2/AnN40SaO', NULL, NULL, NULL, '', '', '', NULL, NULL),
(9, 'nesrine', 'nesrine.abdelhak123456@ensia.edu.dz', NULL, '12345678', NULL, '2023-04-25 08:35:51', '2023-04-25 08:35:51', NULL, NULL, NULL, NULL, NULL),
(10, 'nesrine', 'nesrine.abdelhak123@ensia.edu.dz', NULL, '12345678', NULL, '2023-04-25 15:40:18', '2023-04-25 15:40:18', NULL, NULL, NULL, NULL, NULL),
(11, 'nesrine', 'nesrineabdelhak17@gmail.com', NULL, '12345678', NULL, '2023-04-25 15:41:54', '2023-04-25 15:41:54', NULL, NULL, NULL, NULL, NULL),
(12, 'nesrine abdelhak', 'nesrineabdelhak18@gmail.com', NULL, '123', NULL, '2023-04-25 18:04:24', '2023-04-25 18:04:24', NULL, NULL, NULL, NULL, NULL),
(13, 'nesrine', 'nesrine.abdelhak12@ensia.edu.dz', NULL, '123', NULL, '2023-04-26 06:10:20', '2023-04-26 06:10:20', NULL, NULL, NULL, NULL, NULL),
(14, 'nesrine', 'nesrine.abdelhak19@ensia.edu.dz', NULL, '123456', NULL, '2023-04-26 20:32:06', '2023-04-26 20:32:06', NULL, NULL, NULL, NULL, NULL),
(15, 'nesrine', 'nesrine.abdelhak1905@ensia.edu.dz', NULL, '1234', NULL, '2023-04-26 21:21:14', '2023-04-26 21:21:14', NULL, NULL, NULL, NULL, NULL),
(16, 'nesrine abdelhak', 'nesrineabdelhak171@gmail.com', NULL, '12345678', NULL, '2023-04-27 09:11:09', '2023-04-27 09:11:09', NULL, NULL, NULL, NULL, NULL),
(17, 'nesrine', 'nesrine.abdelhak10@ensia.edu.dz', NULL, '123456', NULL, '2023-04-28 11:03:24', '2023-04-28 11:03:24', NULL, NULL, NULL, NULL, NULL),
(18, 'nesrine', 'nesrine1233@gmail.com', NULL, '1234', NULL, '2023-04-28 13:08:53', '2023-04-28 13:08:53', NULL, NULL, NULL, NULL, NULL),
(19, 'nesrine', 'nesrine.abdelhak1900@ensia.edu.dz', NULL, '1234', NULL, '2023-04-28 18:29:33', '2023-04-28 18:29:33', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`ID_application`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID_category`);

--
-- Indexes for table `establishement`
--
ALTER TABLE `establishement`
  ADD PRIMARY KEY (`id_establishement`),
  ADD UNIQUE KEY `profissional_email` (`profissional_email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_files`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`ID_internship`),
  ADD KEY `ID_provider` (`ID_provider`);

--
-- Indexes for table `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`ID_interview`);

--
-- Indexes for table `jobs_part`
--
ALTER TABLE `jobs_part`
  ADD PRIMARY KEY (`ID_jobs_part`),
  ADD KEY `ID_provider` (`ID_provider`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`ID_provider`),
  ADD KEY `id_establishement` (`id_establishement`);

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`ID_scholarships`),
  ADD KEY `ID_provider` (`ID_provider`);

--
-- Indexes for table `talks`
--
ALTER TABLE `talks`
  ADD PRIMARY KEY (`ID_talks`),
  ADD KEY `ID_provider` (`ID_provider`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `ID_application` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `establishement`
--
ALTER TABLE `establishement`
  MODIFY `id_establishement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id_files` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `internship`
--
ALTER TABLE `internship`
  MODIFY `ID_internship` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `interview`
--
ALTER TABLE `interview`
  MODIFY `ID_interview` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_part`
--
ALTER TABLE `jobs_part`
  MODIFY `ID_jobs_part` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `ID_provider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `ID_scholarships` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `talks`
--
ALTER TABLE `talks`
  MODIFY `ID_talks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `internship`
--
ALTER TABLE `internship`
  ADD CONSTRAINT `internship_ibfk_1` FOREIGN KEY (`ID_provider`) REFERENCES `provider` (`ID_provider`);

--
-- Constraints for table `jobs_part`
--
ALTER TABLE `jobs_part`
  ADD CONSTRAINT `jobs_part_ibfk_1` FOREIGN KEY (`ID_provider`) REFERENCES `provider` (`ID_provider`);

--
-- Constraints for table `provider`
--
ALTER TABLE `provider`
  ADD CONSTRAINT `provider_ibfk_1` FOREIGN KEY (`id_establishement`) REFERENCES `establishement` (`id_establishement`);

--
-- Constraints for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD CONSTRAINT `scholarships_ibfk_1` FOREIGN KEY (`ID_provider`) REFERENCES `provider` (`ID_provider`);

--
-- Constraints for table `talks`
--
ALTER TABLE `talks`
  ADD CONSTRAINT `talks_ibfk_1` FOREIGN KEY (`ID_provider`) REFERENCES `provider` (`ID_provider`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
