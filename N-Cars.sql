-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2018 at 12:58 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.9-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `N-Cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars_commentmeta`
--

CREATE TABLE `cars_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars_comments`
--

CREATE TABLE `cars_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cars_comments`
--

INSERT INTO `cars_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-10 16:25:47', '2018-09-10 16:25:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 17, 'admin', 'm.karem456@gmail.com', '', '::1', '2018-09-10 17:30:28', '2018-09-10 17:30:28', 'old car', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', '', 0, 1),
(3, 17, 'admin', 'm.karem456@gmail.com', '', '::1', '2018-09-11 10:45:00', '2018-09-11 10:45:00', 'test', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cars_links`
--

CREATE TABLE `cars_links` (
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
-- Table structure for table `cars_options`
--

CREATE TABLE `cars_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cars_options`
--

INSERT INTO `cars_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/N-Cars', 'yes'),
(2, 'home', 'http://localhost/N-Cars', 'yes'),
(3, 'blogname', 'N-Cars', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'm.karem456@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'N-Cars', 'yes'),
(41, 'stylesheet', 'N-Cars', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'cars_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1536747949;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1536769549;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536769561;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536771325;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536597320;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1536745933;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1536745937;s:7:\"checked\";a:4:{s:6:\"N-Cars\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_c725707436ffb8256b2bbf7bc3ade4e9', '1537201562', 'no'),
(123, '_site_transient_browser_c725707436ffb8256b2bbf7bc3ade4e9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"69.0.3497.81\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, 'can_compress_scripts', '0', 'no'),
(139, 'current_theme', 'Cars', 'yes'),
(140, 'theme_mods_N-Cars', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:11;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(153, 'category_children', 'a:0:{}', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(170, 'WPLANG', '', 'yes'),
(171, 'new_admin_email', 'm.karem456@gmail.com', 'yes'),
(194, '_transient_timeout_plugin_slugs', '1536760342', 'no'),
(195, '_transient_plugin_slugs', 'a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:39:\"widget-countdown/wpdevart-countdown.php\";i:3;s:9:\"hello.php\";i:4;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'no'),
(196, 'recently_activated', 'a:3:{s:39:\"widget-countdown/wpdevart-countdown.php\";i:1536673942;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1536673862;s:19:\"akismet/akismet.php\";i:1536672119;}', 'yes'),
(197, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1536672064;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(206, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:17:\"localhost/N-Cars/\";s:8:\"username\";s:4:\"root\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(207, 'wp_mail_smtp_initial_version', '1.3.3', 'no'),
(208, 'wp_mail_smtp_version', '1.3.3', 'no'),
(209, 'wp_mail_smtp', 'a:2:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:20:\"m.karem456@gmail.com\";s:9:\"from_name\";s:6:\"N-Cars\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:1:{s:7:\"autotls\";b:1;}}', 'no'),
(210, '_amn_smtp_last_checked', '1536624000', 'yes'),
(211, 'wp_mail_smtp_debug', 'a:1:{i:0;s:110:\"Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.\";}', 'no'),
(215, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1536745937;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:9:\"hello.php\";s:3:\"1.7\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.3.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1900656\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1900656\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(216, 'widget_wpdevart_countdown', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(219, '_site_transient_timeout_theme_roots', '1536747736', 'no'),
(220, '_site_transient_theme_roots', 'a:4:{s:6:\"N-Cars\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `cars_postmeta`
--

CREATE TABLE `cars_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cars_postmeta`
--

INSERT INTO `cars_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1536598553:1'),
(5, 7, '_wp_attached_file', '2018/09/test.jpeg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:17:\"2018/09/test.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"righside_slider\";a:4:{s:4:\"file\";s:16:\"test-108x67.jpeg\";s:5:\"width\";i:108;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 6, '_thumbnail_id', '7'),
(9, 6, '_wp_trash_meta_status', 'publish'),
(10, 6, '_wp_trash_meta_time', '1536598698'),
(11, 6, '_wp_desired_post_slug', 'first-post'),
(12, 1, '_wp_trash_meta_status', 'publish'),
(13, 1, '_wp_trash_meta_time', '1536598703'),
(14, 1, '_wp_desired_post_slug', 'hello-world'),
(15, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(16, 11, '_edit_last', '1'),
(17, 11, '_edit_lock', '1536605952:1'),
(18, 12, '_wp_attached_file', '2018/09/gallery1.jpg'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:184;s:4:\"file\";s:20:\"2018/09/gallery1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery1-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"righside_slider\";a:4:{s:4:\"file\";s:19:\"gallery1-108x67.jpg\";s:5:\"width\";i:108;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 11, '_thumbnail_id', '12'),
(22, 14, '_edit_last', '1'),
(23, 14, '_edit_lock', '1536605942:1'),
(24, 15, '_wp_attached_file', '2018/09/25emB1tM0k4.jpg'),
(25, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:390;s:4:\"file\";s:23:\"2018/09/25emB1tM0k4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"25emB1tM0k4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"25emB1tM0k4-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"righside_slider\";a:4:{s:4:\"file\";s:22:\"25emB1tM0k4-108x67.jpg\";s:5:\"width\";i:108;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 14, '_thumbnail_id', '15'),
(28, 17, '_edit_last', '1'),
(29, 17, '_edit_lock', '1536605971:1'),
(30, 18, '_wp_attached_file', '2018/09/article.jpg'),
(31, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:470;s:6:\"height\";i:217;s:4:\"file\";s:19:\"2018/09/article.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"article-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"article-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"righside_slider\";a:4:{s:4:\"file\";s:18:\"article-108x67.jpg\";s:5:\"width\";i:108;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 17, '_thumbnail_id', '18'),
(39, 21, '_menu_item_type', 'custom'),
(40, 21, '_menu_item_menu_item_parent', '0'),
(41, 21, '_menu_item_object_id', '21'),
(42, 21, '_menu_item_object', 'custom'),
(43, 21, '_menu_item_target', ''),
(44, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 21, '_menu_item_xfn', ''),
(46, 21, '_menu_item_url', 'http://localhost/N-Cars/'),
(57, 23, '_menu_item_type', 'taxonomy'),
(58, 23, '_menu_item_menu_item_parent', '0'),
(59, 23, '_menu_item_object_id', '3'),
(60, 23, '_menu_item_object', 'category'),
(61, 23, '_menu_item_target', ''),
(62, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 23, '_menu_item_xfn', ''),
(64, 23, '_menu_item_url', ''),
(66, 24, '_menu_item_type', 'taxonomy'),
(67, 24, '_menu_item_menu_item_parent', '0'),
(68, 24, '_menu_item_object_id', '2'),
(69, 24, '_menu_item_object', 'category'),
(70, 24, '_menu_item_target', ''),
(71, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 24, '_menu_item_xfn', ''),
(73, 24, '_menu_item_url', ''),
(75, 25, '_menu_item_type', 'taxonomy'),
(76, 25, '_menu_item_menu_item_parent', '0'),
(77, 25, '_menu_item_object_id', '4'),
(78, 25, '_menu_item_object', 'category'),
(79, 25, '_menu_item_target', ''),
(80, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 25, '_menu_item_xfn', ''),
(82, 25, '_menu_item_url', ''),
(87, 3, '_edit_lock', '1536607996:1'),
(88, 29, '_edit_last', '1'),
(89, 29, '_edit_lock', '1536608296:1'),
(98, 37, '_edit_lock', '1536667296:1'),
(99, 37, '_edit_last', '1'),
(100, 37, '_wp_page_template', 'google_service.php'),
(110, 40, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(111, 40, '_mail', 'a:8:{s:7:\"subject\";s:23:\"N-Cars \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <m.karem456@gmail.com>\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on N-Cars (http://localhost/N-Cars)\";s:9:\"recipient\";s:20:\"m.karem456@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(112, 40, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"N-Cars \"[your-subject]\"\";s:6:\"sender\";s:29:\"N-Cars <m.karem456@gmail.com>\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on N-Cars (http://localhost/N-Cars)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: m.karem456@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(113, 40, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(114, 40, '_additional_settings', NULL),
(115, 40, '_locale', 'en_US'),
(116, 41, '_edit_lock', '1536672414:1'),
(117, 41, '_edit_last', '1'),
(118, 41, '_wp_page_template', 'default'),
(119, 43, '_menu_item_type', 'post_type'),
(120, 43, '_menu_item_menu_item_parent', '0'),
(121, 43, '_menu_item_object_id', '41'),
(122, 43, '_menu_item_object', 'page'),
(123, 43, '_menu_item_target', ''),
(124, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 43, '_menu_item_xfn', ''),
(126, 43, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `cars_posts`
--

CREATE TABLE `cars_posts` (
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
-- Dumping data for table `cars_posts`
--

INSERT INTO `cars_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-10 16:25:47', '2018-09-10 16:25:47', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-09-10 16:58:23', '2018-09-10 16:58:23', '', 0, 'http://localhost/N-Cars/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-10 16:25:47', '2018-09-10 16:25:47', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/N-Cars/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-09-10 16:25:47', '2018-09-10 16:25:47', '', 0, 'http://localhost/N-Cars/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-10 16:25:47', '2018-09-10 16:25:47', '<h2>Who we are</h2><p>Our website address is: http://localhost/N-Cars.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-10 16:25:47', '2018-09-10 16:25:47', '', 0, 'http://localhost/N-Cars/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-10 16:26:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 16:26:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/N-Cars/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-10 16:55:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 16:55:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/N-Cars/?p=5', 0, 'post', '', 0),
(6, 1, '2018-09-10 16:58:12', '2018-09-10 16:58:12', 'This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post', 'First Post', '', 'trash', 'open', 'open', '', 'first-post__trashed', '', '', '2018-09-10 16:58:18', '2018-09-10 16:58:18', '', 0, 'http://localhost/N-Cars/?p=6', 0, 'post', '', 0),
(7, 1, '2018-09-10 16:58:07', '2018-09-10 16:58:07', '', 'test', '', 'inherit', 'open', 'closed', '', 'test', '', '', '2018-09-10 16:58:07', '2018-09-10 16:58:07', '', 6, 'http://localhost/N-Cars/wp-content/uploads/2018/09/test.jpeg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-09-10 16:58:12', '2018-09-10 16:58:12', 'This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post This is My First Post', 'First Post', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-09-10 16:58:12', '2018-09-10 16:58:12', '', 6, 'http://localhost/N-Cars/index.php/2018/09/10/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-09-10 16:58:23', '2018-09-10 16:58:23', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-10 16:58:23', '2018-09-10 16:58:23', '', 1, 'http://localhost/N-Cars/index.php/2018/09/10/1-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-09-10 16:58:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 16:58:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/N-Cars/?p=10', 0, 'post', '', 0),
(11, 1, '2018-09-10 17:00:27', '2018-09-10 17:00:27', 'This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car', 'BMW', '', 'publish', 'open', 'open', '', 'bmw', '', '', '2018-09-10 19:01:35', '2018-09-10 19:01:35', '', 0, 'http://localhost/N-Cars/?p=11', 0, 'post', '', 0),
(12, 1, '2018-09-10 17:00:22', '2018-09-10 17:00:22', '', 'gallery1', '', 'inherit', 'open', 'closed', '', 'gallery1', '', '', '2018-09-10 17:00:22', '2018-09-10 17:00:22', '', 11, 'http://localhost/N-Cars/wp-content/uploads/2018/09/gallery1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-09-10 17:00:27', '2018-09-10 17:00:27', 'This is new and fast car', 'BMW', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-10 17:00:27', '2018-09-10 17:00:27', '', 11, 'http://localhost/N-Cars/index.php/2018/09/10/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-09-10 17:01:10', '2018-09-10 17:01:10', 'this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car', 'Sport Car', '', 'publish', 'open', 'open', '', 'sport-car', '', '', '2018-09-10 19:01:22', '2018-09-10 19:01:22', '', 0, 'http://localhost/N-Cars/?p=14', 0, 'post', '', 0),
(15, 1, '2018-09-10 17:01:07', '2018-09-10 17:01:07', '', '25emB1tM0k4', '', 'inherit', 'open', 'closed', '', '25emb1tm0k4', '', '', '2018-09-10 17:01:07', '2018-09-10 17:01:07', '', 14, 'http://localhost/N-Cars/wp-content/uploads/2018/09/25emB1tM0k4.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-09-10 17:01:10', '2018-09-10 17:01:10', 'this is very fast sport car', 'Sport Car', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-09-10 17:01:10', '2018-09-10 17:01:10', '', 14, 'http://localhost/N-Cars/index.php/2018/09/10/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-09-10 17:01:46', '2018-09-10 17:01:46', 'this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one', 'Old Car', '', 'publish', 'open', 'open', '', 'old-car', '', '', '2018-09-10 19:01:53', '2018-09-10 19:01:53', '', 0, 'http://localhost/N-Cars/?p=17', 0, 'post', '', 2),
(18, 1, '2018-09-10 17:01:42', '2018-09-10 17:01:42', '', 'article', '', 'inherit', 'open', 'closed', '', 'article', '', '', '2018-09-10 17:01:42', '2018-09-10 17:01:42', '', 17, 'http://localhost/N-Cars/wp-content/uploads/2018/09/article.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-09-10 17:01:46', '2018-09-10 17:01:46', 'this is old car but very nice one', 'Old Car', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-10 17:01:46', '2018-09-10 17:01:46', '', 17, 'http://localhost/N-Cars/index.php/2018/09/10/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-09-10 17:40:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 17:40:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/N-Cars/?p=20', 0, 'post', '', 0),
(21, 1, '2018-09-10 18:21:16', '2018-09-10 18:21:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-11 13:30:16', '2018-09-11 13:30:16', '', 0, 'http://localhost/N-Cars/?p=21', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-09-10 18:21:16', '2018-09-10 18:21:16', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-09-11 13:30:16', '2018-09-11 13:30:16', '', 0, 'http://localhost/N-Cars/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2018-09-10 18:21:16', '2018-09-10 18:21:16', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-09-11 13:30:17', '2018-09-11 13:30:17', '', 0, 'http://localhost/N-Cars/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2018-09-10 18:21:16', '2018-09-10 18:21:16', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-09-11 13:30:17', '2018-09-11 13:30:17', '', 0, 'http://localhost/N-Cars/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2018-09-10 19:01:22', '2018-09-10 19:01:22', 'this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car this is very fast sport car', 'Sport Car', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-09-10 19:01:22', '2018-09-10 19:01:22', '', 14, 'http://localhost/N-Cars/index.php/2018/09/10/14-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-09-10 19:01:35', '2018-09-10 19:01:35', 'This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car This is new and fast car', 'BMW', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-10 19:01:35', '2018-09-10 19:01:35', '', 11, 'http://localhost/N-Cars/index.php/2018/09/10/11-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-09-10 19:01:53', '2018-09-10 19:01:53', 'this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one this is old car but very nice one', 'Old Car', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-10 19:01:53', '2018-09-10 19:01:53', '', 17, 'http://localhost/N-Cars/index.php/2018/09/10/17-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-09-10 19:36:33', '2018-09-10 19:36:33', '<p style=\"text-align: center; color: red;\"><strong>404 error</strong></p>\r\n<p style=\"text-align: center;\"><strong>This page doesn\'t exist</strong></p>', '404', '', 'publish', 'closed', 'closed', '', '404-error', '', '', '2018-09-10 19:38:16', '2018-09-10 19:38:16', '', 0, 'http://localhost/N-Cars/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-09-10 19:36:33', '2018-09-10 19:36:33', '<p style=\"text-align: center;\"><strong>404 error</strong></p>\r\n<p style=\"text-align: center;\"><strong>This page doesn\'t exist</strong></p>', '404 error', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-09-10 19:36:33', '2018-09-10 19:36:33', '', 29, 'http://localhost/N-Cars/index.php/2018/09/10/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-09-10 19:37:30', '2018-09-10 19:37:30', '<p style=\"text-align: center;\"><strong>404 error</strong></p>\r\n<p style=\"text-align: center;\"><strong>This page doesn\'t exist</strong></p>', '', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-09-10 19:37:30', '2018-09-10 19:37:30', '', 29, 'http://localhost/N-Cars/index.php/2018/09/10/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-09-10 19:37:55', '2018-09-10 19:37:55', '<p style=\"text-align: center; color: red\"><strong>404 error</strong></p>\r\n<p style=\"text-align: center;\"><strong>This page doesn\'t exist</strong></p>', '', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-09-10 19:37:55', '2018-09-10 19:37:55', '', 29, 'http://localhost/N-Cars/index.php/2018/09/10/29-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-09-10 19:38:04', '2018-09-10 19:38:04', '<p style=\"text-align: center; color: red;\"><strong>404 error</strong></p>\r\n<p style=\"text-align: center;\"><strong>This page doesn\'t exist</strong></p>', '', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-09-10 19:38:04', '2018-09-10 19:38:04', '', 29, 'http://localhost/N-Cars/index.php/2018/09/10/29-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-09-10 19:38:16', '2018-09-10 19:38:16', '<p style=\"text-align: center; color: red;\"><strong>404 error</strong></p>\r\n<p style=\"text-align: center;\"><strong>This page doesn\'t exist</strong></p>', '404', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-09-10 19:38:16', '2018-09-10 19:38:16', '', 29, 'http://localhost/N-Cars/index.php/2018/09/10/29-revision-v1/', 0, 'revision', '', 0),
(36, 2, '2018-09-11 11:48:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-11 11:48:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/N-Cars/?p=36', 0, 'post', '', 0),
(37, 1, '2018-09-11 12:03:57', '2018-09-11 12:03:57', '', 'Google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2018-09-11 12:03:57', '2018-09-11 12:03:57', '', 0, 'http://localhost/N-Cars/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-09-11 12:03:57', '2018-09-11 12:03:57', '', 'Google', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-09-11 12:03:57', '2018-09-11 12:03:57', '', 37, 'http://localhost/N-Cars/?p=38', 0, 'revision', '', 0),
(40, 1, '2018-09-11 13:21:04', '2018-09-11 13:21:04', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nN-Cars \"[your-subject]\"\n[your-name] <m.karem456@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on N-Cars (http://localhost/N-Cars)\nm.karem456@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nN-Cars \"[your-subject]\"\nN-Cars <m.karem456@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on N-Cars (http://localhost/N-Cars)\n[your-email]\nReply-To: m.karem456@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-11 13:21:04', '2018-09-11 13:21:04', '', 0, 'http://localhost/N-Cars/?post_type=wpcf7_contact_form&p=40', 0, 'wpcf7_contact_form', '', 0),
(41, 1, '2018-09-11 13:29:14', '2018-09-11 13:29:14', '[contact-form-7 id=\"40\" title=\"Contact form 1\"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-11 13:29:14', '2018-09-11 13:29:14', '', 0, 'http://localhost/N-Cars/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-09-11 13:29:14', '2018-09-11 13:29:14', '[contact-form-7 id=\"40\" title=\"Contact form 1\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-09-11 13:29:14', '2018-09-11 13:29:14', '', 41, 'http://localhost/N-Cars/?p=42', 0, 'revision', '', 0),
(43, 1, '2018-09-11 13:29:45', '2018-09-11 13:29:45', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-09-11 13:30:17', '2018-09-11 13:30:17', '', 0, 'http://localhost/N-Cars/?p=43', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cars_termmeta`
--

CREATE TABLE `cars_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars_terms`
--

CREATE TABLE `cars_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cars_terms`
--

INSERT INTO `cars_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Sport Cars', 'sport-cars', 0),
(3, 'New Cars', 'new-cars', 0),
(4, 'Old Cars', 'old-cars', 0),
(5, 'Used Cars', 'used-cars', 0),
(6, 'old', 'old', 0),
(7, 'cars', 'cars', 0),
(8, 'sport', 'sport', 0),
(9, 'new', 'new', 0),
(10, 'car', 'car', 0),
(11, 'Top-Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cars_term_relationships`
--

CREATE TABLE `cars_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cars_term_relationships`
--

INSERT INTO `cars_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(11, 3, 0),
(11, 9, 0),
(11, 10, 0),
(14, 2, 0),
(14, 3, 0),
(14, 8, 0),
(14, 9, 0),
(14, 10, 0),
(17, 4, 0),
(17, 6, 0),
(17, 7, 0),
(21, 11, 0),
(23, 11, 0),
(24, 11, 0),
(25, 11, 0),
(43, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cars_term_taxonomy`
--

CREATE TABLE `cars_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cars_term_taxonomy`
--

INSERT INTO `cars_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'post_tag', '', 0, 2),
(11, 11, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cars_usermeta`
--

CREATE TABLE `cars_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cars_usermeta`
--

INSERT INTO `cars_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'cars_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'cars_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"b6ad3f908495b2e5118764856cadc6a51445eab2257800da31b256d65b4b394a\";a:4:{s:10:\"expiration\";i:1536769560;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36\";s:5:\"login\";i:1536596760;}s:64:\"e8bdeead22f33e44e39a0bb0fabd7615da136e214d68fe7e2501c4d3983b76ce\";a:4:{s:10:\"expiration\";i:1536839263;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36\";s:5:\"login\";i:1536666463;}s:64:\"9b02f97152323474f370d649e5078903e730e74aef613dc16a9d1531be0649e4\";a:4:{s:10:\"expiration\";i:1536840220;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36\";s:5:\"login\";i:1536667420;}}'),
(17, 1, 'cars_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'cars_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'cars_user-settings-time', '1536608279'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '11'),
(23, 1, 'show_try_gutenberg_panel', '0'),
(24, 2, 'nickname', 'mkarem'),
(25, 2, 'first_name', 'mohamed'),
(26, 2, 'last_name', 'karem'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'cars_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(36, 2, 'cars_user_level', '2'),
(37, 2, 'default_password_nag', ''),
(39, 2, 'cars_dashboard_quick_press_last_post_id', '36'),
(41, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.0\";}'),
(42, 1, 'wp_mail_smtp_wpforms_dismissed', '1'),
(43, 1, 'tgmpa_dismissed_notice_wp-mail-smtp', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cars_users`
--

CREATE TABLE `cars_users` (
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
-- Dumping data for table `cars_users`
--

INSERT INTO `cars_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BW0l5kTmfulTrwC5R.OYMyDbhjizmM0', 'admin', 'm.karem456@gmail.com', '', '2018-09-10 16:25:46', '', 0, 'admin'),
(2, 'mkarem', '$P$B.hnEqazBdnDTolpT6ecTpCnw0yjyt1', 'mkarem', 'm.karem@test.com', '', '2018-09-11 11:47:36', '1536666457:$P$Bo0ocAB0esbS0Ot//HBdamDTTSegzw0', 0, 'mkarem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars_commentmeta`
--
ALTER TABLE `cars_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cars_comments`
--
ALTER TABLE `cars_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `cars_links`
--
ALTER TABLE `cars_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `cars_options`
--
ALTER TABLE `cars_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `cars_postmeta`
--
ALTER TABLE `cars_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cars_posts`
--
ALTER TABLE `cars_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `cars_termmeta`
--
ALTER TABLE `cars_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cars_terms`
--
ALTER TABLE `cars_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `cars_term_relationships`
--
ALTER TABLE `cars_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `cars_term_taxonomy`
--
ALTER TABLE `cars_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `cars_usermeta`
--
ALTER TABLE `cars_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cars_users`
--
ALTER TABLE `cars_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars_commentmeta`
--
ALTER TABLE `cars_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars_comments`
--
ALTER TABLE `cars_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cars_links`
--
ALTER TABLE `cars_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars_options`
--
ALTER TABLE `cars_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `cars_postmeta`
--
ALTER TABLE `cars_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `cars_posts`
--
ALTER TABLE `cars_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cars_termmeta`
--
ALTER TABLE `cars_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars_terms`
--
ALTER TABLE `cars_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cars_term_taxonomy`
--
ALTER TABLE `cars_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cars_usermeta`
--
ALTER TABLE `cars_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cars_users`
--
ALTER TABLE `cars_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
