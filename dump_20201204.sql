-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 06:44 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 22, 'nasrin mohamadi', 'nsn.mohamadi@gmail.com', '', '127.0.0.1', '2020-11-03 23:08:03', '2020-11-03 23:08:03', 'First Comment \r\nfirsst', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'comment', 0, 0),
(3, 58, 'Nasrin Mohammadi', 'ram@gmail.com', 'http://erewr', '127.0.0.1', '2020-11-25 20:31:47', '2020-11-25 20:31:47', 'erwerewrewrew', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress', 'yes'),
(2, 'home', 'http://127.0.0.1/wordpress', 'yes'),
(3, 'blogname', 'Nasrin Theme', 'yes'),
(4, 'blogdescription', 'This is my Nasrin Theme', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nsn.mohamadi@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:125:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:12:\"portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:42:\"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:37:\"portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:29:\"portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:50:\"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:45:\"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"field/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?field=$matches[1]&feed=$matches[2]\";s:41:\"field/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?field=$matches[1]&feed=$matches[2]\";s:22:\"field/([^/]+)/embed/?$\";s:38:\"index.php?field=$matches[1]&embed=true\";s:34:\"field/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?field=$matches[1]&paged=$matches[2]\";s:16:\"field/([^/]+)/?$\";s:27:\"index.php?field=$matches[1]\";s:49:\"software/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?software=$matches[1]&feed=$matches[2]\";s:44:\"software/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?software=$matches[1]&feed=$matches[2]\";s:25:\"software/([^/]+)/embed/?$\";s:41:\"index.php?software=$matches[1]&embed=true\";s:37:\"software/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?software=$matches[1]&paged=$matches[2]\";s:19:\"software/([^/]+)/?$\";s:30:\"index.php?software=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nasrin', 'yes'),
(41, 'stylesheet', 'nasrin', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '29', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '0', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1619194438', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:7:\"Archive\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:7:\"Archive\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:\"title\";s:7:\"Gallery\";s:3:\"ids\";a:4:{i:0;i:32;i:1;i:33;i:2;i:40;i:3;i:42;}s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:6:\"Search\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:\"title\";s:4:\"Menu\";s:8:\"nav_menu\";i:3;}i:3;a:2:{s:5:\"title\";s:4:\"Menu\";s:8:\"nav_menu\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:8:{i:1606450454;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606493651;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606493667;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606493668;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606752852;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1606936453;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606968854;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'fresh_site', '0', 'yes'),
(112, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(138, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1603643738;s:4:\"data\";a:0:{}}}', 'yes'),
(141, 'finished_updating_comment_type', '1', 'yes'),
(142, 'recently_activated', 'a:1:{s:29:\"acf-extended/acf-extended.php\";i:1606259609;}', 'yes'),
(145, 'current_theme', 'Nasrin', 'yes'),
(146, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604511842;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:10:\"nav_menu-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:10:\"archives-3\";i:2;s:10:\"nav_menu-3\";i:3;s:15:\"media_gallery-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(154, '_transient_twentyseventeen_categories', '1', 'yes'),
(158, 'theme_mods_nasrin', 'a:14:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:103:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/sharon-mccutcheon-62vi3TG5EDg-unsplash-scaled.jpg\";s:15:\"background_size\";s:4:\"auto\";s:17:\"background_preset\";s:6:\"custom\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:16:\"background_color\";s:6:\"00ff88\";s:12:\"header_image\";s:66:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:61;s:3:\"url\";s:66:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download.jpg\";s:13:\"thumbnail_url\";s:66:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download.jpg\";s:6:\"height\";i:95;s:5:\"width\";i:530;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604511806;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:10:\"nav_menu-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:10:\"archives-3\";i:2;s:10:\"nav_menu-3\";i:3;s:15:\"media_gallery-2\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(196, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":9,\"critical\":1}', 'yes'),
(213, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(214, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:10:\"nav_menu-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-3\";i:1;s:10:\"archives-3\";i:2;s:10:\"nav_menu-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:15:\"media_gallery-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(331, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"nsn.mohamadi@gmail.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1604117755;}', 'no'),
(375, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1606933098;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(438, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606426653;s:7:\"checked\";a:5:{s:14:\"magazine-elite\";s:5:\"1.0.4\";s:6:\"nasrin\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:14:\"magazine-elite\";a:6:{s:5:\"theme\";s:14:\"magazine-elite\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/magazine-elite/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/magazine-elite.1.0.4.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(440, 'theme_mods_magazine-elite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604510973;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:10:\"nav_menu-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:10:\"archives-3\";i:2;s:10:\"nav_menu-3\";i:3;s:15:\"media_gallery-2\";}s:9:\"offcanvas\";a:0:{}s:14:\"footer-col-one\";a:0:{}s:14:\"footer-col-two\";a:0:{}s:16:\"footer-col-three\";a:0:{}}}}', 'yes'),
(441, 'widget_magazine_elite_tab_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(442, 'widget_magazine_elite_social_menu_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(443, 'widget_magazine_elite_author_info_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(467, 'recovery_mode_email_last_sent', '1604599029', 'yes'),
(482, 'WPLANG', '', 'yes'),
(483, 'new_admin_email', 'nsn.mohamadi@gmail.com', 'yes'),
(499, 'category_children', 'a:0:{}', 'yes'),
(558, '_site_transient_timeout_browser_0348215151a4c646280509d77ae2365a', '1606498800', 'no'),
(559, '_site_transient_browser_0348215151a4c646280509d77ae2365a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.66\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(560, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1606498800', 'no'),
(561, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(593, 'type_children', 'a:1:{i:17;a:1:{i:0;i:20;}}', 'yes'),
(596, 'field_children', 'a:1:{i:22;a:1:{i:0;i:23;}}', 'yes'),
(621, 'acf_version', '5.9.3', 'yes'),
(655, '_site_transient_timeout_theme_roots', '1606428452', 'no'),
(656, '_site_transient_theme_roots', 'a:5:{s:14:\"magazine-elite\";s:7:\"/themes\";s:6:\"nasrin\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(657, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606426654;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(659, '_transient_doing_cron', '1606933070.3920478820800781250000', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(7, 7, '_edit_lock', '1606323701:1'),
(8, 9, '_edit_lock', '1606323819:1'),
(9, 11, '_edit_lock', '1604440183:1'),
(10, 12, '_menu_item_type', 'custom'),
(11, 12, '_menu_item_menu_item_parent', '0'),
(12, 12, '_menu_item_object_id', '12'),
(13, 12, '_menu_item_object', 'custom'),
(14, 12, '_menu_item_target', ''),
(15, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 12, '_menu_item_xfn', ''),
(17, 12, '_menu_item_url', 'http://127.0.0.1/wordpress/'),
(19, 13, '_menu_item_type', 'post_type'),
(20, 13, '_menu_item_menu_item_parent', '0'),
(21, 13, '_menu_item_object_id', '7'),
(22, 13, '_menu_item_object', 'page'),
(23, 13, '_menu_item_target', ''),
(24, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 13, '_menu_item_xfn', ''),
(26, 13, '_menu_item_url', ''),
(28, 14, '_menu_item_type', 'post_type'),
(29, 14, '_menu_item_menu_item_parent', '13'),
(30, 14, '_menu_item_object_id', '9'),
(31, 14, '_menu_item_object', 'page'),
(32, 14, '_menu_item_target', ''),
(33, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 14, '_menu_item_xfn', ''),
(35, 14, '_menu_item_url', ''),
(37, 15, '_menu_item_type', 'post_type'),
(38, 15, '_menu_item_menu_item_parent', '0'),
(39, 15, '_menu_item_object_id', '9'),
(40, 15, '_menu_item_object', 'page'),
(41, 15, '_menu_item_target', ''),
(42, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 15, '_menu_item_xfn', ''),
(44, 15, '_menu_item_url', ''),
(46, 16, '_menu_item_type', 'post_type'),
(47, 16, '_menu_item_menu_item_parent', '0'),
(48, 16, '_menu_item_object_id', '7'),
(49, 16, '_menu_item_object', 'page'),
(50, 16, '_menu_item_target', ''),
(51, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 16, '_menu_item_xfn', ''),
(53, 16, '_menu_item_url', ''),
(71, 20, '_edit_lock', '1604356834:1'),
(73, 22, '_edit_lock', '1604444233:1'),
(75, 24, '_edit_lock', '1604375670:1'),
(77, 29, '_edit_lock', '1603915013:1'),
(78, 31, '_menu_item_type', 'post_type'),
(79, 31, '_menu_item_menu_item_parent', '0'),
(80, 31, '_menu_item_object_id', '29'),
(81, 31, '_menu_item_object', 'page'),
(82, 31, '_menu_item_target', ''),
(83, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 31, '_menu_item_xfn', ''),
(85, 31, '_menu_item_url', ''),
(87, 9, '_wp_page_template', 'page-notitle.php'),
(88, 32, '_wp_attached_file', '2020/10/14.jpg'),
(89, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:14:\"2020/10/14.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"14-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"14-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"14-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1290941064\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 32, '_wp_attachment_is_custom_background', 'nasrin'),
(91, 33, '_wp_attached_file', '2020/10/1-e1603742932333.jpg'),
(92, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:75;s:4:\"file\";s:28:\"2020/10/1-e1603742932333.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1324812482\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 33, '_edit_lock', '1603743346:1'),
(95, 33, '_edit_last', '1'),
(97, 33, '_wp_attachment_is_custom_background', 'nasrin'),
(101, 33, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:474;s:6:\"height\";i:356;s:4:\"file\";s:5:\"1.jpg\";}}'),
(109, 40, '_wp_attached_file', '2020/10/3-e1603743523504.jpg'),
(110, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:69;s:4:\"file\";s:28:\"2020/10/3-e1603743523504.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1324812470\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 40, '_edit_lock', '1603743387:1'),
(112, 40, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:468;s:6:\"height\";i:324;s:4:\"file\";s:5:\"3.jpg\";}}'),
(113, 40, '_edit_last', '1'),
(114, 40, '_wp_attachment_custom_header_last_used_nasrin', '1603750023'),
(115, 40, '_wp_attachment_is_custom_header', 'nasrin'),
(117, 42, '_wp_attached_file', '2020/10/2.jpg'),
(118, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:13:\"2020/10/2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1324812464\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 42, '_wp_attachment_custom_header_last_used_nasrin', '1603749906'),
(120, 42, '_wp_attachment_is_custom_header', 'nasrin'),
(139, 24, '_thumbnail_id', '32'),
(144, 50, '_wp_attached_file', '2020/10/sharon-mccutcheon-62vi3TG5EDg-unsplash-scaled.jpg'),
(145, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:57:\"2020/10/sharon-mccutcheon-62vi3TG5EDg-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"sharon-mccutcheon-62vi3TG5EDg-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"sharon-mccutcheon-62vi3TG5EDg-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"sharon-mccutcheon-62vi3TG5EDg-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"sharon-mccutcheon-62vi3TG5EDg-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"sharon-mccutcheon-62vi3TG5EDg-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"sharon-mccutcheon-62vi3TG5EDg-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"sharon-mccutcheon-62vi3TG5EDg-unsplash.jpg\";}'),
(146, 50, '_wp_attachment_is_custom_background', 'nasrin'),
(147, 51, '_wp_trash_meta_status', 'publish'),
(148, 51, '_wp_trash_meta_time', '1603909852'),
(152, 52, '_edit_lock', '1606333415:1'),
(153, 53, '_wp_attached_file', '2020/10/Soyuz_TMA-9_launch-scaled-e1603913872356.jpg'),
(154, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:151;s:4:\"file\";s:52:\"2020/10/Soyuz_TMA-9_launch-scaled-e1603913872356.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Soyuz_TMA-9_launch-199x300.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"Soyuz_TMA-9_launch-680x1024.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Soyuz_TMA-9_launch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Soyuz_TMA-9_launch-768x1156.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"Soyuz_TMA-9_launch-1020x1536.jpg\";s:5:\"width\";i:1020;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"Soyuz_TMA-9_launch-1360x2048.jpg\";s:5:\"width\";i:1360;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"Soyuz_TMA-9_launch.jpg\";}'),
(155, 53, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1700;s:6:\"height\";i:2560;s:4:\"file\";s:29:\"Soyuz_TMA-9_launch-scaled.jpg\";}}'),
(157, 52, '_thumbnail_id', '73'),
(158, 55, '_edit_lock', '1604509555:1'),
(159, 56, '_wp_attached_file', '2020/10/M0354_000727-005_1-e1603914054353.jpg'),
(160, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:75;s:4:\"file\";s:45:\"2020/10/M0354_000727-005_1-e1603914054353.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"M0354_000727-005_1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"M0354_000727-005_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"M0354_000727-005_1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"20\";s:6:\"credit\";s:14:\"Jacques Monnin\";s:6:\"camera\";s:9:\"NIKON D3X\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1364228963\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"60\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 56, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:22:\"M0354_000727-005_1.jpg\";}}'),
(163, 55, '_thumbnail_id', '71'),
(165, 58, '_edit_lock', '1604443894:1'),
(166, 59, '_wp_attached_file', '2020/10/johannes-plenio-voQ97kezCx0-unsplash-scaled-e1603914240904.jpg'),
(167, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:67;s:4:\"file\";s:70:\"2020/10/johannes-plenio-voQ97kezCx0-unsplash-scaled-e1603914240904.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"johannes-plenio-voQ97kezCx0-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"johannes-plenio-voQ97kezCx0-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"johannes-plenio-voQ97kezCx0-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"johannes-plenio-voQ97kezCx0-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"johannes-plenio-voQ97kezCx0-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"johannes-plenio-voQ97kezCx0-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"johannes-plenio-voQ97kezCx0-unsplash.jpg\";}'),
(168, 59, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:47:\"johannes-plenio-voQ97kezCx0-unsplash-scaled.jpg\";}}'),
(170, 58, '_thumbnail_id', '72'),
(171, 61, '_wp_attached_file', '2020/10/download.jpg'),
(172, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:95;s:4:\"file\";s:20:\"2020/10/download.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"download-300x54.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"download-150x95.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 61, '_wp_attachment_custom_header_last_used_nasrin', '1603914610'),
(174, 61, '_wp_attachment_is_custom_header', 'nasrin'),
(175, 61, '_edit_lock', '1603914557:1'),
(177, 61, '_edit_last', '1'),
(179, 63, '_wp_trash_meta_status', 'publish'),
(180, 63, '_wp_trash_meta_time', '1603914610'),
(182, 64, '_edit_lock', '1604002162:1'),
(184, 64, '_thumbnail_id', '40'),
(186, 66, '_edit_lock', '1604003266:1'),
(188, 66, '_wp_trash_meta_status', 'publish'),
(189, 66, '_wp_trash_meta_time', '1604003414'),
(190, 66, '_wp_desired_post_slug', 'uytu'),
(191, 64, '_wp_trash_meta_status', 'publish'),
(192, 64, '_wp_trash_meta_time', '1604356901'),
(193, 64, '_wp_desired_post_slug', 'random-post'),
(195, 20, '_thumbnail_id', '40'),
(196, 68, '_wp_attached_file', '2020/10/8-e1604357040909.jpg'),
(197, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:65;s:4:\"file\";s:28:\"2020/10/8-e1604357040909.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 68, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:640;s:6:\"height\";i:415;s:4:\"file\";s:5:\"8.jpg\";}}'),
(200, 22, '_thumbnail_id', '70'),
(201, 70, '_wp_attached_file', '2020/10/The-Best-Pancake-Recipe-SQUARE-550x550-1.jpg'),
(202, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:52:\"2020/10/The-Best-Pancake-Recipe-SQUARE-550x550-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"The-Best-Pancake-Recipe-SQUARE-550x550-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"The-Best-Pancake-Recipe-SQUARE-550x550-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 71, '_wp_attached_file', '2020/10/M0354_000727-005_1-1.jpg'),
(205, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:287;s:4:\"file\";s:32:\"2020/10/M0354_000727-005_1-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"M0354_000727-005_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 72, '_wp_attached_file', '2020/10/johannes-plenio-voQ97kezCx0-unsplash-1-scaled.jpg'),
(208, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:57:\"2020/10/johannes-plenio-voQ97kezCx0-unsplash-1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"johannes-plenio-voQ97kezCx0-unsplash-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"johannes-plenio-voQ97kezCx0-unsplash-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"johannes-plenio-voQ97kezCx0-unsplash-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"johannes-plenio-voQ97kezCx0-unsplash-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"johannes-plenio-voQ97kezCx0-unsplash-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"johannes-plenio-voQ97kezCx0-unsplash-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"johannes-plenio-voQ97kezCx0-unsplash-1.jpg\";}'),
(210, 73, '_wp_attached_file', '2020/10/download-1.jpg'),
(211, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1411;s:4:\"file\";s:22:\"2020/10/download-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"download-1-1024x722.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:722;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"download-1-768x542.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"download-1-1536x1084.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1084;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 74, '_edit_lock', '1604509733:1'),
(215, 75, '_wp_attached_file', '2020/11/istockphoto-816864044-1024x1024-1.jpg'),
(216, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:921;s:6:\"height\";i:1024;s:4:\"file\";s:45:\"2020/11/istockphoto-816864044-1024x1024-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"istockphoto-816864044-1024x1024-1-270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"istockphoto-816864044-1024x1024-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"istockphoto-816864044-1024x1024-1-768x854.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:77:\"art palette with brushes on white. painting tools symbol. vector illustration\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:77:\"art palette with brushes on white. painting tools symbol. vector illustration\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 74, '_thumbnail_id', '75'),
(219, 77, '_edit_lock', '1606233502:1'),
(220, 78, '_wp_attached_file', '2020/11/1326948.jpg'),
(221, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:19:\"2020/11/1326948.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"1326948-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1326948-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"1326948-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 77, '_thumbnail_id', '78'),
(224, 80, '_edit_lock', '1606335966:1'),
(225, 81, '_wp_attached_file', '2020/11/fujifilm-x100v.jpg'),
(226, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1390;s:6:\"height\";i:989;s:4:\"file\";s:26:\"2020/11/fujifilm-x100v.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"fujifilm-x100v-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"fujifilm-x100v-1024x729.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:729;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"fujifilm-x100v-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"fujifilm-x100v-768x546.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 80, '_thumbnail_id', '83'),
(229, 83, '_wp_attached_file', '2020/11/fujifilm-x100v-1.jpg'),
(230, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:28:\"2020/11/fujifilm-x100v-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"fujifilm-x100v-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"fujifilm-x100v-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"fujifilm-x100v-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"fujifilm-x100v-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"fujifilm-x100v-1-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 84, '_menu_item_type', 'custom'),
(233, 84, '_menu_item_menu_item_parent', '0'),
(234, 84, '_menu_item_object_id', '84'),
(235, 84, '_menu_item_object', 'custom'),
(236, 84, '_menu_item_target', ''),
(237, 84, '_menu_item_classes', 'a:1:{i:0;s:11:\"open-search\";}'),
(238, 84, '_menu_item_xfn', ''),
(239, 84, '_menu_item_url', '#'),
(250, 90, '_edit_last', '1'),
(251, 90, '_edit_lock', '1606247884:1'),
(252, 90, '_thumbnail_id', '33'),
(253, 94, '_edit_last', '1'),
(254, 94, '_edit_lock', '1606232334:1'),
(255, 94, '_thumbnail_id', '68'),
(256, 96, '_edit_last', '1'),
(257, 96, '_edit_lock', '1606259949:1'),
(258, 96, '_thumbnail_id', '32'),
(268, 100, '_edit_lock', '1605909734:1'),
(269, 102, '_menu_item_type', 'post_type'),
(270, 102, '_menu_item_menu_item_parent', '0'),
(271, 102, '_menu_item_object_id', '100'),
(272, 102, '_menu_item_object', 'page'),
(273, 102, '_menu_item_target', ''),
(274, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 102, '_menu_item_xfn', ''),
(276, 102, '_menu_item_url', ''),
(278, 100, '_wp_page_template', 'page-portfolio-template.php'),
(279, 103, '_edit_last', '1'),
(280, 103, '_edit_lock', '1606324907:1'),
(281, 96, 'about_image', '33'),
(282, 96, '_about_image', 'field_5fbd94841693d'),
(283, 105, 'about_image', '33'),
(284, 105, '_about_image', 'field_5fbd94841693d'),
(290, 107, '_edit_last', '1'),
(291, 107, '_edit_lock', '1606326034:1'),
(293, 52, '_edit_last', '1'),
(295, 52, 'column1', 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\r\ngggggggggggggggggggggggggg\r\nyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(296, 52, '_column1', 'field_5fbe8f7cf1c87'),
(297, 109, 'column1', 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\r\ngggggggggggggggggggggggggg\r\nyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(298, 109, '_column1', 'field_5fbe8f7cf1c87'),
(299, 52, '_encloseme', '1'),
(300, 52, 'column_c', 'gfgdfgfdgfdgfdgfdgfdg\r\ndsfsdfsdfsd\r\nsdfsd'),
(301, 52, '_column_c', 'field_5fbe8f7cf1c87'),
(302, 110, 'column1', 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\r\ngggggggggggggggggggggggggg\r\nyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(303, 110, '_column1', 'field_5fbe8f7cf1c87'),
(304, 110, 'column_c', 'gfgdfgfdgfdgfdgfdgfdg\r\ndsfsdfsdfsd\r\nsdfsd'),
(305, 110, '_column_c', 'field_5fbe8f7cf1c87');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2020-10-25 18:54:35', '2020-10-25 18:54:35', '<!-- wp:paragraph -->\n<p>it is about me</p>\n<!-- /wp:paragraph -->', 'About Me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2020-10-26 19:49:34', '2020-10-26 19:49:34', '', 0, 'http://127.0.0.1/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-10-25 18:54:35', '2020-10-25 18:54:35', '', 'About Me', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-25 18:54:35', '2020-10-25 18:54:35', '', 7, 'http://127.0.0.1/wordpress/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-10-25 18:56:32', '2020-10-25 18:56:32', '<!-- wp:paragraph -->\n<p>contact us</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-10-26 19:42:00', '2020-10-26 19:42:00', '', 0, 'http://127.0.0.1/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-10-25 18:56:32', '2020-10-25 18:56:32', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-25 18:56:32', '2020-10-25 18:56:32', '', 9, 'http://127.0.0.1/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-10-25 19:45:09', '2020-10-25 19:45:09', '<!-- wp:paragraph -->\n<p>it is home❤</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-26 18:31:42', '2020-10-26 18:31:42', '', 0, 'http://127.0.0.1/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-10-25 19:38:58', '2020-10-25 19:38:58', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-11-20 21:19:11', '2020-11-20 21:19:11', '', 0, 'http://127.0.0.1/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2020-10-25 19:38:58', '2020-10-25 19:38:58', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2020-11-20 21:19:12', '2020-11-20 21:19:12', '', 0, 'http://127.0.0.1/wordpress/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2020-10-25 19:38:58', '2020-10-25 19:38:58', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2020-11-20 21:19:12', '2020-11-20 21:19:12', '', 0, 'http://127.0.0.1/wordpress/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2020-10-25 19:43:05', '2020-10-25 19:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2020-10-25 19:43:05', '2020-10-25 19:43:05', '', 0, 'http://127.0.0.1/wordpress/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2020-10-25 19:43:05', '2020-10-25 19:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-10-25 19:43:05', '2020-10-25 19:43:05', '', 0, 'http://127.0.0.1/wordpress/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2020-10-25 19:45:09', '2020-10-25 19:45:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-10-25 19:45:09', '2020-10-25 19:45:09', '', 11, 'http://127.0.0.1/wordpress/11-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-10-26 17:24:20', '2020-10-26 17:24:20', '<!-- wp:paragraph -->\n<p>The comparison of the world to a stage and people to actors long predated Shakespeare.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Juvenal\">Juvenal</a>, the ancient Roman poet, wrote one of the earliest versions of this line in his “Satire 3”: “All of Greece is a stage, and every Greek’s an actor.”&nbsp;<sup><a href=\"https://en.wikipedia.org/wiki/All_the_world%27s_a_stage#cite_note-2\">[2]</a></sup><a href=\"https://en.wikipedia.org/wiki/Richard_Edwardes\">Richard Edwards</a>\' play&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Damon_and_Pythias_(play)\">Damon and Pythias</a></em>, written in the year Shakespeare was born, contains the lines, \"Pythagoras said that this world was like a stage / Whereon many play their parts; the lookers-on, the sage\".<sup><a href=\"https://en.wikipedia.org/wiki/All_the_world%27s_a_stage#cite_note-3\">[3]</a></sup>&nbsp;When it was founded in 1599 Shakespeare\'s own theatre,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Globe_Theatre\">The Globe</a>, may have used the motto&nbsp;<em><em>Totus mundus agit histrionem</em></em>&nbsp;(All the world plays the actor), the Latin text of which is derived from a 12th-century treatise.<sup><a href=\"https://en.wikipedia.org/wiki/All_the_world%27s_a_stage#cite_note-4\">[4]</a></sup>&nbsp;Ultimately the words derive from&nbsp;<em><em>quod fere totus mundus exercet histrionem</em></em>&nbsp;(because almost the whole world are actors) attributed to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Petronius\">Petronius</a>, a phrase which had wide circulation in England at the time</p>\n<!-- /wp:paragraph -->', 'The Seven Ages of Man', '', 'publish', 'open', 'open', '', 'the-seven-ages-of-man', '', '', '2020-11-02 22:42:40', '2020-11-02 22:42:40', '', 0, 'http://127.0.0.1/wordpress/?p=20', 0, 'post', '', 0),
(21, 1, '2020-10-26 17:24:20', '2020-10-26 17:24:20', '<!-- wp:paragraph -->\n<p>The comparison of the world to a stage and people to actors long predated Shakespeare.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Juvenal\">Juvenal</a>, the ancient Roman poet, wrote one of the earliest versions of this line in his “Satire 3”: “All of Greece is a stage, and every Greek’s an actor.”&nbsp;<sup><a href=\"https://en.wikipedia.org/wiki/All_the_world%27s_a_stage#cite_note-2\">[2]</a></sup><a href=\"https://en.wikipedia.org/wiki/Richard_Edwardes\">Richard Edwards</a>\' play&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Damon_and_Pythias_(play)\">Damon and Pythias</a></em>, written in the year Shakespeare was born, contains the lines, \"Pythagoras said that this world was like a stage / Whereon many play their parts; the lookers-on, the sage\".<sup><a href=\"https://en.wikipedia.org/wiki/All_the_world%27s_a_stage#cite_note-3\">[3]</a></sup>&nbsp;When it was founded in 1599 Shakespeare\'s own theatre,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Globe_Theatre\">The Globe</a>, may have used the motto&nbsp;<em><em>Totus mundus agit histrionem</em></em>&nbsp;(All the world plays the actor), the Latin text of which is derived from a 12th-century treatise.<sup><a href=\"https://en.wikipedia.org/wiki/All_the_world%27s_a_stage#cite_note-4\">[4]</a></sup>&nbsp;Ultimately the words derive from&nbsp;<em><em>quod fere totus mundus exercet histrionem</em></em>&nbsp;(because almost the whole world are actors) attributed to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Petronius\">Petronius</a>, a phrase which had wide circulation in England at the time</p>\n<!-- /wp:paragraph -->', 'The Seven Ages of Man', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-10-26 17:24:20', '2020-10-26 17:24:20', '', 20, 'http://127.0.0.1/wordpress/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-10-26 17:27:06', '2020-10-26 17:27:06', '<!-- wp:paragraph -->\n<p><strong>Follow These&nbsp;Steps</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Mix flour, baking powder, salt, and sugar. ...</li><li>Mix milk, eggs, and oil. ...</li><li>Mix dry ingredients with wet ingredients. ...</li><li>Pre-heat the pan or skillet. ...</li><li>Add oil to pan. ...</li><li>Pour the batter into the pan. ...</li><li>Flip the&nbsp;<strong>pancakes</strong>&nbsp;when the bubbles burst.</li></ol>\n<!-- /wp:list -->', 'Pancakes Recipe', '', 'publish', 'open', 'open', '', 'pancakes-recipe', '', '', '2020-11-03 22:46:54', '2020-11-03 22:46:54', '', 0, 'http://127.0.0.1/wordpress/?p=22', 0, 'post', '', 1),
(23, 1, '2020-10-26 17:27:06', '2020-10-26 17:27:06', '<!-- wp:paragraph -->\n<p><strong>Follow These&nbsp;Steps</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Mix flour, baking powder, salt, and sugar. ...</li><li>Mix milk, eggs, and oil. ...</li><li>Mix dry ingredients with wet ingredients. ...</li><li>Pre-heat the pan or skillet. ...</li><li>Add oil to pan. ...</li><li>Pour the batter into the pan. ...</li><li>Flip the&nbsp;<strong>pancakes</strong>&nbsp;when the bubbles burst.</li></ol>\n<!-- /wp:list -->', 'Pancakes Recipe', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-10-26 17:27:06', '2020-10-26 17:27:06', '', 22, 'http://127.0.0.1/wordpress/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-10-26 17:28:15', '2020-10-26 17:28:15', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Lorem Ipsum', '', 'publish', 'open', 'open', '', 'lorem-ipsum', '', '', '2020-10-28 19:32:01', '2020-10-28 19:32:01', '', 0, 'http://127.0.0.1/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2020-10-26 17:28:15', '2020-10-26 17:28:15', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-10-26 17:28:15', '2020-10-26 17:28:15', '', 24, 'http://127.0.0.1/wordpress/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-10-26 18:31:17', '2020-10-26 18:31:17', '<!-- wp:paragraph -->\n<p>it is about me</p>\n<!-- /wp:paragraph -->', 'About Me', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-26 18:31:17', '2020-10-26 18:31:17', '', 7, 'http://127.0.0.1/wordpress/7-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-10-26 18:31:42', '2020-10-26 18:31:42', '<!-- wp:paragraph -->\n<p>it is home❤</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-10-26 18:31:42', '2020-10-26 18:31:42', '', 11, 'http://127.0.0.1/wordpress/11-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-10-26 18:32:06', '2020-10-26 18:32:06', '<!-- wp:paragraph -->\n<p>contact us</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-26 18:32:06', '2020-10-26 18:32:06', '', 9, 'http://127.0.0.1/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-10-26 18:33:55', '2020-10-26 18:33:55', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-10-26 18:33:55', '2020-10-26 18:33:55', '', 0, 'http://127.0.0.1/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-10-26 18:33:55', '2020-10-26 18:33:55', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-10-26 18:33:55', '2020-10-26 18:33:55', '', 29, 'http://127.0.0.1/wordpress/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-10-26 18:35:07', '2020-10-26 18:35:07', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-11-20 21:19:11', '2020-11-20 21:19:11', '', 0, 'http://127.0.0.1/wordpress/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2020-10-26 20:06:05', '2020-10-26 20:06:05', '', '14', '', 'inherit', 'open', 'closed', '', '14-2', '', '', '2020-10-26 20:06:05', '2020-10-26 20:06:05', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/14.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-10-26 20:06:54', '2020-10-26 20:06:54', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2020-11-24 23:19:08', '2020-11-24 23:19:08', '', 96, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-10-26 20:18:34', '2020-10-26 20:18:34', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2020-10-26 20:18:47', '2020-10-26 20:18:47', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-10-26 21:53:02', '2020-10-26 21:53:02', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2020-10-26 21:53:02', '2020-10-26 21:53:02', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-10-27 16:00:28', '2020-10-27 16:00:28', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-10-27 16:00:28', '2020-10-27 16:00:28', '', 24, 'http://127.0.0.1/wordpress/24-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-10-28 18:30:25', '2020-10-28 18:30:25', '', 'sharon-mccutcheon-62vi3TG5EDg-unsplash', '', 'inherit', 'open', 'closed', '', 'sharon-mccutcheon-62vi3tg5edg-unsplash', '', '', '2020-10-28 18:30:25', '2020-10-28 18:30:25', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/sharon-mccutcheon-62vi3TG5EDg-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-10-28 18:30:52', '2020-10-28 18:30:52', '{\n    \"nasrin::background_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/sharon-mccutcheon-62vi3TG5EDg-unsplash-scaled.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-28 18:30:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '08723d7f-3b2a-496e-aafc-da0c36e19691', '', '', '2020-10-28 18:30:52', '2020-10-28 18:30:52', '', 0, 'http://127.0.0.1/wordpress/08723d7f-3b2a-496e-aafc-da0c36e19691/', 0, 'customize_changeset', '', 0),
(52, 1, '2020-10-28 19:38:22', '2020-10-28 19:38:22', '<!-- wp:paragraph -->\n<p><em><strong>The Rocket Post</strong></em>&nbsp;is a 2004 British drama film directed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stephen_Whittaker\">Stephen Whittaker</a>&nbsp;and starring&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ulrich_Thomsen\">Ulrich Thomsen</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shauna_Macdonald_(Scottish_actress)\">Shauna Macdonald</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kevin_McKidd\">Kevin McKidd</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Patrick_Malahide\">Patrick Malahide</a>. It is set on a remote&nbsp;<a href=\"https://en.wikipedia.org/wiki/Outer_Hebrides\">Scottish island</a>&nbsp;during the late 1930s. The arrival of German&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aerospace_engineering\">rocket scientist</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;is not initially welcomed by the inhabitants of the island.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The film was shot in 2001, but its release was delayed by several years.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-1\">[1]</a></sup>&nbsp;Additional footage was shot in 2005, and the film was given a limited release in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scotland\">Scotland</a>&nbsp;the following year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The story is very loosely based on experiments in 1934 by the German inventor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;to provide a postal service to the island of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scarp,_Scotland\">Scarp</a>&nbsp;by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rocket_mail\">rocket mail</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-bbc-2\">[2]</a></sup>&nbsp;Another fictionalised account of the experiment formed the basis of a 2001 film, also called&nbsp;<em>The Rocket Post</em>, which was filmed on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Taransay\">Taransay</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-3\">[3]</a></sup>&nbsp;The film\'s original score was composed by Nigel Clarke &amp; Michael Csanyi-Wills and recorded by the Royal Philharmonic Orchestra in London.</p>\n<!-- /wp:paragraph -->', 'Rocket Post', '', 'publish', 'open', 'open', '', 'rocket-post', '', '', '2020-11-25 17:40:48', '2020-11-25 17:40:48', '', 0, 'http://127.0.0.1/wordpress/?p=52', 0, 'post', '', 0),
(53, 1, '2020-10-28 19:37:33', '2020-10-28 19:37:33', '', 'Soyuz_TMA-9_launch', '', 'inherit', 'open', 'closed', '', 'soyuz_tma-9_launch', '', '', '2020-10-28 19:37:33', '2020-10-28 19:37:33', '', 52, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/Soyuz_TMA-9_launch.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-10-28 19:38:22', '2020-10-28 19:38:22', '<!-- wp:paragraph -->\n<p><em><strong>The Rocket Post</strong></em>&nbsp;is a 2004 British drama film directed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stephen_Whittaker\">Stephen Whittaker</a>&nbsp;and starring&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ulrich_Thomsen\">Ulrich Thomsen</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shauna_Macdonald_(Scottish_actress)\">Shauna Macdonald</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kevin_McKidd\">Kevin McKidd</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Patrick_Malahide\">Patrick Malahide</a>. It is set on a remote&nbsp;<a href=\"https://en.wikipedia.org/wiki/Outer_Hebrides\">Scottish island</a>&nbsp;during the late 1930s. The arrival of German&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aerospace_engineering\">rocket scientist</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;is not initially welcomed by the inhabitants of the island.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The film was shot in 2001, but its release was delayed by several years.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-1\">[1]</a></sup>&nbsp;Additional footage was shot in 2005, and the film was given a limited release in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scotland\">Scotland</a>&nbsp;the following year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The story is very loosely based on experiments in 1934 by the German inventor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;to provide a postal service to the island of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scarp,_Scotland\">Scarp</a>&nbsp;by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rocket_mail\">rocket mail</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-bbc-2\">[2]</a></sup>&nbsp;Another fictionalised account of the experiment formed the basis of a 2001 film, also called&nbsp;<em>The Rocket Post</em>, which was filmed on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Taransay\">Taransay</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-3\">[3]</a></sup>&nbsp;The film\'s original score was composed by Nigel Clarke &amp; Michael Csanyi-Wills and recorded by the Royal Philharmonic Orchestra in London.</p>\n<!-- /wp:paragraph -->', 'Rocket Post', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-10-28 19:38:22', '2020-10-28 19:38:22', '', 52, 'http://127.0.0.1/wordpress/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-10-28 19:41:02', '2020-10-28 19:41:02', '<!-- wp:paragraph -->\n<p>An&nbsp;<strong>umbrella</strong>&nbsp;or&nbsp;<strong>parasol</strong>&nbsp;is a folding&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canopy_(building)\">canopy</a>&nbsp;supported by wooden or metal ribs that is usually mounted on a wooden, metal, or plastic pole. It is designed to protect a person against&nbsp;<a href=\"https://en.wikipedia.org/wiki/Precipitation_(meteorology)\">rain</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sunburn\">sunlight</a>. The term&nbsp;<em>umbrella</em>&nbsp;is traditionally used when protecting oneself from rain, with&nbsp;<em>parasol</em>&nbsp;used when protecting oneself from sunlight, though the terms continue to be used interchangeably. Often the difference is the material used for the canopy; some parasols are not&nbsp;<a href=\"https://en.wikipedia.org/wiki/Waterproof\">waterproof</a>. Umbrella canopies may be made of fabric or flexible plastic. There are also combinations of parasol and umbrella that are called&nbsp;<em><strong>en-tout-cas</strong></em>&nbsp;(French for \"in any case\").<sup><a href=\"https://en.wikipedia.org/wiki/Umbrella#cite_note-2\">[2]</a></sup></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Umbrellas and parasols are primarily hand-held portable devices sized for personal use. The largest hand-portable umbrellas are golf umbrellas. Umbrellas can be divided into two categories: fully collapsible umbrellas, in which the metal pole supporting the canopy retracts, making the umbrella small enough to fit in a handbag, and non-collapsible umbrellas, in which the support pole cannot retract and only the canopy can be collapsed. Another distinction can be made between manually operated umbrellas and spring-loaded automatic umbrellas, which spring open at the press of a button.</p>\n<!-- /wp:paragraph -->', 'Umbrella Post', '', 'publish', 'closed', 'closed', '', 'umbrella-post', '', '', '2020-11-03 22:59:51', '2020-11-03 22:59:51', '', 0, 'http://127.0.0.1/wordpress/?p=55', 0, 'post', '', 0),
(56, 1, '2020-10-28 19:40:47', '2020-10-28 19:40:47', '', 'M0354_000727-005_1', '', 'inherit', 'open', 'closed', '', 'm0354_000727-005_1', '', '', '2020-10-28 19:40:47', '2020-10-28 19:40:47', '', 55, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/M0354_000727-005_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-10-28 19:41:02', '2020-10-28 19:41:02', '<!-- wp:paragraph -->\n<p>An&nbsp;<strong>umbrella</strong>&nbsp;or&nbsp;<strong>parasol</strong>&nbsp;is a folding&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canopy_(building)\">canopy</a>&nbsp;supported by wooden or metal ribs that is usually mounted on a wooden, metal, or plastic pole. It is designed to protect a person against&nbsp;<a href=\"https://en.wikipedia.org/wiki/Precipitation_(meteorology)\">rain</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sunburn\">sunlight</a>. The term&nbsp;<em>umbrella</em>&nbsp;is traditionally used when protecting oneself from rain, with&nbsp;<em>parasol</em>&nbsp;used when protecting oneself from sunlight, though the terms continue to be used interchangeably. Often the difference is the material used for the canopy; some parasols are not&nbsp;<a href=\"https://en.wikipedia.org/wiki/Waterproof\">waterproof</a>. Umbrella canopies may be made of fabric or flexible plastic. There are also combinations of parasol and umbrella that are called&nbsp;<em><strong>en-tout-cas</strong></em>&nbsp;(French for \"in any case\").<sup><a href=\"https://en.wikipedia.org/wiki/Umbrella#cite_note-2\">[2]</a></sup></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Umbrellas and parasols are primarily hand-held portable devices sized for personal use. The largest hand-portable umbrellas are golf umbrellas. Umbrellas can be divided into two categories: fully collapsible umbrellas, in which the metal pole supporting the canopy retracts, making the umbrella small enough to fit in a handbag, and non-collapsible umbrellas, in which the support pole cannot retract and only the canopy can be collapsed. Another distinction can be made between manually operated umbrellas and spring-loaded automatic umbrellas, which spring open at the press of a button.</p>\n<!-- /wp:paragraph -->', 'Umbrella Post', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-10-28 19:41:02', '2020-10-28 19:41:02', '', 55, 'http://127.0.0.1/wordpress/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-10-28 19:44:10', '2020-10-28 19:44:10', '<!-- wp:paragraph -->\n<p>An&nbsp;<strong>incandescent light bulb</strong>,&nbsp;<strong>incandescent lamp</strong>&nbsp;or&nbsp;<strong>incandescent light globe</strong>&nbsp;is an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_light\">electric light</a>&nbsp;with a wire&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incandescent_light_bulb#Filament\">filament</a>&nbsp;heated until it glows. The filament is enclosed in a bulb to protect the filament from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Oxidation\">oxidation</a>. Current is supplied to the filament by terminals or wires embedded in the glass. A bulb socket provides mechanical support and electrical connections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Incandescent bulbs are manufactured in a wide range of sizes, light output, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Voltage\">voltage</a>&nbsp;ratings, from 1.5 volts to about 300 volts. They require no external&nbsp;<a href=\"https://en.wikipedia.org/wiki/Regulator_(automatic_control)\">regulating equipment</a>, have low&nbsp;<a href=\"https://en.wikipedia.org/wiki/Manufacturing_cost\">manufacturing costs</a>, and work equally well on either&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alternating_current\">alternating current</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Direct_current\">direct current</a>. As a result, the incandescent bulb became widely used in household and commercial lighting, for portable lighting such as table lamps, car&nbsp;<a href=\"https://en.wikipedia.org/wiki/Headlamp\">headlamps</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flashlight\">flashlights</a>, and for decorative and advertising lighting.</p>\n<!-- /wp:paragraph -->', 'LightBulb Post', '', 'publish', 'open', 'open', '', 'lightbulb-post', '', '', '2020-11-03 22:52:44', '2020-11-03 22:52:44', '', 0, 'http://127.0.0.1/wordpress/?p=58', 0, 'post', '', 1),
(59, 1, '2020-10-28 19:43:30', '2020-10-28 19:43:30', '', 'johannes-plenio-voQ97kezCx0-unsplash', '', 'inherit', 'open', 'closed', '', 'johannes-plenio-voq97kezcx0-unsplash', '', '', '2020-10-28 19:43:30', '2020-10-28 19:43:30', '', 58, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/johannes-plenio-voQ97kezCx0-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-10-28 19:44:10', '2020-10-28 19:44:10', '<!-- wp:paragraph -->\n<p>An&nbsp;<strong>incandescent light bulb</strong>,&nbsp;<strong>incandescent lamp</strong>&nbsp;or&nbsp;<strong>incandescent light globe</strong>&nbsp;is an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_light\">electric light</a>&nbsp;with a wire&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incandescent_light_bulb#Filament\">filament</a>&nbsp;heated until it glows. The filament is enclosed in a bulb to protect the filament from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Oxidation\">oxidation</a>. Current is supplied to the filament by terminals or wires embedded in the glass. A bulb socket provides mechanical support and electrical connections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Incandescent bulbs are manufactured in a wide range of sizes, light output, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Voltage\">voltage</a>&nbsp;ratings, from 1.5 volts to about 300 volts. They require no external&nbsp;<a href=\"https://en.wikipedia.org/wiki/Regulator_(automatic_control)\">regulating equipment</a>, have low&nbsp;<a href=\"https://en.wikipedia.org/wiki/Manufacturing_cost\">manufacturing costs</a>, and work equally well on either&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alternating_current\">alternating current</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Direct_current\">direct current</a>. As a result, the incandescent bulb became widely used in household and commercial lighting, for portable lighting such as table lamps, car&nbsp;<a href=\"https://en.wikipedia.org/wiki/Headlamp\">headlamps</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flashlight\">flashlights</a>, and for decorative and advertising lighting.</p>\n<!-- /wp:paragraph -->', 'LightBulb Post', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-10-28 19:44:10', '2020-10-28 19:44:10', '', 58, 'http://127.0.0.1/wordpress/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-10-28 19:47:39', '2020-10-28 19:47:39', '', 'header', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2020-10-28 19:51:23', '2020-10-28 19:51:23', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-10-28 19:50:10', '2020-10-28 19:50:10', '{\n    \"nasrin::header_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-28 19:50:10\"\n    },\n    \"nasrin::header_image_data\": {\n        \"value\": {\n            \"attachment_id\": 61,\n            \"url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download.jpg\",\n            \"thumbnail_url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download.jpg\",\n            \"alt_text\": \"\",\n            \"attachment_parent\": \"\",\n            \"width\": 530,\n            \"height\": 95,\n            \"timestamp\": [\n                \"1603914467\"\n            ]\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-28 19:50:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eb6d8ddd-67c1-478c-af45-cb9f81dbdfa9', '', '', '2020-10-28 19:50:10', '2020-10-28 19:50:10', '', 0, 'http://127.0.0.1/wordpress/eb6d8ddd-67c1-478c-af45-cb9f81dbdfa9/', 0, 'customize_changeset', '', 0),
(64, 1, '2020-10-29 20:05:30', '2020-10-29 20:05:30', '<!-- wp:paragraph -->\n<p>this is a random post</p>\n<!-- /wp:paragraph -->', 'Random Post', '', 'trash', 'open', 'open', '', 'random-post__trashed', '', '', '2020-11-02 22:41:41', '2020-11-02 22:41:41', '', 0, 'http://127.0.0.1/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2020-10-29 20:05:30', '2020-10-29 20:05:30', '<!-- wp:paragraph -->\n<p>this is a random post</p>\n<!-- /wp:paragraph -->', 'Random Post', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-10-29 20:05:30', '2020-10-29 20:05:30', '', 64, 'http://127.0.0.1/wordpress/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-10-29 20:29:52', '2020-10-29 20:29:52', '<!-- wp:paragraph -->\n<p>tuttut</p>\n<!-- /wp:paragraph -->', 'uytu', '', 'trash', 'open', 'open', '', 'uytu__trashed', '', '', '2020-10-29 20:30:14', '2020-10-29 20:30:14', '', 0, 'http://127.0.0.1/wordpress/?p=66', 0, 'post', '', 0),
(67, 1, '2020-10-29 20:29:52', '2020-10-29 20:29:52', '<!-- wp:paragraph -->\n<p>tuttut</p>\n<!-- /wp:paragraph -->', 'uytu', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-10-29 20:29:52', '2020-10-29 20:29:52', '', 66, 'http://127.0.0.1/wordpress/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-11-02 22:43:52', '2020-11-02 22:43:52', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2020-11-02 22:43:52', '2020-11-02 22:43:52', '', 22, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-11-03 22:45:31', '2020-11-03 22:45:31', '', 'The-Best-Pancake-Recipe-SQUARE-550x550', '', 'inherit', 'open', 'closed', '', 'the-best-pancake-recipe-square-550x550', '', '', '2020-11-03 22:45:31', '2020-11-03 22:45:31', '', 22, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/The-Best-Pancake-Recipe-SQUARE-550x550-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-11-03 22:48:04', '2020-11-03 22:48:04', '', 'M0354_000727-005_1', '', 'inherit', 'open', 'closed', '', 'm0354_000727-005_1-2', '', '', '2020-11-03 22:48:04', '2020-11-03 22:48:04', '', 55, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/M0354_000727-005_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-11-03 22:52:25', '2020-11-03 22:52:25', '', 'johannes-plenio-voQ97kezCx0-unsplash', '', 'inherit', 'open', 'closed', '', 'johannes-plenio-voq97kezcx0-unsplash-2', '', '', '2020-11-03 22:52:25', '2020-11-03 22:52:25', '', 58, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/johannes-plenio-voQ97kezCx0-unsplash-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-11-03 22:54:14', '2020-11-03 22:54:14', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2020-11-03 22:54:14', '2020-11-03 22:54:14', '', 52, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/10/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-11-04 17:11:03', '2020-11-04 17:11:03', '<!-- wp:paragraph -->\n<p>For the longest time, my choice when I just needed some columns to fill in with filler text[1] was&nbsp;<strong><a href=\"https://baconipsum.com/\">Bacon Ipsum</a></strong>, which is always fun. The companion to that is of course&nbsp;<strong><a href=\"http://veggieipsum.com/\">Veggie Ipsum</a></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But now I think I may indeed use \"hipster ipsum\". I mean... I just smile when I read through the text. :-)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>P.S. I noticed in searching today that there is a WordPress plugin (of course!) called \"<a href=\"https://wordpress.org/plugins/any-ipsum/\">AnyIpsum\"</a>&nbsp;that lets you create your own lorem impsum generator</p>\n<!-- /wp:paragraph -->', 'Hipster Ipsum', '', 'publish', 'open', 'open', '', 'hipster-ipsum', '', '', '2020-11-04 17:11:03', '2020-11-04 17:11:03', '', 0, 'http://127.0.0.1/wordpress/?p=74', 0, 'post', '', 0),
(75, 1, '2020-11-04 17:10:47', '2020-11-04 17:10:47', '', 'art palette with brushes on white. painting tools symbol. vector illustration', 'art palette with brushes on white. painting tools symbol. vector illustration', 'inherit', 'open', 'closed', '', 'art-palette-with-brushes-on-white-painting-tools-symbol-vector-illustration', '', '', '2020-11-04 17:10:47', '2020-11-04 17:10:47', '', 74, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/11/istockphoto-816864044-1024x1024-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-11-04 17:11:03', '2020-11-04 17:11:03', '<!-- wp:paragraph -->\n<p>For the longest time, my choice when I just needed some columns to fill in with filler text[1] was&nbsp;<strong><a href=\"https://baconipsum.com/\">Bacon Ipsum</a></strong>, which is always fun. The companion to that is of course&nbsp;<strong><a href=\"http://veggieipsum.com/\">Veggie Ipsum</a></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But now I think I may indeed use \"hipster ipsum\". I mean... I just smile when I read through the text. :-)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>P.S. I noticed in searching today that there is a WordPress plugin (of course!) called \"<a href=\"https://wordpress.org/plugins/any-ipsum/\">AnyIpsum\"</a>&nbsp;that lets you create your own lorem impsum generator</p>\n<!-- /wp:paragraph -->', 'Hipster Ipsum', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-11-04 17:11:03', '2020-11-04 17:11:03', '', 74, 'http://127.0.0.1/wordpress/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-11-04 17:13:15', '2020-11-04 17:13:15', '<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->', 'Random Blog Post', '', 'publish', 'open', 'open', '', 'random-blog-post', '', '', '2020-11-04 17:13:15', '2020-11-04 17:13:15', '', 0, 'http://127.0.0.1/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2020-11-04 17:12:48', '2020-11-04 17:12:48', '', '1326948', '', 'inherit', 'open', 'closed', '', '1326948', '', '', '2020-11-04 17:12:48', '2020-11-04 17:12:48', '', 77, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/11/1326948.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-11-04 17:13:15', '2020-11-04 17:13:15', '<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->', 'Random Blog Post', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2020-11-04 17:13:15', '2020-11-04 17:13:15', '', 77, 'http://127.0.0.1/wordpress/77-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-11-04 17:16:03', '2020-11-04 17:16:03', '<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->', 'Last Blog Post', '', 'publish', 'open', 'open', '', 'last-blog-post', '', '', '2020-11-04 19:03:35', '2020-11-04 19:03:35', '', 0, 'http://127.0.0.1/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2020-11-04 17:15:53', '2020-11-04 17:15:53', '', 'fujifilm-x100v', '', 'inherit', 'open', 'closed', '', 'fujifilm-x100v', '', '', '2020-11-04 17:15:53', '2020-11-04 17:15:53', '', 80, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/11/fujifilm-x100v.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-11-04 17:16:03', '2020-11-04 17:16:03', '<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->', 'Last Blog Post', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-11-04 17:16:03', '2020-11-04 17:16:03', '', 80, 'http://127.0.0.1/wordpress/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-11-04 19:03:30', '2020-11-04 19:03:30', '', 'fujifilm-x100v', '', 'inherit', 'open', 'closed', '', 'fujifilm-x100v-2', '', '', '2020-11-04 19:03:30', '2020-11-04 19:03:30', '', 80, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/11/fujifilm-x100v-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-11-04 22:14:17', '2020-11-04 22:14:17', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2020-11-20 21:19:12', '2020-11-20 21:19:12', '', 0, 'http://127.0.0.1/wordpress/?p=84', 6, 'nav_menu_item', '', 0),
(90, 1, '2020-11-16 23:44:05', '2020-11-16 23:44:05', 'it is about Developer\'s life', 'Developer\'s life', '', 'publish', 'closed', 'closed', '', 'logo-for-business-a', '', '', '2020-11-24 16:05:58', '2020-11-24 16:05:58', '', 0, 'http://127.0.0.1/wordpress/?post_type=portfolio&#038;p=90', 0, 'portfolio', '', 0),
(91, 1, '2020-11-16 23:44:05', '2020-11-16 23:44:05', '', 'Logo for Business A', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2020-11-16 23:44:05', '2020-11-16 23:44:05', '', 90, 'http://127.0.0.1/wordpress/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-11-16 23:52:23', '2020-11-16 23:52:23', 'it is about Developer\'s life', 'Developer\'s life', '', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2020-11-16 23:52:23', '2020-11-16 23:52:23', '', 90, 'http://127.0.0.1/wordpress/90-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2020-11-16 23:52:28', '2020-11-16 23:52:28', 'it is about Developer\'s life', 'Developer\'s life', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2020-11-16 23:52:28', '2020-11-16 23:52:28', '', 90, 'http://127.0.0.1/wordpress/90-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-11-16 23:53:39', '2020-11-16 23:53:39', 'it is about Nerd Continuity', 'Nerd Continuity', '', 'publish', 'closed', 'closed', '', 'nerd-continuity', '', '', '2020-11-24 15:41:11', '2020-11-24 15:41:11', '', 0, 'http://127.0.0.1/wordpress/?post_type=portfolio&#038;p=94', 0, 'portfolio', '', 0),
(95, 1, '2020-11-16 23:53:39', '2020-11-16 23:53:39', 'it is about Nerd Continuity', 'Nerd Continuity', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-11-16 23:53:39', '2020-11-16 23:53:39', '', 94, 'http://127.0.0.1/wordpress/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-11-16 23:54:25', '2020-11-16 23:54:25', 'it is about Krita new Logo', 'Krita new Logo', '', 'publish', 'closed', 'closed', '', 'krita-new-logo', '', '', '2020-11-24 23:19:08', '2020-11-24 23:19:08', '', 0, 'http://127.0.0.1/wordpress/?post_type=portfolio&#038;p=96', 0, 'portfolio', '', 0),
(97, 1, '2020-11-16 23:54:25', '2020-11-16 23:54:25', 'it is about Krita new Logo', 'Krita new Logo', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-11-16 23:54:25', '2020-11-16 23:54:25', '', 96, 'http://127.0.0.1/wordpress/96-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-11-20 21:18:45', '2020-11-20 21:18:45', '', 'Work', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2020-11-20 21:32:45', '2020-11-20 21:32:45', '', 0, 'http://127.0.0.1/wordpress/?page_id=100', 0, 'page', '', 0),
(101, 1, '2020-11-20 21:18:45', '2020-11-20 21:18:45', '', 'Work', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2020-11-20 21:18:45', '2020-11-20 21:18:45', '', 100, 'http://127.0.0.1/wordpress/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-11-20 21:19:11', '2020-11-20 21:19:11', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2020-11-20 21:19:11', '2020-11-20 21:19:11', '', 0, 'http://127.0.0.1/wordpress/?p=102', 3, 'nav_menu_item', '', 0),
(103, 1, '2020-11-24 23:18:16', '2020-11-24 23:18:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'image2', 'image2', 'publish', 'closed', 'closed', '', 'group_5fbd947a83589', '', '', '2020-11-24 23:18:34', '2020-11-24 23:18:34', '', 0, 'http://127.0.0.1/wordpress/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2020-11-24 23:18:16', '2020-11-24 23:18:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'about image', 'about_image', 'publish', 'closed', 'closed', '', 'field_5fbd94841693d', '', '', '2020-11-24 23:18:16', '2020-11-24 23:18:16', '', 103, 'http://127.0.0.1/wordpress/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2020-11-24 23:19:08', '2020-11-24 23:19:08', 'it is about Krita new Logo', 'Krita new Logo', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-11-24 23:19:08', '2020-11-24 23:19:08', '', 96, 'http://127.0.0.1/wordpress/96-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-11-25 17:09:34', '2020-11-25 17:09:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'columns', 'columns', 'publish', 'closed', 'closed', '', 'group_5fbe8f6b8f127', '', '', '2020-11-25 17:24:52', '2020-11-25 17:24:52', '', 0, 'http://127.0.0.1/wordpress/?post_type=acf-field-group&#038;p=107', 0, 'acf-field-group', '', 0),
(108, 1, '2020-11-25 17:09:34', '2020-11-25 17:09:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'column', 'column_c', 'publish', 'closed', 'closed', '', 'field_5fbe8f7cf1c87', '', '', '2020-11-25 17:24:52', '2020-11-25 17:24:52', '', 107, 'http://127.0.0.1/wordpress/?post_type=acf-field&#038;p=108', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(109, 1, '2020-11-25 17:10:31', '2020-11-25 17:10:31', '<!-- wp:paragraph -->\n<p><em><strong>The Rocket Post</strong></em>&nbsp;is a 2004 British drama film directed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stephen_Whittaker\">Stephen Whittaker</a>&nbsp;and starring&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ulrich_Thomsen\">Ulrich Thomsen</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shauna_Macdonald_(Scottish_actress)\">Shauna Macdonald</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kevin_McKidd\">Kevin McKidd</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Patrick_Malahide\">Patrick Malahide</a>. It is set on a remote&nbsp;<a href=\"https://en.wikipedia.org/wiki/Outer_Hebrides\">Scottish island</a>&nbsp;during the late 1930s. The arrival of German&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aerospace_engineering\">rocket scientist</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;is not initially welcomed by the inhabitants of the island.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The film was shot in 2001, but its release was delayed by several years.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-1\">[1]</a></sup>&nbsp;Additional footage was shot in 2005, and the film was given a limited release in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scotland\">Scotland</a>&nbsp;the following year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The story is very loosely based on experiments in 1934 by the German inventor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;to provide a postal service to the island of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scarp,_Scotland\">Scarp</a>&nbsp;by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rocket_mail\">rocket mail</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-bbc-2\">[2]</a></sup>&nbsp;Another fictionalised account of the experiment formed the basis of a 2001 film, also called&nbsp;<em>The Rocket Post</em>, which was filmed on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Taransay\">Taransay</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-3\">[3]</a></sup>&nbsp;The film\'s original score was composed by Nigel Clarke &amp; Michael Csanyi-Wills and recorded by the Royal Philharmonic Orchestra in London.</p>\n<!-- /wp:paragraph -->', 'Rocket Post', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-11-25 17:10:31', '2020-11-25 17:10:31', '', 52, 'http://127.0.0.1/wordpress/52-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-11-25 17:40:48', '2020-11-25 17:40:48', '<!-- wp:paragraph -->\n<p><em><strong>The Rocket Post</strong></em>&nbsp;is a 2004 British drama film directed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stephen_Whittaker\">Stephen Whittaker</a>&nbsp;and starring&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ulrich_Thomsen\">Ulrich Thomsen</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shauna_Macdonald_(Scottish_actress)\">Shauna Macdonald</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kevin_McKidd\">Kevin McKidd</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Patrick_Malahide\">Patrick Malahide</a>. It is set on a remote&nbsp;<a href=\"https://en.wikipedia.org/wiki/Outer_Hebrides\">Scottish island</a>&nbsp;during the late 1930s. The arrival of German&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aerospace_engineering\">rocket scientist</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;is not initially welcomed by the inhabitants of the island.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The film was shot in 2001, but its release was delayed by several years.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-1\">[1]</a></sup>&nbsp;Additional footage was shot in 2005, and the film was given a limited release in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scotland\">Scotland</a>&nbsp;the following year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The story is very loosely based on experiments in 1934 by the German inventor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gerhard_Zucker\">Gerhard Zucker</a>&nbsp;to provide a postal service to the island of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scarp,_Scotland\">Scarp</a>&nbsp;by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rocket_mail\">rocket mail</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-bbc-2\">[2]</a></sup>&nbsp;Another fictionalised account of the experiment formed the basis of a 2001 film, also called&nbsp;<em>The Rocket Post</em>, which was filmed on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Taransay\">Taransay</a>.<sup><a href=\"https://en.wikipedia.org/wiki/The_Rocket_Post#cite_note-3\">[3]</a></sup>&nbsp;The film\'s original score was composed by Nigel Clarke &amp; Michael Csanyi-Wills and recorded by the Royal Philharmonic Orchestra in London.</p>\n<!-- /wp:paragraph -->', 'Rocket Post', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-11-25 17:40:48', '2020-11-25 17:40:48', '', 52, 'http://127.0.0.1/wordpress/52-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Navigation', 'main-navigation', 0),
(3, 'footer menu', 'footer-menu', 0),
(5, 'post-format-aside', 'post-format-aside', 0),
(6, 'post-format-image', 'post-format-image', 0),
(7, 'Tutorials', 'tutorials', 0),
(8, 'News', 'news', 0),
(9, 'Reviews', 'reviews', 0),
(10, 'Random', 'random', 0),
(11, 'recipe', 'recipe', 0),
(12, 'pancakes', 'pancakes', 0),
(13, 'guid', 'guid', 0),
(14, 'guide', 'guide', 0),
(15, 'how-to', 'how-to', 0),
(16, 'kitchen', 'kitchen', 0),
(17, 'Design', 'design', 0),
(18, 'Development', 'development', 0),
(19, 'Print', 'print', 0),
(20, 'Logo Design', 'logo-design', 0),
(21, 'Development', 'development', 0),
(22, 'Design', 'design', 0),
(23, 'Logo Design', 'logo-design', 0),
(24, 'illustrator', 'illustrator', 0),
(25, 'Photoshop', 'photoshop', 0),
(26, 'Krita', 'krita', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 3, 0),
(16, 3, 0),
(20, 8, 0),
(22, 5, 0),
(22, 7, 0),
(22, 11, 0),
(22, 12, 0),
(22, 14, 0),
(22, 15, 0),
(22, 16, 0),
(24, 6, 0),
(24, 7, 0),
(31, 2, 0),
(52, 6, 0),
(52, 8, 0),
(55, 9, 0),
(58, 7, 0),
(64, 7, 0),
(64, 10, 0),
(66, 7, 0),
(74, 10, 0),
(77, 7, 0),
(80, 8, 0),
(84, 2, 0),
(90, 17, 0),
(90, 22, 0),
(90, 23, 0),
(90, 24, 0),
(90, 25, 0),
(90, 26, 0),
(94, 21, 0),
(96, 23, 0),
(102, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 2),
(5, 5, 'post_format', '', 0, 1),
(6, 6, 'post_format', '', 0, 2),
(7, 7, 'category', 'List of Tutorials and Tips for Developers and Designers ', 0, 4),
(8, 8, 'category', '', 0, 3),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'type', '', 0, 1),
(18, 18, 'type', '', 0, 0),
(19, 19, 'type', '', 0, 0),
(20, 20, 'type', '', 17, 0),
(21, 21, 'field', '', 0, 1),
(22, 22, 'field', '', 0, 1),
(23, 23, 'field', '', 22, 2),
(24, 24, 'software', '', 0, 1),
(25, 25, 'software', '', 0, 1),
(26, 26, 'software', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'session_tokens', 'a:1:{s:64:\"7bf1f7f536ff8894f3233deac4885f3859c2d9e922a8e98fde28059743ffee5d\";a:4:{s:10:\"expiration\";i:1606404247;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1606231447;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '85'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(18, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_site_health,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(23, 1, 'wp_user-settings-time', '1606259589'),
(24, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5fbe8e040c28b\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_page', '2'),
(26, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_5fbe8e040c28b\";}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BWCV8UWLn6pC1l0fBFO4jigmYvBab1.', 'admin', 'nsn.mohamadi@gmail.com', 'http://127.0.0.1/wordpress', '2020-10-25 16:14:13', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
