-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 11:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbrsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Library Members');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(19, 1, 19),
(20, 1, 20),
(21, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add author', 7, 'add_author'),
(26, 'Can change author', 7, 'change_author'),
(27, 'Can delete author', 7, 'delete_author'),
(28, 'Can view author', 7, 'view_author'),
(29, 'Can add book', 8, 'add_book'),
(30, 'Can change book', 8, 'change_book'),
(31, 'Can delete book', 8, 'delete_book'),
(32, 'Can view book', 8, 'view_book'),
(33, 'Can add book instance', 9, 'add_bookinstance'),
(34, 'Can change book instance', 9, 'change_bookinstance'),
(35, 'Can delete book instance', 9, 'delete_bookinstance'),
(36, 'Can view book instance', 9, 'view_bookinstance'),
(37, 'Can add genre', 10, 'add_genre'),
(38, 'Can change genre', 10, 'change_genre'),
(39, 'Can delete genre', 10, 'delete_genre'),
(40, 'Can view genre', 10, 'view_genre'),
(41, 'Set book as returned', 9, 'can_mark_returned');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$zRdOGU1CDfsp$ndBCDGN++HclcnSv2knOhaHV1HXXQf1Dn/rgwL7THQk=', '2019-03-29 09:38:21.046203', 1, 'admin', 'Md Rafiqul', 'Islam', 'wubcse807@gmail.com', 1, 1, '2019-03-25 06:19:16.000000'),
(2, 'pbkdf2_sha256$120000$4MiPsbPaMO3P$W4t5QYqn5P+WjIhLGMfe6aZaaop253TA1vo1g58xGRI=', '2019-03-28 10:18:09.323072', 0, 'rafiq807', 'Md Rafiqul test', 'Islam test', 'wubrafiq807@gmail.com', 1, 1, '2019-03-26 07:13:35.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_author`
--

CREATE TABLE `catalog_author` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog_author`
--

INSERT INTO `catalog_author` (`id`, `first_name`, `last_name`, `date_of_birth`, `date_of_death`) VALUES
(1, 'Md Rafiqul', 'Islam', '2019-03-12', '2019-03-27'),
(2, 'Kamal', 'hasan', '2019-03-12', '2019-03-27'),
(3, 'Limon', 'Islam', '2019-03-27', '2019-03-28'),
(5, 'My Author', 'Test', '2019-03-12', '2018-05-01'),
(6, 'Author', 'Test', '2019-03-12', '2018-05-01'),
(7, 'trst', 'Test', '2019-03-12', '2018-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_book`
--

CREATE TABLE `catalog_book` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `summary` longtext NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog_book`
--

INSERT INTO `catalog_book` (`id`, `title`, `summary`, `isbn`, `author_id`) VALUES
(4, 'Python Demo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '456987', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_bookinstance`
--

CREATE TABLE `catalog_bookinstance` (
  `id` varchar(36) NOT NULL,
  `imprint` varchar(200) NOT NULL,
  `due_back` date DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `borrower_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog_bookinstance`
--

INSERT INTO `catalog_bookinstance` (`id`, `imprint`, `due_back`, `status`, `book_id`, `borrower_id`) VALUES
('031805d5-f508-4e1d-baba-d2c8d8fdfc57', 'test', '2019-03-26', 'r', NULL, NULL),
('0d0137d2-b176-4a1a-aeed-f82c41c60bdd', 'teat', '2019-03-27', 'o', 4, NULL),
('2430a817-9b14-46fc-9ef3-2a376541e270', 'test three', '2019-03-28', 'o', NULL, NULL),
('4bd55570-2390-4d5f-b98f-9389e32cff0c', 'Test Checked3', '2019-03-28', 'o', NULL, 2),
('5b1aebca-3481-483a-804f-b0b3fc48cc6f', 'Test Checked4', '2019-03-27', 'o', NULL, NULL),
('663a5207-8df4-418d-8a24-5434ab0b1ed2', 'Test Checked1', '2019-03-29', 'o', NULL, NULL),
('7279be5b-47db-4783-ab6d-51e1623633cc', 'my test', '2019-03-20', 'a', NULL, NULL),
('9b4649be-0832-4cad-8f4d-b755f9636df0', 'Test Checked3', '2019-03-19', 'a', NULL, NULL),
('b0a6c5c7-509e-4b5c-9d9e-e74465892098', 'Test Checked2', '2019-03-27', 'o', NULL, NULL),
('b1064081-2ca1-4b50-83d9-f2caff7c5424', 'teat', '2015-04-17', 'o', NULL, 2),
('bfe204b6-526e-435f-b378-d4adeb0e31ec', 'test', '2019-03-19', 'o', NULL, NULL),
('c98bf59c-aeb9-4e03-967f-15a112b722e3', 'my test', '2019-03-20', 'o', NULL, 2),
('cbd7c632-02e7-4584-bf65-826e1ca9318e', 'Test Checked5', '2019-03-21', 'm', NULL, NULL),
('df660a1f-c260-4b9d-8aa5-afcc9efa6d3a', 'tea', '2019-03-28', 'o', 4, NULL),
('e69321f2-9376-45c0-a7d1-4666b21a3a45', 'teat', '2019-03-29', 'o', 4, NULL),
('eed93669-d5ff-4885-b10c-ae58426a61fa', 'Test Checked4', '2019-03-29', 'o', 4, 2),
('ff6881d0-18be-4f04-883e-e680733c6db2', 'Test Four', '2019-03-29', 'r', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_book_genre`
--

CREATE TABLE `catalog_book_genre` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog_book_genre`
--

INSERT INTO `catalog_book_genre` (`id`, `book_id`, `genre_id`) VALUES
(7, 4, 1),
(8, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_genre`
--

CREATE TABLE `catalog_genre` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog_genre`
--

INSERT INTO `catalog_genre` (`id`, `name`) VALUES
(1, 'Test One'),
(2, 'test2');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-25 06:23:43.538735', '1', 'Islam, Md Rafiqul', 1, '[{\"added\": {}}]', 7, 1),
(2, '2019-03-25 06:24:05.333577', '2', 'hasan, Kamal', 1, '[{\"added\": {}}]', 7, 1),
(3, '2019-03-25 06:25:15.532966', '1', 'Test One', 1, '[{\"added\": {}}]', 10, 1),
(4, '2019-03-25 06:25:23.365229', '2', 'test2', 1, '[{\"added\": {}}]', 10, 1),
(5, '2019-03-25 06:25:31.226166', '1', 'Methematical Book', 1, '[{\"added\": {}}]', 8, 1),
(6, '2019-03-25 06:25:54.789091', '2', 'Methamecital Test book 2', 1, '[{\"added\": {}}]', 8, 1),
(7, '2019-03-25 06:26:33.117027', 'bfe204b6-526e-435f-b378-d4adeb0e31ec', 'bfe204b6-526e-435f-b378-d4adeb0e31ec (Methematical Book)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2019-03-25 06:26:58.967666', '031805d5-f508-4e1d-baba-d2c8d8fdfc57', '031805d5-f508-4e1d-baba-d2c8d8fdfc57 (Methamecital Test book 2)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2019-03-25 06:31:02.807933', '2', 'hasan, Kamal', 2, '[]', 7, 1),
(10, '2019-03-25 07:45:26.901795', '2', 'Methamecital Test book 2', 2, '[]', 8, 1),
(11, '2019-03-25 07:46:10.192046', '2', 'Methamecital Test book 2', 2, '[{\"added\": {\"name\": \"book instance\", \"object\": \"7279be5b-47db-4783-ab6d-51e1623633cc (Methamecital Test book 2)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"2430a817-9b14-46fc-9ef3-2a376541e270 (Methamecital Test book 2)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"ff6881d0-18be-4f04-883e-e680733c6db2 (Methamecital Test book 2)\"}}]', 8, 1),
(12, '2019-03-25 07:46:28.706524', '2', 'Methamecital Test book 2', 2, '[{\"changed\": {\"fields\": [\"genre\"]}}]', 8, 1),
(13, '2019-03-25 07:54:17.128193', '3', 'setset, trst', 1, '[{\"added\": {}}]', 7, 1),
(14, '2019-03-25 09:25:57.917616', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(15, '2019-03-26 03:34:04.761864', '2', 'Methamecital Test book war', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 8, 1),
(16, '2019-03-26 03:55:12.053803', '3', 'Java bangli Version', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"book instance\", \"object\": \"663a5207-8df4-418d-8a24-5434ab0b1ed2 (Java bangli Version)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"b0a6c5c7-509e-4b5c-9d9e-e74465892098 (Java bangli Version)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"9b4649be-0832-4cad-8f4d-b755f9636df0 (Java bangli Version)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"5b1aebca-3481-483a-804f-b0b3fc48cc6f (Java bangli Version)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"cbd7c632-02e7-4584-bf65-826e1ca9318e (Java bangli Version)\"}}]', 8, 1),
(17, '2019-03-26 04:30:00.006821', '3', 'Java bangli Version', 2, '[]', 8, 1),
(18, '2019-03-26 04:30:04.284013', '3', 'Java bangli Version', 2, '[]', 8, 1),
(19, '2019-03-26 04:30:49.867073', '4', 'Python Demo', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"book instance\", \"object\": \"e69321f2-9376-45c0-a7d1-4666b21a3a45 (Python Demo)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"0d0137d2-b176-4a1a-aeed-f82c41c60bdd (Python Demo)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"df660a1f-c260-4b9d-8aa5-afcc9efa6d3a (Python Demo)\"}}]', 8, 1),
(20, '2019-03-26 04:31:27.223300', '5', 'Python Demo 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"book instance\", \"object\": \"b1064081-2ca1-4b50-83d9-f2caff7c5424 (Python Demo 1)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"c98bf59c-aeb9-4e03-967f-15a112b722e3 (Python Demo 1)\"}}, {\"added\": {\"name\": \"book instance\", \"object\": \"4bd55570-2390-4d5f-b98f-9389e32cff0c (Python Demo 1)\"}}]', 8, 1),
(21, '2019-03-26 07:11:50.506979', '1', 'Library Members', 1, '[{\"added\": {}}]', 3, 1),
(22, '2019-03-26 07:13:35.623999', '2', 'rafiq807', 1, '[{\"added\": {}}]', 4, 1),
(23, '2019-03-26 07:13:52.833861', '2', 'rafiq807', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(24, '2019-03-26 07:15:00.298496', '1', 'Library Members', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1),
(25, '2019-03-26 07:16:27.877274', '1', 'Library Members', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1),
(26, '2019-03-26 08:31:42.936227', '4', 'Python Demo', 2, '[{\"changed\": {\"name\": \"book instance\", \"object\": \"df660a1f-c260-4b9d-8aa5-afcc9efa6d3a (Python Demo)\", \"fields\": [\"status\"]}}]', 8, 1),
(27, '2019-03-26 08:31:56.966321', '4', 'Python Demo', 2, '[]', 8, 1),
(28, '2019-03-26 08:33:56.982477', '5', 'Python Demo 1', 2, '[{\"changed\": {\"fields\": [\"author\"]}}, {\"changed\": {\"name\": \"book instance\", \"object\": \"4bd55570-2390-4d5f-b98f-9389e32cff0c (Python Demo 1)\", \"fields\": [\"status\"]}}, {\"changed\": {\"name\": \"book instance\", \"object\": \"b1064081-2ca1-4b50-83d9-f2caff7c5424 (Python Demo 1)\", \"fields\": [\"status\"]}}]', 8, 1),
(29, '2019-03-26 08:36:00.107663', '2', 'rafiq807', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(30, '2019-03-26 08:36:40.357906', '5', 'Python Demo 1', 2, '[{\"changed\": {\"name\": \"book instance\", \"object\": \"c98bf59c-aeb9-4e03-967f-15a112b722e3 (Python Demo 1)\", \"fields\": [\"borrower\"]}}, {\"changed\": {\"name\": \"book instance\", \"object\": \"4bd55570-2390-4d5f-b98f-9389e32cff0c (Python Demo 1)\", \"fields\": [\"borrower\"]}}, {\"changed\": {\"name\": \"book instance\", \"object\": \"b1064081-2ca1-4b50-83d9-f2caff7c5424 (Python Demo 1)\", \"fields\": [\"borrower\"]}}]', 8, 1),
(31, '2019-03-26 09:47:18.684404', '2', 'rafiq807', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(32, '2019-03-26 09:53:40.317198', '2', 'rafiq807', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(33, '2019-03-26 09:55:07.788611', '2', 'rafiq807', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(34, '2019-03-26 10:06:25.112314', '1', 'Methematical Book', 2, '[{\"changed\": {\"name\": \"book instance\", \"object\": \"bfe204b6-526e-435f-b378-d4adeb0e31ec (Methematical Book)\", \"fields\": [\"status\"]}}]', 8, 1),
(35, '2019-03-26 10:06:35.279449', '3', 'Java bangli Version', 2, '[{\"changed\": {\"name\": \"book instance\", \"object\": \"5b1aebca-3481-483a-804f-b0b3fc48cc6f (Java bangli Version)\", \"fields\": [\"status\"]}}]', 8, 1),
(36, '2019-03-27 02:27:31.934165', '3', 'Islam, Limon', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 7, 1),
(37, '2019-03-28 10:17:25.577671', '4', 'Python Demo', 2, '[{\"added\": {\"name\": \"book instance\", \"object\": \"eed93669-d5ff-4885-b10c-ae58426a61fa (Python Demo)\"}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'catalog', 'author'),
(8, 'catalog', 'book'),
(9, 'catalog', 'bookinstance'),
(10, 'catalog', 'genre'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-25 05:03:27.790531'),
(2, 'auth', '0001_initial', '2019-03-25 05:03:33.200784'),
(3, 'admin', '0001_initial', '2019-03-25 05:03:35.229148'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-25 05:03:35.276016'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-25 05:03:35.329507'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-03-25 05:03:36.030924'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-03-25 05:03:36.478972'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-03-25 05:03:37.037375'),
(9, 'auth', '0004_alter_user_username_opts', '2019-03-25 05:03:37.084201'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-03-25 05:03:37.387656'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-03-25 05:03:37.487938'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-03-25 05:03:37.525743'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-03-25 05:03:38.209157'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-03-25 05:03:38.679616'),
(15, 'catalog', '0001_initial', '2019-03-25 05:03:42.704633'),
(16, 'sessions', '0001_initial', '2019-03-25 05:03:43.111050'),
(17, 'catalog', '0002_bookinstance_borrower', '2019-03-26 08:11:59.039003'),
(18, 'catalog', '0003_auto_20190326_1610', '2019-03-26 09:11:02.232628');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04iefw2f0nzk4ebilju0pq2b5xv1j1oy', 'ZjMzYjZjMjNlZTE3NjhlNzkyOTFlY2FjZjBkZDhlZWI3ZDViN2Y4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjJmNWU3MWQwOGM2MTMyYmMwNTMwYzViM2UwMjQwMTQ3ODlmYTZkIn0=', '2019-04-08 06:20:17.061881'),
('7o0mpl5brbmx9x464s5uxtqwd744h8yl', 'ZjMzYjZjMjNlZTE3NjhlNzkyOTFlY2FjZjBkZDhlZWI3ZDViN2Y4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjJmNWU3MWQwOGM2MTMyYmMwNTMwYzViM2UwMjQwMTQ3ODlmYTZkIn0=', '2019-04-12 09:38:21.071140'),
('8z5cf1aebfzlgxjmx479z5cudlnt4s3c', 'ZGY3NGM4Y2RiNTJjNmU1MGJhZTAzNmFhYWIwN2ZkYjljZjlmNThkMzp7Im51bV92aXNpdHMiOjF9', '2019-04-09 06:51:57.408776'),
('o58njmtk0fryqk1ruk25w5lqm8oxk6bi', 'OTQyNWI4YmY4MTNlY2Y2MzI2ZmYyNWFmNDYwYjBiZGQxZmVkZWVmZDp7Im51bV92aXNpdHMiOjZ9', '2019-04-09 06:49:53.209141');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `catalog_author`
--
ALTER TABLE `catalog_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_book`
--
ALTER TABLE `catalog_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_book_author_id_b0849980_fk_catalog_author_id` (`author_id`);

--
-- Indexes for table `catalog_bookinstance`
--
ALTER TABLE `catalog_bookinstance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` (`book_id`),
  ADD KEY `catalog_bookinstance_borrower_id_0d71c37c_fk_auth_user_id` (`borrower_id`);

--
-- Indexes for table `catalog_book_genre`
--
ALTER TABLE `catalog_book_genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalog_book_genre_book_id_genre_id_d15f6922_uniq` (`book_id`,`genre_id`),
  ADD KEY `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` (`genre_id`);

--
-- Indexes for table `catalog_genre`
--
ALTER TABLE `catalog_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_author`
--
ALTER TABLE `catalog_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catalog_book`
--
ALTER TABLE `catalog_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catalog_book_genre`
--
ALTER TABLE `catalog_book_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `catalog_genre`
--
ALTER TABLE `catalog_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `catalog_book`
--
ALTER TABLE `catalog_book`
  ADD CONSTRAINT `catalog_book_author_id_b0849980_fk_catalog_author_id` FOREIGN KEY (`author_id`) REFERENCES `catalog_author` (`id`);

--
-- Constraints for table `catalog_bookinstance`
--
ALTER TABLE `catalog_bookinstance`
  ADD CONSTRAINT `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`),
  ADD CONSTRAINT `catalog_bookinstance_borrower_id_0d71c37c_fk_auth_user_id` FOREIGN KEY (`borrower_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `catalog_book_genre`
--
ALTER TABLE `catalog_book_genre`
  ADD CONSTRAINT `catalog_book_genre_book_id_e5a77c43_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`),
  ADD CONSTRAINT `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `catalog_genre` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
