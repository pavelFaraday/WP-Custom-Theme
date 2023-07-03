-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 03, 2023 at 06:09 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coalitiontest.local`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-27 08:01:35', '2023-06-27 08:01:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/coalitiontest.local', 'yes'),
(2, 'home', 'http://localhost:8888/coalitiontest.local', 'yes'),
(3, 'blogname', 'coalitiontest.local', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'giorgi.epitashvili@mc-zero.one', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:35:\"insert-headers-and-footers/ihaf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ct-custom', 'yes'),
(41, 'stylesheet', 'ct-custom', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1703404895', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpcode_edit_snippets\";b:1;s:24:\"wpcode_activate_snippets\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1688410895;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1688414495;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688414518;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688457695;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688457718;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688457719;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688495754;a:1:{s:26:\"wpcode_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1688544095;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1688407559;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(126, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1687852965;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(131, '_site_transient_timeout_browser_5f0ff5d8799ed4c0ed355fa474a7bbc2', '1688457718', 'no'),
(132, '_site_transient_browser_5f0ff5d8799ed4c0ed355fa474a7bbc2', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_ecfa741d55b7b1a85bd61a2307877c8c', '1688457719', 'no'),
(134, '_site_transient_php_check_ecfa741d55b7b1a85bd61a2307877c8c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(151, 'current_theme', 'CT Custom', 'yes'),
(152, 'theme_mods_ct-custom', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:78;s:11:\"custom_logo\";s:0:\"\";s:16:\"background_color\";s:6:\"ffffff\";s:12:\"header_image\";s:13:\"remove-header\";}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(173, 'theme_logo', 'http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/Starbucks-logo-3.png', 'yes'),
(174, 'theme_phone_number', 'vfbgfb', 'yes'),
(175, 'theme_address', 'cfdcf', 'yes'),
(176, 'theme_fax_number', 'cdcdc', 'yes'),
(177, 'theme_social_links', 'vgrvtv', 'yes'),
(184, 'recovery_mode_email_last_sent', '1687860295', 'yes'),
(192, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(193, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(202, 'recently_activated', 'a:0:{}', 'yes'),
(207, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1687865762;s:7:\"version\";s:5:\"5.7.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(210, 'site_logo', '12', 'yes'),
(221, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688407561;s:7:\"checked\";a:1:{s:9:\"ct-custom\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(223, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688407561;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:35:\"insert-headers-and-footers/ihaf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/insert-headers-and-footers\";s:4:\"slug\";s:26:\"insert-headers-and-footers\";s:6:\"plugin\";s:35:\"insert-headers-and-footers/ihaf.php\";s:11:\"new_version\";s:6:\"2.0.13\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/insert-headers-and-footers/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/insert-headers-and-footers.2.0.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-256x256.png?rev=2758516\";s:2:\"1x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-128x128.png?rev=2758516\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/insert-headers-and-footers/assets/banner-1544x500.png?rev=2758516\";s:2:\"1x\";s:81:\"https://ps.w.org/insert-headers-and-footers/assets/banner-772x250.png?rev=2758516\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.7\";s:35:\"insert-headers-and-footers/ihaf.php\";s:6:\"2.0.13\";}}', 'no'),
(224, 'wpcode_usage_tracking_config', 'a:6:{s:3:\"day\";i:2;s:4:\"hour\";i:18;s:6:\"minute\";i:35;s:6:\"second\";i:54;s:6:\"offset\";i:239754;s:8:\"initsend\";i:1688495754;}', 'no'),
(225, 'ihaf_activated', 'a:2:{s:6:\"wpcode\";i:1687871211;s:7:\"version\";s:6:\"2.0.13\";}', 'yes'),
(226, 'wpcode_snippets', 'a:3:{s:15:\"after_paragraph\";a:0:{}s:16:\"site_wide_header\";a:1:{i:0;a:12:{s:2:\"id\";i:116;s:5:\"title\";s:4:\"test\";s:4:\"code\";s:33:\"body {\r\n	color: red!important;\r\n}\";s:9:\"code_type\";s:3:\"css\";s:8:\"location\";s:16:\"site_wide_header\";s:11:\"auto_insert\";i:1;s:13:\"insert_number\";i:1;s:9:\"use_rules\";b:0;s:5:\"rules\";a:0:{}s:8:\"priority\";i:10000;s:14:\"location_extra\";s:0:\"\";s:20:\"shortcode_attributes\";a:0:{}}}s:10:\"everywhere\";a:0:{}}', 'yes'),
(227, 'wpcode_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1687871211;s:9:\"dismissed\";b:0;}}', 'yes'),
(229, 'wpcode_notifications', 'a:4:{s:6:\"update\";i:1687871222;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'no'),
(230, '_transient_wpcode_used_library_snippets', 'a:1:{i:12;i:115;}', 'yes'),
(235, '_site_transient_timeout_theme_roots', '1688409360', 'no'),
(236, '_site_transient_theme_roots', 'a:1:{s:9:\"ct-custom\";s:7:\"/themes\";}', 'no'),
(237, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":0}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 3, '_wp_trash_meta_status', 'draft'),
(6, 3, '_wp_trash_meta_time', '1687853394'),
(7, 3, '_wp_desired_post_slug', 'privacy-policy'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1687853394'),
(10, 2, '_wp_desired_post_slug', 'sample-page'),
(11, 8, '_edit_lock', '1687869173:1'),
(12, 10, '_wp_trash_meta_status', 'publish'),
(13, 10, '_wp_trash_meta_time', '1687853437'),
(14, 11, '_wp_attached_file', '2023/06/Starbucks-logo.png'),
(15, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3500;s:6:\"height\";i:3500;s:4:\"file\";s:26:\"2023/06/Starbucks-logo.png\";s:8:\"filesize\";i:651141;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Starbucks-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51916;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"Starbucks-logo-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:188177;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Starbucks-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23563;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Starbucks-logo-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:259361;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"Starbucks-logo-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:925618;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"Starbucks-logo-2048x2048.png\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:450093;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 12, '_wp_attached_file', '2023/06/cropped-Starbucks-logo.png'),
(17, 12, '_wp_attachment_context', 'custom-logo'),
(18, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3500;s:6:\"height\";i:3500;s:4:\"file\";s:34:\"2023/06/cropped-Starbucks-logo.png\";s:8:\"filesize\";i:649946;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"cropped-Starbucks-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51916;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"cropped-Starbucks-logo-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:188177;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"cropped-Starbucks-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23563;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"cropped-Starbucks-logo-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:259361;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"cropped-Starbucks-logo-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:925618;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:36:\"cropped-Starbucks-logo-2048x2048.png\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:450093;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_wp_trash_meta_status', 'publish'),
(20, 13, '_wp_trash_meta_time', '1687854878'),
(21, 14, '_edit_lock', '1687854881:1'),
(22, 14, '_wp_trash_meta_status', 'publish'),
(23, 14, '_wp_trash_meta_time', '1687854886'),
(24, 15, '_menu_item_type', 'post_type'),
(25, 15, '_menu_item_menu_item_parent', '0'),
(26, 15, '_menu_item_object_id', '8'),
(27, 15, '_menu_item_object', 'page'),
(28, 15, '_menu_item_target', ''),
(29, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 15, '_menu_item_xfn', ''),
(31, 15, '_menu_item_url', ''),
(32, 15, '_menu_item_orphaned', '1687854967'),
(33, 8, '_wp_page_template', 'homepage.php'),
(34, 16, '_wp_trash_meta_status', 'publish'),
(35, 16, '_wp_trash_meta_time', '1687860562'),
(36, 17, '_menu_item_type', 'post_type'),
(37, 17, '_menu_item_menu_item_parent', '0'),
(38, 17, '_menu_item_object_id', '8'),
(39, 17, '_menu_item_object', 'page'),
(40, 17, '_menu_item_target', ''),
(41, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 17, '_menu_item_xfn', ''),
(43, 17, '_menu_item_url', ''),
(44, 17, '_menu_item_orphaned', '1687864021'),
(45, 18, '_edit_lock', '1687863929:1'),
(46, 20, '_edit_lock', '1687863955:1'),
(47, 22, '_edit_lock', '1687863969:1'),
(48, 24, '_edit_lock', '1687863994:1'),
(49, 12, '_oembed_4a9525a57287b968681f9a3ba69c6fd6', '{{unknown}}'),
(50, 26, '_edit_lock', '1687864003:1'),
(51, 28, '_edit_lock', '1687864014:1'),
(52, 30, '_edit_lock', '1687864026:1'),
(53, 32, '_menu_item_type', 'post_type'),
(54, 32, '_menu_item_menu_item_parent', '0'),
(55, 32, '_menu_item_object_id', '8'),
(56, 32, '_menu_item_object', 'page'),
(57, 32, '_menu_item_target', ''),
(58, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 32, '_menu_item_xfn', ''),
(60, 32, '_menu_item_url', ''),
(61, 32, '_menu_item_orphaned', '1687864223'),
(62, 33, '_menu_item_type', 'post_type'),
(63, 33, '_menu_item_menu_item_parent', '0'),
(64, 33, '_menu_item_object_id', '18'),
(65, 33, '_menu_item_object', 'page'),
(66, 33, '_menu_item_target', ''),
(67, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 33, '_menu_item_xfn', ''),
(69, 33, '_menu_item_url', ''),
(70, 33, '_menu_item_orphaned', '1687864223'),
(71, 34, '_menu_item_type', 'post_type'),
(72, 34, '_menu_item_menu_item_parent', '0'),
(73, 34, '_menu_item_object_id', '20'),
(74, 34, '_menu_item_object', 'page'),
(75, 34, '_menu_item_target', ''),
(76, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 34, '_menu_item_xfn', ''),
(78, 34, '_menu_item_url', ''),
(79, 34, '_menu_item_orphaned', '1687864223'),
(80, 35, '_menu_item_type', 'post_type'),
(81, 35, '_menu_item_menu_item_parent', '0'),
(82, 35, '_menu_item_object_id', '22'),
(83, 35, '_menu_item_object', 'page'),
(84, 35, '_menu_item_target', ''),
(85, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 35, '_menu_item_xfn', ''),
(87, 35, '_menu_item_url', ''),
(88, 35, '_menu_item_orphaned', '1687864223'),
(89, 36, '_menu_item_type', 'post_type'),
(90, 36, '_menu_item_menu_item_parent', '0'),
(91, 36, '_menu_item_object_id', '24'),
(92, 36, '_menu_item_object', 'page'),
(93, 36, '_menu_item_target', ''),
(94, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 36, '_menu_item_xfn', ''),
(96, 36, '_menu_item_url', ''),
(97, 36, '_menu_item_orphaned', '1687864223'),
(98, 37, '_menu_item_type', 'post_type'),
(99, 37, '_menu_item_menu_item_parent', '0'),
(100, 37, '_menu_item_object_id', '26'),
(101, 37, '_menu_item_object', 'page'),
(102, 37, '_menu_item_target', ''),
(103, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 37, '_menu_item_xfn', ''),
(105, 37, '_menu_item_url', ''),
(106, 37, '_menu_item_orphaned', '1687864223'),
(107, 38, '_menu_item_type', 'post_type'),
(108, 38, '_menu_item_menu_item_parent', '0'),
(109, 38, '_menu_item_object_id', '28'),
(110, 38, '_menu_item_object', 'page'),
(111, 38, '_menu_item_target', ''),
(112, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 38, '_menu_item_xfn', ''),
(114, 38, '_menu_item_url', ''),
(115, 38, '_menu_item_orphaned', '1687864223'),
(116, 39, '_menu_item_type', 'post_type'),
(117, 39, '_menu_item_menu_item_parent', '0'),
(118, 39, '_menu_item_object_id', '30'),
(119, 39, '_menu_item_object', 'page'),
(120, 39, '_menu_item_target', ''),
(121, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 39, '_menu_item_xfn', ''),
(123, 39, '_menu_item_url', ''),
(124, 39, '_menu_item_orphaned', '1687864223'),
(125, 40, '_edit_lock', '1687864106:1'),
(126, 43, '_edit_lock', '1687864116:1'),
(127, 45, '_edit_lock', '1687864127:1'),
(128, 47, '_menu_item_type', 'post_type'),
(129, 47, '_menu_item_menu_item_parent', '0'),
(130, 47, '_menu_item_object_id', '8'),
(131, 47, '_menu_item_object', 'page'),
(132, 47, '_menu_item_target', ''),
(133, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 47, '_menu_item_xfn', ''),
(135, 47, '_menu_item_url', ''),
(137, 48, '_menu_item_type', 'post_type'),
(138, 48, '_menu_item_menu_item_parent', '51'),
(139, 48, '_menu_item_object_id', '40'),
(140, 48, '_menu_item_object', 'page'),
(141, 48, '_menu_item_target', ''),
(142, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 48, '_menu_item_xfn', ''),
(144, 48, '_menu_item_url', ''),
(146, 49, '_menu_item_type', 'post_type'),
(147, 49, '_menu_item_menu_item_parent', '51'),
(148, 49, '_menu_item_object_id', '43'),
(149, 49, '_menu_item_object', 'page'),
(150, 49, '_menu_item_target', ''),
(151, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 49, '_menu_item_xfn', ''),
(153, 49, '_menu_item_url', ''),
(155, 50, '_menu_item_type', 'post_type'),
(156, 50, '_menu_item_menu_item_parent', '52'),
(157, 50, '_menu_item_object_id', '45'),
(158, 50, '_menu_item_object', 'page'),
(159, 50, '_menu_item_target', ''),
(160, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 50, '_menu_item_xfn', ''),
(162, 50, '_menu_item_url', ''),
(164, 51, '_menu_item_type', 'post_type'),
(165, 51, '_menu_item_menu_item_parent', '0'),
(166, 51, '_menu_item_object_id', '18'),
(167, 51, '_menu_item_object', 'page'),
(168, 51, '_menu_item_target', ''),
(169, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 51, '_menu_item_xfn', ''),
(171, 51, '_menu_item_url', ''),
(173, 52, '_menu_item_type', 'post_type'),
(174, 52, '_menu_item_menu_item_parent', '0'),
(175, 52, '_menu_item_object_id', '20'),
(176, 52, '_menu_item_object', 'page'),
(177, 52, '_menu_item_target', ''),
(178, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 52, '_menu_item_xfn', ''),
(180, 52, '_menu_item_url', ''),
(182, 53, '_menu_item_type', 'post_type'),
(183, 53, '_menu_item_menu_item_parent', '0'),
(184, 53, '_menu_item_object_id', '22'),
(185, 53, '_menu_item_object', 'page'),
(186, 53, '_menu_item_target', ''),
(187, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 53, '_menu_item_xfn', ''),
(189, 53, '_menu_item_url', ''),
(191, 54, '_menu_item_type', 'post_type'),
(192, 54, '_menu_item_menu_item_parent', '0'),
(193, 54, '_menu_item_object_id', '24'),
(194, 54, '_menu_item_object', 'page'),
(195, 54, '_menu_item_target', ''),
(196, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 54, '_menu_item_xfn', ''),
(198, 54, '_menu_item_url', ''),
(200, 55, '_menu_item_type', 'post_type'),
(201, 55, '_menu_item_menu_item_parent', '0'),
(202, 55, '_menu_item_object_id', '26'),
(203, 55, '_menu_item_object', 'page'),
(204, 55, '_menu_item_target', ''),
(205, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 55, '_menu_item_xfn', ''),
(207, 55, '_menu_item_url', ''),
(209, 56, '_menu_item_type', 'post_type'),
(210, 56, '_menu_item_menu_item_parent', '0'),
(211, 56, '_menu_item_object_id', '28'),
(212, 56, '_menu_item_object', 'page'),
(213, 56, '_menu_item_target', ''),
(214, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 56, '_menu_item_xfn', ''),
(216, 56, '_menu_item_url', ''),
(218, 57, '_menu_item_type', 'post_type'),
(219, 57, '_menu_item_menu_item_parent', '0'),
(220, 57, '_menu_item_object_id', '30'),
(221, 57, '_menu_item_object', 'page'),
(222, 57, '_menu_item_target', ''),
(223, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 57, '_menu_item_xfn', ''),
(225, 57, '_menu_item_url', ''),
(227, 65, '_wp_trash_meta_status', 'publish'),
(228, 65, '_wp_trash_meta_time', '1687865489'),
(229, 67, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n[tel tel-533 id:telephone placeholder \"Phone\"]\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(230, 67, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:46:\"[_site_title] <giorgi.epitashvili@mc-zero.one>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(231, 67, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:46:\"[_site_title] <giorgi.epitashvili@mc-zero.one>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(232, 67, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(233, 67, '_additional_settings', ''),
(234, 67, '_locale', 'en_US'),
(236, 77, '_edit_lock', '1687866838:1'),
(237, 77, '_wp_trash_meta_status', 'publish'),
(238, 77, '_wp_trash_meta_time', '1687866840'),
(239, 80, '_wp_trash_meta_status', 'publish'),
(240, 80, '_wp_trash_meta_time', '1687866875'),
(241, 82, '_wp_trash_meta_status', 'publish'),
(242, 82, '_wp_trash_meta_time', '1687866883'),
(243, 94, '_wp_trash_meta_status', 'publish'),
(244, 94, '_wp_trash_meta_time', '1687867988'),
(245, 96, '_edit_lock', '1687868166:1'),
(246, 96, '_wp_trash_meta_status', 'publish'),
(247, 96, '_wp_trash_meta_time', '1687868174'),
(248, 98, '_wp_trash_meta_status', 'publish'),
(249, 98, '_wp_trash_meta_time', '1687868209'),
(250, 100, '_edit_lock', '1687868501:1'),
(251, 100, '_wp_trash_meta_status', 'publish'),
(252, 100, '_wp_trash_meta_time', '1687868508'),
(253, 102, '_wp_trash_meta_status', 'publish'),
(254, 102, '_wp_trash_meta_time', '1687868721'),
(255, 104, '_wp_trash_meta_status', 'publish'),
(256, 104, '_wp_trash_meta_time', '1687868971'),
(257, 8, '_edit_last', '1'),
(258, 106, '_wp_trash_meta_status', 'publish'),
(259, 106, '_wp_trash_meta_time', '1687869916'),
(260, 107, '_wp_trash_meta_status', 'publish'),
(261, 107, '_wp_trash_meta_time', '1687869923'),
(262, 108, '_wp_attached_file', '2023/06/pexels-francesco-ungaro-1526725-1-scaled.jpg'),
(263, 108, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:52:\"2023/06/pexels-francesco-ungaro-1526725-1-scaled.jpg\";s:8:\"filesize\";i:811995;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"pexels-francesco-ungaro-1526725-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14833;}s:5:\"large\";a:5:{s:4:\"file\";s:46:\"pexels-francesco-ungaro-1526725-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:144898;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"pexels-francesco-ungaro-1526725-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6116;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:45:\"pexels-francesco-ungaro-1526725-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82786;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:47:\"pexels-francesco-ungaro-1526725-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:311874;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:47:\"pexels-francesco-ungaro-1526725-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:538240;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"pexels-francesco-ungaro-1526725-1.jpg\";}'),
(264, 109, '_wp_attached_file', '2023/06/cropped-pexels-francesco-ungaro-1526725-1-scaled-1.jpg'),
(265, 109, '_wp_attachment_context', 'custom-header'),
(266, 109, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1000;s:6:\"height\";i:249;s:4:\"file\";s:62:\"2023/06/cropped-pexels-francesco-ungaro-1526725-1-scaled-1.jpg\";s:8:\"filesize\";i:14392;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:61:\"cropped-pexels-francesco-ungaro-1526725-1-scaled-1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2866;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:62:\"cropped-pexels-francesco-ungaro-1526725-1-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1694;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:62:\"cropped-pexels-francesco-ungaro-1526725-1-scaled-1-768x191.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9327;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:108;}'),
(269, 110, '_wp_trash_meta_status', 'publish'),
(270, 110, '_wp_trash_meta_time', '1687869949'),
(271, 111, '_wp_trash_meta_status', 'publish'),
(272, 111, '_wp_trash_meta_time', '1687869977'),
(273, 112, '_edit_lock', '1687871010:1'),
(274, 112, '_wp_trash_meta_status', 'publish'),
(275, 112, '_wp_trash_meta_time', '1687871019'),
(276, 114, '_wpcode_auto_insert', '1'),
(277, 114, '_wpcode_auto_insert_number', '1'),
(278, 115, '_wpcode_auto_insert', '1'),
(279, 115, '_wpcode_library_id', '12'),
(280, 116, '_wpcode_auto_insert', '1'),
(281, 116, '_wpcode_auto_insert_number', '1'),
(282, 116, '_wpcode_conditional_logic_enabled', ''),
(283, 116, '_wpcode_priority', '10000'),
(284, 116, '_wpcode_note', ''),
(285, 116, '_wpcode_location_extra', ''),
(286, 116, '_wpcode_shortcode_attributes', 'a:0:{}'),
(287, 116, '_wpcode_conditional_logic', 'a:0:{}'),
(288, 117, '_wp_trash_meta_status', 'publish'),
(289, 117, '_wp_trash_meta_time', '1687871671'),
(290, 118, '_wp_trash_meta_status', 'publish'),
(291, 118, '_wp_trash_meta_time', '1687871708'),
(292, 119, '_wp_trash_meta_status', 'publish'),
(293, 119, '_wp_trash_meta_time', '1687874117'),
(294, 121, '_wp_trash_meta_status', 'publish'),
(295, 121, '_wp_trash_meta_time', '1687874150'),
(296, 123, '_wp_trash_meta_status', 'publish'),
(297, 123, '_wp_trash_meta_time', '1687874425');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-27 08:01:35', '2023-06-27 08:01:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-06-27 08:01:35', '2023-06-27 08:01:35', '', 0, 'http://localhost:8888/coalitiontest.local/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-27 08:01:35', '2023-06-27 08:01:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/coalitiontest.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-06-27 08:09:54', '2023-06-27 08:09:54', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-27 08:01:35', '2023-06-27 08:01:35', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/coalitiontest.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-06-27 08:09:54', '2023-06-27 08:09:54', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-06-27 08:01:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-27 08:01:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=4', 0, 'post', '', 0),
(6, 1, '2023-06-27 08:09:54', '2023-06-27 08:09:54', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/coalitiontest.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-06-27 08:09:54', '2023-06-27 08:09:54', '', 3, 'http://localhost:8888/coalitiontest.local/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-06-27 08:09:54', '2023-06-27 08:09:54', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/coalitiontest.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-27 08:09:54', '2023-06-27 08:09:54', '', 2, 'http://localhost:8888/coalitiontest.local/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-06-27 08:10:06', '2023-06-27 08:10:06', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"48%\",\"className\":\"left-side\"} -->\n<div class=\"wp-block-column left-side\" style=\"flex-basis:48%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2023-06-27 12:32:53', '2023-06-27 12:32:53', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-06-27 08:10:06', '2023-06-27 08:10:06', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 08:10:06', '2023-06-27 08:10:06', '', 8, 'http://localhost:8888/coalitiontest.local/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-06-27 08:10:37', '2023-06-27 08:10:37', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 08:10:37\"\n    },\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 08:10:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '07db943c-fcee-4853-a932-0d5592149676', '', '', '2023-06-27 08:10:37', '2023-06-27 08:10:37', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/07db943c-fcee-4853-a932-0d5592149676/', 0, 'customize_changeset', '', 0),
(11, 1, '2023-06-27 08:34:27', '2023-06-27 08:34:27', '', 'Starbucks-logo', '', 'inherit', 'open', 'closed', '', 'starbucks-logo', '', '', '2023-06-27 08:34:27', '2023-06-27 08:34:27', '', 0, 'http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/Starbucks-logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2023-06-27 08:34:36', '2023-06-27 08:34:36', 'http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/cropped-Starbucks-logo.png', 'cropped-Starbucks-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-starbucks-logo-png', '', '', '2023-06-27 08:34:36', '2023-06-27 08:34:36', '', 0, 'http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/cropped-Starbucks-logo.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2023-06-27 08:34:38', '2023-06-27 08:34:38', '{\n    \"ct-custom::custom_logo\": {\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 08:34:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '61431478-9f85-43d8-89c8-1ae23b78ccfa', '', '', '2023-06-27 08:34:38', '2023-06-27 08:34:38', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/61431478-9f85-43d8-89c8-1ae23b78ccfa/', 0, 'customize_changeset', '', 0),
(14, 1, '2023-06-27 08:34:46', '2023-06-27 08:34:46', '{\n    \"ct-custom::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 08:34:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9eb1561e-fb19-47a9-818c-87da13c904ad', '', '', '2023-06-27 08:34:46', '2023-06-27 08:34:46', '', 0, 'http://localhost:8888/coalitiontest.local/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2023-06-27 08:36:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 08:36:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2023-06-27 10:09:22', '2023-06-27 10:09:22', '{\n    \"ct-custom::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 10:09:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a84738ec-b4db-4e03-9930-41a70db96f6f', '', '', '2023-06-27 10:09:22', '2023-06-27 10:09:22', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/a84738ec-b4db-4e03-9930-41a70db96f6f/', 0, 'customize_changeset', '', 0),
(17, 1, '2023-06-27 11:07:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:07:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2023-06-27 11:07:57', '2023-06-27 11:07:57', '', 'Title 1', '', 'publish', 'closed', 'closed', '', 'title-1', '', '', '2023-06-27 11:07:57', '2023-06-27 11:07:57', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-06-27 11:07:57', '2023-06-27 11:07:57', '', 'Title 1', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-06-27 11:07:57', '2023-06-27 11:07:57', '', 18, 'http://localhost:8888/coalitiontest.local/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-06-27 11:08:10', '2023-06-27 11:08:10', '', 'Title 2', '', 'publish', 'closed', 'closed', '', 'title-2', '', '', '2023-06-27 11:08:10', '2023-06-27 11:08:10', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-06-27 11:08:10', '2023-06-27 11:08:10', '', 'Title 2', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-06-27 11:08:10', '2023-06-27 11:08:10', '', 20, 'http://localhost:8888/coalitiontest.local/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-06-27 11:08:32', '2023-06-27 11:08:32', '', 'Title 3', '', 'publish', 'closed', 'closed', '', 'title-3', '', '', '2023-06-27 11:08:32', '2023-06-27 11:08:32', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-06-27 11:08:32', '2023-06-27 11:08:32', '', 'Title 3', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-27 11:08:32', '2023-06-27 11:08:32', '', 22, 'http://localhost:8888/coalitiontest.local/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-06-27 11:08:55', '2023-06-27 11:08:55', '', 'Title 4', '', 'publish', 'closed', 'closed', '', 'title-4', '', '', '2023-06-27 11:08:55', '2023-06-27 11:08:55', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-06-27 11:08:55', '2023-06-27 11:08:55', '', 'Title 4', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-06-27 11:08:55', '2023-06-27 11:08:55', '', 24, 'http://localhost:8888/coalitiontest.local/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-06-27 11:09:07', '2023-06-27 11:09:07', '', 'Title 5', '', 'publish', 'closed', 'closed', '', 'title-5', '', '', '2023-06-27 11:09:07', '2023-06-27 11:09:07', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=26', 0, 'page', '', 0),
(27, 1, '2023-06-27 11:09:07', '2023-06-27 11:09:07', '', 'Title 5', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-06-27 11:09:07', '2023-06-27 11:09:07', '', 26, 'http://localhost:8888/coalitiontest.local/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-06-27 11:09:18', '2023-06-27 11:09:18', '', 'Title 6', '', 'publish', 'closed', 'closed', '', 'title-6', '', '', '2023-06-27 11:09:18', '2023-06-27 11:09:18', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=28', 0, 'page', '', 0),
(29, 1, '2023-06-27 11:09:18', '2023-06-27 11:09:18', '', 'Title 6', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2023-06-27 11:09:18', '2023-06-27 11:09:18', '', 28, 'http://localhost:8888/coalitiontest.local/?p=29', 0, 'revision', '', 0),
(30, 1, '2023-06-27 11:09:29', '2023-06-27 11:09:29', '', 'Title 7', '', 'publish', 'closed', 'closed', '', 'title-7', '', '', '2023-06-27 11:09:29', '2023-06-27 11:09:29', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=30', 0, 'page', '', 0),
(31, 1, '2023-06-27 11:09:29', '2023-06-27 11:09:29', '', 'Title 7', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2023-06-27 11:09:29', '2023-06-27 11:09:29', '', 30, 'http://localhost:8888/coalitiontest.local/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2023-06-27 11:10:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 11:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2023-06-27 11:10:44', '2023-06-27 11:10:44', '', 'Submenu 1', '', 'publish', 'closed', 'closed', '', 'sumbenu-1', '', '', '2023-06-27 11:10:50', '2023-06-27 11:10:50', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=40', 0, 'page', '', 0),
(41, 1, '2023-06-27 11:10:44', '2023-06-27 11:10:44', '', 'Sumbenu 1', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-06-27 11:10:44', '2023-06-27 11:10:44', '', 40, 'http://localhost:8888/coalitiontest.local/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-06-27 11:10:50', '2023-06-27 11:10:50', '', 'Submenu 1', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-06-27 11:10:50', '2023-06-27 11:10:50', '', 40, 'http://localhost:8888/coalitiontest.local/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-06-27 11:11:00', '2023-06-27 11:11:00', '', 'Submenu 2', '', 'publish', 'closed', 'closed', '', 'submenu-2', '', '', '2023-06-27 11:11:00', '2023-06-27 11:11:00', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=43', 0, 'page', '', 0),
(44, 1, '2023-06-27 11:11:00', '2023-06-27 11:11:00', '', 'Submenu 2', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-06-27 11:11:00', '2023-06-27 11:11:00', '', 43, 'http://localhost:8888/coalitiontest.local/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-06-27 11:11:10', '2023-06-27 11:11:10', '', 'Submenu 3', '', 'publish', 'closed', 'closed', '', 'submenu-3', '', '', '2023-06-27 11:11:10', '2023-06-27 11:11:10', '', 0, 'http://localhost:8888/coalitiontest.local/?page_id=45', 0, 'page', '', 0),
(46, 1, '2023-06-27 11:11:10', '2023-06-27 11:11:10', '', 'Submenu 3', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-06-27 11:11:10', '2023-06-27 11:11:10', '', 45, 'http://localhost:8888/coalitiontest.local/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=48', 3, 'nav_menu_item', '', 0),
(49, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=49', 4, 'nav_menu_item', '', 0),
(50, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=52', 5, 'nav_menu_item', '', 0),
(53, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=53', 7, 'nav_menu_item', '', 0),
(54, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=54', 8, 'nav_menu_item', '', 0),
(55, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=55', 9, 'nav_menu_item', '', 0),
(56, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=56', 10, 'nav_menu_item', '', 0),
(57, 1, '2023-06-27 11:11:53', '2023-06-27 11:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2023-06-27 11:11:53', '2023-06-27 11:11:53', '', 0, 'http://localhost:8888/coalitiontest.local/?p=57', 11, 'nav_menu_item', '', 0),
(58, 1, '2023-06-27 11:24:37', '2023-06-27 11:24:37', '<!-- wp:navigation-link {\"label\":\"Homepage\",\"type\":\"page\",\"id\":8,\"url\":\"http://localhost:8888/coalitiontest.local/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-submenu {\"label\":\"Title 1\",\"type\":\"page\",\"id\":18,\"url\":\"http://localhost:8888/coalitiontest.local/title-1/\",\"kind\":\"post-type\",\"isTopLevelItem\":true} -->\n<!-- wp:navigation-link {\"label\":\"Submenu 1\",\"type\":\"page\",\"id\":40,\"url\":\"http://localhost:8888/coalitiontest.local/sumbenu-1/\",\"kind\":\"post-type\",\"isTopLevelLink\":false} /-->\n\n<!-- wp:navigation-link {\"label\":\"Submenu 2\",\"type\":\"page\",\"id\":43,\"url\":\"http://localhost:8888/coalitiontest.local/submenu-2/\",\"kind\":\"post-type\",\"isTopLevelLink\":false} /-->\n<!-- /wp:navigation-submenu -->\n\n<!-- wp:navigation-submenu {\"label\":\"Title 2\",\"type\":\"page\",\"id\":20,\"url\":\"http://localhost:8888/coalitiontest.local/title-2/\",\"kind\":\"post-type\",\"isTopLevelItem\":true} -->\n<!-- wp:navigation-link {\"label\":\"Submenu 3\",\"type\":\"page\",\"id\":45,\"url\":\"http://localhost:8888/coalitiontest.local/submenu-3/\",\"kind\":\"post-type\",\"isTopLevelLink\":false} /-->\n<!-- /wp:navigation-submenu -->\n\n<!-- wp:navigation-link {\"label\":\"Title 3\",\"type\":\"page\",\"id\":22,\"url\":\"http://localhost:8888/coalitiontest.local/title-3/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 4\",\"type\":\"page\",\"id\":24,\"url\":\"http://localhost:8888/coalitiontest.local/title-4/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 5\",\"type\":\"page\",\"id\":26,\"url\":\"http://localhost:8888/coalitiontest.local/title-5/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 6\",\"type\":\"page\",\"id\":28,\"url\":\"http://localhost:8888/coalitiontest.local/title-6/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 7\",\"type\":\"page\",\"id\":30,\"url\":\"http://localhost:8888/coalitiontest.local/title-7/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->', 'Menu 1', '', 'publish', 'closed', 'closed', '', 'menu-1', '', '', '2023-06-27 11:39:41', '2023-06-27 11:39:41', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/menu-1/', 0, 'wp_navigation', '', 0),
(59, 1, '2023-06-27 11:25:53', '2023-06-27 11:25:53', '<!-- wp:navigation {\"ref\":58} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:25:53', '2023-06-27 11:25:53', '', 8, 'http://localhost:8888/coalitiontest.local/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-06-27 11:26:15', '2023-06-27 11:26:15', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:navigation {\"ref\":58} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:26:15', '2023-06-27 11:26:15', '', 8, 'http://localhost:8888/coalitiontest.local/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-06-27 11:27:21', '2023-06-27 11:27:21', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:27:21', '2023-06-27 11:27:21', '', 8, 'http://localhost:8888/coalitiontest.local/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-06-27 11:28:51', '2023-06-27 11:28:51', '<!-- wp:navigation {\"ref\":58} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:28:51', '2023-06-27 11:28:51', '', 8, 'http://localhost:8888/coalitiontest.local/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-06-27 11:30:12', '2023-06-27 11:30:12', '<!-- wp:paragraph -->\n<p>Contact</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:30:12', '2023-06-27 11:30:12', '', 8, 'http://localhost:8888/coalitiontest.local/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-06-27 11:30:42', '2023-06-27 11:30:42', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:30:42', '2023-06-27 11:30:42', '', 8, 'http://localhost:8888/coalitiontest.local/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-06-27 11:31:29', '2023-06-27 11:31:29', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 11:31:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '258d2920-1ab1-4159-813d-e219a6db7c63', '', '', '2023-06-27 11:31:29', '2023-06-27 11:31:29', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/258d2920-1ab1-4159-813d-e219a6db7c63/', 0, 'customize_changeset', '', 0),
(66, 1, '2023-06-27 11:34:47', '2023-06-27 11:34:47', '<!-- wp:navigation {\"ref\":58} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:34:47', '2023-06-27 11:34:47', '', 8, 'http://localhost:8888/coalitiontest.local/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-06-27 11:36:02', '2023-06-27 11:36:02', '<label> Your name\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n[tel tel-533 id:telephone placeholder \"Phone\"]\r\n\r\n<label> Your email\r\n    [email* your-email autocomplete:email] </label>\r\n\r\n<label> Subject\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <giorgi.epitashvili@mc-zero.one>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <giorgi.epitashvili@mc-zero.one>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-06-27 11:50:27', '2023-06-27 11:50:27', '', 0, 'http://localhost:8888/coalitiontest.local/?post_type=wpcf7_contact_form&#038;p=67', 0, 'wpcf7_contact_form', '', 0),
(68, 1, '2023-06-27 11:38:21', '2023-06-27 11:38:21', '<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:38:21', '2023-06-27 11:38:21', '', 8, 'http://localhost:8888/coalitiontest.local/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-06-27 11:39:31', '2023-06-27 11:39:31', '<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / Contact</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:39:31', '2023-06-27 11:39:31', '', 8, 'http://localhost:8888/coalitiontest.local/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-06-27 11:39:35', '2023-06-27 11:39:35', '<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:39:35', '2023-06-27 11:39:35', '', 8, 'http://localhost:8888/coalitiontest.local/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-06-27 11:39:41', '2023-06-27 11:39:41', '<!-- wp:navigation-link {\"label\":\"Homepage\",\"type\":\"page\",\"id\":8,\"url\":\"http://localhost:8888/coalitiontest.local/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-submenu {\"label\":\"Title 1\",\"type\":\"page\",\"id\":18,\"url\":\"http://localhost:8888/coalitiontest.local/title-1/\",\"kind\":\"post-type\",\"isTopLevelItem\":true} -->\n<!-- wp:navigation-link {\"label\":\"Submenu 1\",\"type\":\"page\",\"id\":40,\"url\":\"http://localhost:8888/coalitiontest.local/sumbenu-1/\",\"kind\":\"post-type\",\"isTopLevelLink\":false} /-->\n\n<!-- wp:navigation-link {\"label\":\"Submenu 2\",\"type\":\"page\",\"id\":43,\"url\":\"http://localhost:8888/coalitiontest.local/submenu-2/\",\"kind\":\"post-type\",\"isTopLevelLink\":false} /-->\n<!-- /wp:navigation-submenu -->\n\n<!-- wp:navigation-submenu {\"label\":\"Title 2\",\"type\":\"page\",\"id\":20,\"url\":\"http://localhost:8888/coalitiontest.local/title-2/\",\"kind\":\"post-type\",\"isTopLevelItem\":true} -->\n<!-- wp:navigation-link {\"label\":\"Submenu 3\",\"type\":\"page\",\"id\":45,\"url\":\"http://localhost:8888/coalitiontest.local/submenu-3/\",\"kind\":\"post-type\",\"isTopLevelLink\":false} /-->\n<!-- /wp:navigation-submenu -->\n\n<!-- wp:navigation-link {\"label\":\"Title 3\",\"type\":\"page\",\"id\":22,\"url\":\"http://localhost:8888/coalitiontest.local/title-3/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 4\",\"type\":\"page\",\"id\":24,\"url\":\"http://localhost:8888/coalitiontest.local/title-4/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 5\",\"type\":\"page\",\"id\":26,\"url\":\"http://localhost:8888/coalitiontest.local/title-5/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 6\",\"type\":\"page\",\"id\":28,\"url\":\"http://localhost:8888/coalitiontest.local/title-6/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Title 7\",\"type\":\"page\",\"id\":30,\"url\":\"http://localhost:8888/coalitiontest.local/title-7/\",\"kind\":\"post-type\",\"isTopLevelLink\":true} /-->', 'Menu 1', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2023-06-27 11:39:41', '2023-06-27 11:39:41', '', 58, 'http://localhost:8888/coalitiontest.local/?p=71', 0, 'revision', '', 0),
(73, 1, '2023-06-27 11:41:02', '2023-06-27 11:41:02', '<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:41:02', '2023-06-27 11:41:02', '', 8, 'http://localhost:8888/coalitiontest.local/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-06-27 11:44:03', '2023-06-27 11:44:03', '<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">REACH US</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:44:03', '2023-06-27 11:44:03', '', 8, 'http://localhost:8888/coalitiontest.local/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-06-27 11:44:51', '2023-06-27 11:44:51', '<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-style:normal;font-weight:400\">REACH US</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:44:51', '2023-06-27 11:44:51', '', 8, 'http://localhost:8888/coalitiontest.local/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-06-27 11:45:11', '2023-06-27 11:45:11', '<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-style:normal;font-weight:400\">REACH US</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:45:11', '2023-06-27 11:45:11', '', 8, 'http://localhost:8888/coalitiontest.local/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-06-27 11:54:00', '2023-06-27 11:54:00', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \".logo-menu-wrapper {\\n    display: flex;\\n    align-items: center;\\n}\\n\\n.site-logo {\\n    max-width: 100px;\\n    height: auto;\\n    margin-right: 10px; /* Adjust the spacing between logo and menu as needed */\\n}\\n\\n.site-menu {\\n    margin: 0;\\n    padding: 0;\\n    list-style-type: none;\\n}\\n\\n.site-menu li {\\n    display: inline-block;\\n    margin-right: 10px; /* Adjust the spacing between menu items as needed */\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 11:53:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2ebf8f1-b625-4758-a22a-698cb61648e3', '', '', '2023-06-27 11:54:00', '2023-06-27 11:54:00', '', 0, 'http://localhost:8888/coalitiontest.local/?p=77', 0, 'customize_changeset', '', 0),
(78, 1, '2023-06-27 11:54:00', '2023-06-27 11:54:00', '', 'ct-custom', '', 'publish', 'closed', 'closed', '', 'ct-custom', '', '', '2023-06-27 14:00:25', '2023-06-27 14:00:25', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/ct-custom/', 0, 'custom_css', '', 0),
(79, 1, '2023-06-27 11:54:00', '2023-06-27 11:54:00', '.logo-menu-wrapper {\n    display: flex;\n    align-items: center;\n}\n\n.site-logo {\n    max-width: 100px;\n    height: auto;\n    margin-right: 10px; /* Adjust the spacing between logo and menu as needed */\n}\n\n.site-menu {\n    margin: 0;\n    padding: 0;\n    list-style-type: none;\n}\n\n.site-menu li {\n    display: inline-block;\n    margin-right: 10px; /* Adjust the spacing between menu items as needed */\n}\n', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 11:54:00', '2023-06-27 11:54:00', '', 78, 'http://localhost:8888/coalitiontest.local/?p=79', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(80, 1, '2023-06-27 11:54:35', '2023-06-27 11:54:35', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \".logo-menu-wrapper {\\n    display: flex!important;\\n    align-items: center!important;\\n}\\n\\n.site-logo {\\n    max-width: 100px!important;\\n    height: auto!important;\\n    margin-right: 10px!important; /* Adjust the spacing between logo and menu as needed */\\n}\\n\\n.site-menu {\\n    margin: 0!important;\\n    padding: 0!important;\\n    list-style-type: none!important;\\n}\\n\\n.site-menu li {\\n    display: inline-block!important;\\n    margin-right: 10px!important; /* Adjust the spacing between menu items as needed */\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 11:54:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82116cf2-95b9-494d-9d3f-f41045ff193e', '', '', '2023-06-27 11:54:35', '2023-06-27 11:54:35', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/82116cf2-95b9-494d-9d3f-f41045ff193e/', 0, 'customize_changeset', '', 0),
(81, 1, '2023-06-27 11:54:35', '2023-06-27 11:54:35', '.logo-menu-wrapper {\n    display: flex!important;\n    align-items: center!important;\n}\n\n.site-logo {\n    max-width: 100px!important;\n    height: auto!important;\n    margin-right: 10px!important; /* Adjust the spacing between logo and menu as needed */\n}\n\n.site-menu {\n    margin: 0!important;\n    padding: 0!important;\n    list-style-type: none!important;\n}\n\n.site-menu li {\n    display: inline-block!important;\n    margin-right: 10px!important; /* Adjust the spacing between menu items as needed */\n}\n', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 11:54:35', '2023-06-27 11:54:35', '', 78, 'http://localhost:8888/coalitiontest.local/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-06-27 11:54:43', '2023-06-27 11:54:43', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 11:54:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ef138126-1155-4777-ba88-ae425cd21dd7', '', '', '2023-06-27 11:54:43', '2023-06-27 11:54:43', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/ef138126-1155-4777-ba88-ae425cd21dd7/', 0, 'customize_changeset', '', 0),
(83, 1, '2023-06-27 11:54:43', '2023-06-27 11:54:43', '', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 11:54:43', '2023-06-27 11:54:43', '', 78, 'http://localhost:8888/coalitiontest.local/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-06-27 11:59:44', '2023-06-27 11:59:44', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"shouldSyncIcon\":true} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-style:normal;font-weight:400\">REACH US</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 11:59:44', '2023-06-27 11:59:44', '', 8, 'http://localhost:8888/coalitiontest.local/?p=84', 0, 'revision', '', 0),
(86, 1, '2023-06-27 12:00:05', '2023-06-27 12:00:05', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":20,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-style:normal;font-weight:400\">REACH US</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:00:05', '2023-06-27 12:00:05', '', 8, 'http://localhost:8888/coalitiontest.local/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-06-27 12:00:16', '2023-06-27 12:00:16', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-style:normal;font-weight:400\">REACH US</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:00:16', '2023-06-27 12:00:16', '', 8, 'http://localhost:8888/coalitiontest.local/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-06-27 12:01:44', '2023-06-27 12:01:44', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:01:44', '2023-06-27 12:01:44', '', 8, 'http://localhost:8888/coalitiontest.local/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-06-27 12:02:51', '2023-06-27 12:02:51', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:02:51', '2023-06-27 12:02:51', '', 8, 'http://localhost:8888/coalitiontest.local/?p=89', 0, 'revision', '', 0),
(90, 1, '2023-06-27 12:03:51', '2023-06-27 12:03:51', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:03:51', '2023-06-27 12:03:51', '', 8, 'http://localhost:8888/coalitiontest.local/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-06-27 12:11:16', '2023-06-27 12:11:16', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /-->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;style> &lt;/style></code></pre>\n<!-- /wp:code --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:11:16', '2023-06-27 12:11:16', '', 8, 'http://localhost:8888/coalitiontest.local/?p=91', 0, 'revision', '', 0),
(92, 1, '2023-06-27 12:12:41', '2023-06-27 12:12:41', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;style>\n.site-header {\n    background-color: #f8f8f8;\n    padding: 20px;\n}\n\n.container {\n    max-width: 1200px;\n    margin: 0 auto;\n    display: flex;\n    align-items: center;\n    justify-content: space-between;\n}\n\n.wp-block-site-logo img {\n    max-width: 95px;\n    height: auto;\n}\n\n.site-navigation .wp-block-navigation__responsive-container-open svg,\n.site-navigation .wp-block-navigation__responsive-container-close svg {\n    width: 24px;\n    height: 24px;\n    fill: #333;\n}\n\n.wp-block-navigation__responsive-container,\n.wp-block-navigation__submenu-container {\n    display: none;\n}\n\n.site-navigation .wp-block-navigation__responsive-container-open,\n.wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    border: none;\n    background-color: transparent;\n    cursor: pointer;\n}\n\n.wp-block-navigation-item {\n    position: relative;\n    list-style: none;\n    margin: 0;\n    padding: 0;\n}\n\n.wp-block-navigation-item a {\n    display: block;\n    padding: 10px;\n    color: #333;\n    text-decoration: none;\n}\n\n.wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\n    margin-left: 5px;\n    transform: rotate(0deg);\n    transition: transform 0.2s ease-in-out;\n}\n\n.wp-block-navigation-item.has-child.open-on-hover-click .wp-block-navigation__submenu-icon {\n    transform: rotate(180deg);\n}\n\n.wp-block-navigation-submenu {\n    position: absolute;\n    top: 100%;\n    left: 0;\n    background-color: #f8f8f8;\n    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\n    min-width: 200px;\n    z-index: 99;\n    opacity: 0;\n    pointer-events: none;\n    transition: opacity 0.2s ease-in-out;\n}\n\n.wp-block-navigation-item:hover > .wp-block-navigation-submenu {\n    opacity: 1;\n    pointer-events: auto;\n}\n\n.wp-block-navigation-submenu li {\n    list-style: none;\n}\n\n.wp-block-navigation-submenu a {\n    display: block;\n    padding: 10px;\n    color: #333;\n    text-decoration: none;\n}\n\n@media screen and (max-width: 768px) {\n    .container {\n        flex-wrap: wrap;\n    }\n\n    .site-navigation {\n        width: 100%;\n        order: 2;\n    }\n\n    .wp-block-site-logo {\n        width: 100%;\n        order: 1;\n        text-align: center;\n        margin-bottom: 20px;\n    }\n\n    .wp-block-site-logo img {\n        max-width: 100%;\n    }\n\n    .site-navigation .wp-block-navigation__responsive-container-open,\n    .wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\n        display: none;\n    }\n\n    .wp-block-navigation__responsive-container,\n    .wp-block-navigation__submenu-container {\n        display: block;\n    }\n\n    .wp-block-navigation__responsive-close,\n    .wp-block-navigation__responsive-dialog {\n        display: none;\n    }\n\n    .wp-block-navigation__responsive-container-content {\n        padding: 20px;\n        background-color: #f8f8f8;\n    }\n\n    .wp-block-navigation__submenu-icon {\n        margin-left: 0;\n    }\n\n    .wp-block-navigation-submenu {\n        position: static;\n        background-color: transparent;\n        box-shadow: none;\n        min-width: auto;\n        opacity: 1;\n        pointer-events: auto;\n    }\n}\n\n\n &lt;/style></code></pre>\n<!-- /wp:code -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:12:41', '2023-06-27 12:12:41', '', 8, 'http://localhost:8888/coalitiontest.local/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-06-27 12:12:57', '2023-06-27 12:12:57', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:12:57', '2023-06-27 12:12:57', '', 8, 'http://localhost:8888/coalitiontest.local/?p=93', 0, 'revision', '', 0),
(94, 1, '2023-06-27 12:13:08', '2023-06-27 12:13:08', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \".site-header {\\n    background-color: #f8f8f8;\\n    padding: 20px;\\n}\\n\\n.container {\\n    max-width: 1200px;\\n    margin: 0 auto;\\n    display: flex;\\n    align-items: center;\\n    justify-content: space-between;\\n}\\n\\n.wp-block-site-logo img {\\n    max-width: 95px;\\n    height: auto;\\n}\\n\\n.site-navigation .wp-block-navigation__responsive-container-open svg,\\n.site-navigation .wp-block-navigation__responsive-container-close svg {\\n    width: 24px;\\n    height: 24px;\\n    fill: #333;\\n}\\n\\n.wp-block-navigation__responsive-container,\\n.wp-block-navigation__submenu-container {\\n    display: none;\\n}\\n\\n.site-navigation .wp-block-navigation__responsive-container-open,\\n.wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\\n    display: flex;\\n    align-items: center;\\n    justify-content: center;\\n    border: none;\\n    background-color: transparent;\\n    cursor: pointer;\\n}\\n\\n.wp-block-navigation-item {\\n    position: relative;\\n    list-style: none;\\n    margin: 0;\\n    padding: 0;\\n}\\n\\n.wp-block-navigation-item a {\\n    display: block;\\n    padding: 10px;\\n    color: #333;\\n    text-decoration: none;\\n}\\n\\n.wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\\n    margin-left: 5px;\\n    transform: rotate(0deg);\\n    transition: transform 0.2s ease-in-out;\\n}\\n\\n.wp-block-navigation-item.has-child.open-on-hover-click .wp-block-navigation__submenu-icon {\\n    transform: rotate(180deg);\\n}\\n\\n.wp-block-navigation-submenu {\\n    position: absolute;\\n    top: 100%;\\n    left: 0;\\n    background-color: #f8f8f8;\\n    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\\n    min-width: 200px;\\n    z-index: 99;\\n    opacity: 0;\\n    pointer-events: none;\\n    transition: opacity 0.2s ease-in-out;\\n}\\n\\n.wp-block-navigation-item:hover > .wp-block-navigation-submenu {\\n    opacity: 1;\\n    pointer-events: auto;\\n}\\n\\n.wp-block-navigation-submenu li {\\n    list-style: none;\\n}\\n\\n.wp-block-navigation-submenu a {\\n    display: block;\\n    padding: 10px;\\n    color: #333;\\n    text-decoration: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .container {\\n        flex-wrap: wrap;\\n    }\\n\\n    .site-navigation {\\n        width: 100%;\\n        order: 2;\\n    }\\n\\n    .wp-block-site-logo {\\n        width: 100%;\\n        order: 1;\\n        text-align: center;\\n        margin-bottom: 20px;\\n    }\\n\\n    .wp-block-site-logo img {\\n        max-width: 100%;\\n    }\\n\\n    .site-navigation .wp-block-navigation__responsive-container-open,\\n    .wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\\n        display: none;\\n    }\\n\\n    .wp-block-navigation__responsive-container,\\n    .wp-block-navigation__submenu-container {\\n        display: block;\\n    }\\n\\n    .wp-block-navigation__responsive-close,\\n    .wp-block-navigation__responsive-dialog {\\n        display: none;\\n    }\\n\\n    .wp-block-navigation__responsive-container-content {\\n        padding: 20px;\\n        background-color: #f8f8f8;\\n    }\\n\\n    .wp-block-navigation__submenu-icon {\\n        margin-left: 0;\\n    }\\n\\n    .wp-block-navigation-submenu {\\n        position: static;\\n        background-color: transparent;\\n        box-shadow: none;\\n        min-width: auto;\\n        opacity: 1;\\n        pointer-events: auto;\\n    }\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:13:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'abadc229-dc1a-48dd-898b-afcc23e3d333', '', '', '2023-06-27 12:13:08', '2023-06-27 12:13:08', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/abadc229-dc1a-48dd-898b-afcc23e3d333/', 0, 'customize_changeset', '', 0),
(95, 1, '2023-06-27 12:13:08', '2023-06-27 12:13:08', '.site-header {\n    background-color: #f8f8f8;\n    padding: 20px;\n}\n\n.container {\n    max-width: 1200px;\n    margin: 0 auto;\n    display: flex;\n    align-items: center;\n    justify-content: space-between;\n}\n\n.wp-block-site-logo img {\n    max-width: 95px;\n    height: auto;\n}\n\n.site-navigation .wp-block-navigation__responsive-container-open svg,\n.site-navigation .wp-block-navigation__responsive-container-close svg {\n    width: 24px;\n    height: 24px;\n    fill: #333;\n}\n\n.wp-block-navigation__responsive-container,\n.wp-block-navigation__submenu-container {\n    display: none;\n}\n\n.site-navigation .wp-block-navigation__responsive-container-open,\n.wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    border: none;\n    background-color: transparent;\n    cursor: pointer;\n}\n\n.wp-block-navigation-item {\n    position: relative;\n    list-style: none;\n    margin: 0;\n    padding: 0;\n}\n\n.wp-block-navigation-item a {\n    display: block;\n    padding: 10px;\n    color: #333;\n    text-decoration: none;\n}\n\n.wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\n    margin-left: 5px;\n    transform: rotate(0deg);\n    transition: transform 0.2s ease-in-out;\n}\n\n.wp-block-navigation-item.has-child.open-on-hover-click .wp-block-navigation__submenu-icon {\n    transform: rotate(180deg);\n}\n\n.wp-block-navigation-submenu {\n    position: absolute;\n    top: 100%;\n    left: 0;\n    background-color: #f8f8f8;\n    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\n    min-width: 200px;\n    z-index: 99;\n    opacity: 0;\n    pointer-events: none;\n    transition: opacity 0.2s ease-in-out;\n}\n\n.wp-block-navigation-item:hover > .wp-block-navigation-submenu {\n    opacity: 1;\n    pointer-events: auto;\n}\n\n.wp-block-navigation-submenu li {\n    list-style: none;\n}\n\n.wp-block-navigation-submenu a {\n    display: block;\n    padding: 10px;\n    color: #333;\n    text-decoration: none;\n}\n\n@media screen and (max-width: 768px) {\n    .container {\n        flex-wrap: wrap;\n    }\n\n    .site-navigation {\n        width: 100%;\n        order: 2;\n    }\n\n    .wp-block-site-logo {\n        width: 100%;\n        order: 1;\n        text-align: center;\n        margin-bottom: 20px;\n    }\n\n    .wp-block-site-logo img {\n        max-width: 100%;\n    }\n\n    .site-navigation .wp-block-navigation__responsive-container-open,\n    .wp-block-navigation-item.has-child .wp-block-navigation__submenu-icon {\n        display: none;\n    }\n\n    .wp-block-navigation__responsive-container,\n    .wp-block-navigation__submenu-container {\n        display: block;\n    }\n\n    .wp-block-navigation__responsive-close,\n    .wp-block-navigation__responsive-dialog {\n        display: none;\n    }\n\n    .wp-block-navigation__responsive-container-content {\n        padding: 20px;\n        background-color: #f8f8f8;\n    }\n\n    .wp-block-navigation__submenu-icon {\n        margin-left: 0;\n    }\n\n    .wp-block-navigation-submenu {\n        position: static;\n        background-color: transparent;\n        box-shadow: none;\n        min-width: auto;\n        opacity: 1;\n        pointer-events: auto;\n    }\n}\n', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 12:13:08', '2023-06-27 12:13:08', '', 78, 'http://localhost:8888/coalitiontest.local/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-06-27 12:16:14', '2023-06-27 12:16:14', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body > div.wp-block-group.is-layout-constrained {\\n\\tfloat: left!important;\\n\\twidth: 45%!important;\\n}\\n\\nbody > div.theme-settings {\\n\\t\\tfloat: right!important;\\n\\twidth: 45%!important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:16:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a935dac-6119-4224-a713-da16de87fb6a', '', '', '2023-06-27 12:16:14', '2023-06-27 12:16:14', '', 0, 'http://localhost:8888/coalitiontest.local/?p=96', 0, 'customize_changeset', '', 0),
(97, 1, '2023-06-27 12:16:14', '2023-06-27 12:16:14', 'body > div.wp-block-group.is-layout-constrained {\n	float: left!important;\n	width: 45%!important;\n}\n\nbody > div.theme-settings {\n		float: right!important;\n	width: 45%!important;\n}', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 12:16:14', '2023-06-27 12:16:14', '', 78, 'http://localhost:8888/coalitiontest.local/?p=97', 0, 'revision', '', 0),
(98, 1, '2023-06-27 12:16:49', '2023-06-27 12:16:49', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body > div.wp-block-group.is-layout-constrained {\\n\\tfloat: left!important;\\n\\twidth: 45%!important;\\n}\\n\\nbody > div.theme-settings {\\n\\tfloat: right!important;\\n\\twidth: 45%!important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:16:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd536d504-9255-48f0-99bf-cdd7e3becd94', '', '', '2023-06-27 12:16:49', '2023-06-27 12:16:49', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/d536d504-9255-48f0-99bf-cdd7e3becd94/', 0, 'customize_changeset', '', 0),
(99, 1, '2023-06-27 12:19:49', '2023-06-27 12:19:49', '<!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":95,\"shouldSyncIcon\":false} /-->\n\n<!-- wp:navigation {\"ref\":58} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Home / Who we are / <strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam posuere ipsum nec velit mattis elementum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu placerat metus, eget placerat libero.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"48%\",\"className\":\"left-side\"} -->\n<div class=\"wp-block-column left-side\" style=\"flex-basis:48%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:shortcode -->\n[contact-form-7 id=\"67\" title=\"Contact form 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-06-27 12:19:49', '2023-06-27 12:19:49', '', 8, 'http://localhost:8888/coalitiontest.local/?p=99', 0, 'revision', '', 0),
(100, 1, '2023-06-27 12:21:48', '2023-06-27 12:21:48', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:21:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c238ea63-35ff-4137-b18c-e622f67c76d8', '', '', '2023-06-27 12:21:48', '2023-06-27 12:21:48', '', 0, 'http://localhost:8888/coalitiontest.local/?p=100', 0, 'customize_changeset', '', 0),
(101, 1, '2023-06-27 12:21:48', '2023-06-27 12:21:48', '', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 12:21:48', '2023-06-27 12:21:48', '', 78, 'http://localhost:8888/coalitiontest.local/?p=101', 0, 'revision', '', 0),
(102, 1, '2023-06-27 12:25:21', '2023-06-27 12:25:21', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body {\\n  background-color: red!important;\\n}\\n\\nh2 {\\n  color: #333;\\n  font-size: 24px;\\n}\\n\\n/* Add more CSS rules as needed */\\n\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:25:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8fe5b74c-6392-4aff-b006-e684b41d9e27', '', '', '2023-06-27 12:25:21', '2023-06-27 12:25:21', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/8fe5b74c-6392-4aff-b006-e684b41d9e27/', 0, 'customize_changeset', '', 0),
(103, 1, '2023-06-27 12:25:21', '2023-06-27 12:25:21', 'body {\n  background-color: red!important;\n}\n\nh2 {\n  color: #333;\n  font-size: 24px;\n}\n\n/* Add more CSS rules as needed */\n\n', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 12:25:21', '2023-06-27 12:25:21', '', 78, 'http://localhost:8888/coalitiontest.local/?p=103', 0, 'revision', '', 0),
(104, 1, '2023-06-27 12:29:31', '2023-06-27 12:29:31', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body {\\n  background-color: red!important;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:29:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4359d082-e1df-4be7-91f1-0cffdb84f8a4', '', '', '2023-06-27 12:29:31', '2023-06-27 12:29:31', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/4359d082-e1df-4be7-91f1-0cffdb84f8a4/', 0, 'customize_changeset', '', 0),
(105, 1, '2023-06-27 12:29:31', '2023-06-27 12:29:31', 'body {\n  background-color: red!important;\n}\n', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 12:29:31', '2023-06-27 12:29:31', '', 78, 'http://localhost:8888/coalitiontest.local/?p=105', 0, 'revision', '', 0),
(106, 1, '2023-06-27 12:45:16', '2023-06-27 12:45:16', '{\n    \"ct-custom::background_color\": {\n        \"value\": \"#dd3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:45:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '586d646c-5190-455d-a456-8f994c405b34', '', '', '2023-06-27 12:45:16', '2023-06-27 12:45:16', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/586d646c-5190-455d-a456-8f994c405b34/', 0, 'customize_changeset', '', 0),
(107, 1, '2023-06-27 12:45:23', '2023-06-27 12:45:23', '{\n    \"ct-custom::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:45:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0db07e28-faf9-4179-be2f-119ea61c98c5', '', '', '2023-06-27 12:45:23', '2023-06-27 12:45:23', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/0db07e28-faf9-4179-be2f-119ea61c98c5/', 0, 'customize_changeset', '', 0),
(108, 1, '2023-06-27 12:45:37', '2023-06-27 12:45:37', '', 'pexels-francesco-ungaro-1526725', '', 'inherit', 'open', 'closed', '', 'pexels-francesco-ungaro-1526725', '', '', '2023-06-27 12:45:37', '2023-06-27 12:45:37', '', 0, 'http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/pexels-francesco-ungaro-1526725-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2023-06-27 12:45:47', '2023-06-27 12:45:47', '', 'cropped-pexels-francesco-ungaro-1526725-1-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-pexels-francesco-ungaro-1526725-1-scaled-1-jpg', '', '', '2023-06-27 12:45:47', '2023-06-27 12:45:47', '', 0, 'http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/cropped-pexels-francesco-ungaro-1526725-1-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2023-06-27 12:45:49', '2023-06-27 12:45:49', '{\n    \"ct-custom::header_image\": {\n        \"value\": \"http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/cropped-pexels-francesco-ungaro-1526725-1-scaled-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:45:49\"\n    },\n    \"ct-custom::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/cropped-pexels-francesco-ungaro-1526725-1-scaled-1.jpg\",\n            \"thumbnail_url\": \"http://localhost:8888/coalitiontest.local/wp-content/uploads/2023/06/cropped-pexels-francesco-ungaro-1526725-1-scaled-1.jpg\",\n            \"timestamp\": 1687869947151,\n            \"attachment_id\": 109,\n            \"width\": 1000,\n            \"height\": 249\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:45:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf0614e1-d168-4b23-95e7-77fe8e175d58', '', '', '2023-06-27 12:45:49', '2023-06-27 12:45:49', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/cf0614e1-d168-4b23-95e7-77fe8e175d58/', 0, 'customize_changeset', '', 0),
(111, 1, '2023-06-27 12:46:17', '2023-06-27 12:46:17', '{\n    \"ct-custom::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:46:17\"\n    },\n    \"ct-custom::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 12:46:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9facd3f-d3de-49c4-802c-d9bb9ddfe9ad', '', '', '2023-06-27 12:46:17', '2023-06-27 12:46:17', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/d9facd3f-d3de-49c4-802c-d9bb9ddfe9ad/', 0, 'customize_changeset', '', 0),
(112, 1, '2023-06-27 13:03:39', '2023-06-27 13:03:39', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body {\\n  background-color: red!important;\\n}\\nh2 {\\n\\tcolor: red!important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 13:03:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7152ae9e-7dd7-4e5d-be80-2593f0240c72', '', '', '2023-06-27 13:03:39', '2023-06-27 13:03:39', '', 0, 'http://localhost:8888/coalitiontest.local/?p=112', 0, 'customize_changeset', '', 0),
(113, 1, '2023-06-27 13:03:39', '2023-06-27 13:03:39', 'body {\n  background-color: red!important;\n}\nh2 {\n	color: red!important;\n}', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 13:03:39', '2023-06-27 13:03:39', '', 78, 'http://localhost:8888/coalitiontest.local/?p=113', 0, 'revision', '', 0),
(114, 1, '2023-06-27 13:06:51', '0000-00-00 00:00:00', 'Thank you for reading this post, don\'t forget to subscribe!', 'Display a message after the 1st paragraph of posts', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 13:06:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?post_type=wpcode&p=114', 0, 'wpcode', '', 0),
(115, 1, '2023-06-27 13:06:51', '0000-00-00 00:00:00', 'add_action(\'admin_init\', function () {\r\n    // Redirect any user trying to access comments page\r\n    global $pagenow;\r\n    \r\n    if ($pagenow === \'edit-comments.php\') {\r\n        wp_safe_redirect(admin_url());\r\n        exit;\r\n    }\r\n\r\n    // Remove comments metabox from dashboard\r\n    remove_meta_box(\'dashboard_recent_comments\', \'dashboard\', \'normal\');\r\n\r\n    // Disable support for comments and trackbacks in post types\r\n    foreach (get_post_types() as $post_type) {\r\n        if (post_type_supports($post_type, \'comments\')) {\r\n            remove_post_type_support($post_type, \'comments\');\r\n            remove_post_type_support($post_type, \'trackbacks\');\r\n        }\r\n    }\r\n});\r\n\r\n// Close comments on the front-end\r\nadd_filter(\'comments_open\', \'__return_false\', 20, 2);\r\nadd_filter(\'pings_open\', \'__return_false\', 20, 2);\r\n\r\n// Hide existing comments\r\nadd_filter(\'comments_array\', \'__return_empty_array\', 10, 2);\r\n\r\n// Remove comments page in menu\r\nadd_action(\'admin_menu\', function () {\r\n    remove_menu_page(\'edit-comments.php\');\r\n});\r\n\r\n// Remove comments links from admin bar\r\nadd_action(\'init\', function () {\r\n    if (is_admin_bar_showing()) {\r\n        remove_action(\'admin_bar_menu\', \'wp_admin_bar_comments_menu\', 60);\r\n    }\r\n});', 'Completely Disable Comments', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-27 13:06:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/coalitiontest.local/?post_type=wpcode&p=115', 0, 'wpcode', '', 0),
(116, 1, '2023-06-27 13:07:31', '2023-06-27 13:07:31', 'body {\r\n	color: red!important;\r\n}', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2023-06-27 13:07:48', '2023-06-27 13:07:48', '', 0, 'http://localhost:8888/coalitiontest.local/wpcode/test/', 0, 'wpcode', '', 0),
(117, 1, '2023-06-27 13:14:30', '2023-06-27 13:14:30', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body {\\n  background-color: red!important;\\n}\\nh2 {\\n\\tcolor: red!important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 13:14:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15f4aab8-7d7f-4fd0-8804-9d9fc5c092ce', '', '', '2023-06-27 13:14:30', '2023-06-27 13:14:30', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/15f4aab8-7d7f-4fd0-8804-9d9fc5c092ce/', 0, 'customize_changeset', '', 0),
(118, 1, '2023-06-27 13:15:08', '2023-06-27 13:15:08', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body {\\n  background-color: red!important;\\n}\\nh2 {\\n\\tcolor: red!important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 13:15:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '38183c31-eb44-4139-a40f-dfdffd492955', '', '', '2023-06-27 13:15:08', '2023-06-27 13:15:08', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/38183c31-eb44-4139-a40f-dfdffd492955/', 0, 'customize_changeset', '', 0),
(119, 1, '2023-06-27 13:55:17', '2023-06-27 13:55:17', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"body {\\n  background-color: black!important;\\n}\\nh2 {\\n\\tcolor: red!important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 13:55:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '183d066b-6291-461d-b08a-5534fcde07b3', '', '', '2023-06-27 13:55:17', '2023-06-27 13:55:17', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/183d066b-6291-461d-b08a-5534fcde07b3/', 0, 'customize_changeset', '', 0),
(120, 1, '2023-06-27 13:55:17', '2023-06-27 13:55:17', 'body {\n  background-color: black!important;\n}\nh2 {\n	color: red!important;\n}', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 13:55:17', '2023-06-27 13:55:17', '', 78, 'http://localhost:8888/coalitiontest.local/?p=120', 0, 'revision', '', 0),
(121, 1, '2023-06-27 13:55:50', '2023-06-27 13:55:50', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 13:55:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a02de292-a46d-4862-9c07-58ec3daeda09', '', '', '2023-06-27 13:55:50', '2023-06-27 13:55:50', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/a02de292-a46d-4862-9c07-58ec3daeda09/', 0, 'customize_changeset', '', 0),
(122, 1, '2023-06-27 13:55:50', '2023-06-27 13:55:50', '', 'ct-custom', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-27 13:55:50', '2023-06-27 13:55:50', '', 78, 'http://localhost:8888/coalitiontest.local/?p=122', 0, 'revision', '', 0),
(123, 1, '2023-06-27 14:00:25', '2023-06-27 14:00:25', '{\n    \"custom_css[ct-custom]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-27 14:00:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '596ee792-aef5-41c2-a832-5cab1fb36ab8', '', '', '2023-06-27 14:00:25', '2023-06-27 14:00:25', '', 0, 'http://localhost:8888/coalitiontest.local/2023/06/27/596ee792-aef5-41c2-a832-5cab1fb36ab8/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'text', 'text', 0),
(4, 'after_paragraph', 'after_paragraph', 0),
(5, 'sample', 'sample', 0),
(6, 'message', 'message', 0),
(7, 'php', 'php', 0),
(8, 'everywhere', 'everywhere', 0),
(9, 'disable', 'disable', 0),
(10, 'comments', 'comments', 0),
(11, 'css', 'css', 0),
(12, 'site_wide_header', 'site_wide_header', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(47, 2, 0),
(48, 2, 0),
(49, 2, 0),
(50, 2, 0),
(51, 2, 0),
(52, 2, 0),
(53, 2, 0),
(54, 2, 0),
(55, 2, 0),
(56, 2, 0),
(57, 2, 0),
(114, 3, 0),
(114, 4, 0),
(114, 5, 0),
(114, 6, 0),
(115, 5, 0),
(115, 7, 0),
(115, 8, 0),
(115, 9, 0),
(115, 10, 0),
(116, 11, 0),
(116, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 11),
(3, 3, 'wpcode_type', '', 0, 1),
(4, 4, 'wpcode_location', '', 0, 1),
(5, 5, 'wpcode_tags', '', 0, 2),
(6, 6, 'wpcode_tags', '', 0, 1),
(7, 7, 'wpcode_type', '', 0, 1),
(8, 8, 'wpcode_location', '', 0, 1),
(9, 9, 'wpcode_tags', '', 0, 1),
(10, 10, 'wpcode_tags', '', 0, 1),
(11, 11, 'wpcode_type', '', 0, 1),
(12, 12, 'wpcode_location', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'coalitiontest'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"7345f01ca9ad8276c07d9bc995ec261381e068200a3398dd0b1a73288c4bcd44\";a:4:{s:10:\"expiration\";i:1688025718;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687852918;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-06-27T12:19:34.383Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:4:\"core\";a:1:{s:34:\"isInspectorControlsTabsHintVisible\";b:0;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1687854884'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'coalitiontest', '$P$BYRc23TW5JdTouUA18fXTV2S5QLUfe1', 'coalitiontest', 'giorgi.epitashvili@mc-zero.one', 'http://localhost:8888/coalitiontest.local', '2023-06-27 08:01:35', '', 0, 'coalitiontest');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
