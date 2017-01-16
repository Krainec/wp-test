-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 16 2017 г., 21:15
-- Версия сервера: 5.5.45
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `wordpress2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_2commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2comments`
--

CREATE TABLE IF NOT EXISTS `wp_2comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_2comments`
--

INSERT INTO `wp_2comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress2.example', 'https://wordpress.org/', '', '2016-12-20 20:08:56', '2016-12-20 17:08:56', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2links`
--

CREATE TABLE IF NOT EXISTS `wp_2links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2options`
--

CREATE TABLE IF NOT EXISTS `wp_2options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=580 ;

--
-- Дамп данных таблицы `wp_2options`
--

INSERT INTO `wp_2options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpress2:81', 'yes'),
(2, 'home', 'http://wordpress2:81', 'yes'),
(3, 'blogname', 'KSA', 'yes'),
(4, 'blogdescription', 'KSA', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ksask@mail.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gladiolus', 'yes'),
(41, 'stylesheet', 'gladiolus', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
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
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_2user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'ru_RU', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:7:"pages-2";i:7;s:11:"tag_cloud-2";}s:18:"orphaned_widgets_2";a:1:{i:0;s:14:"recent-posts-3";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"sortby";s:10:"post_title";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1484629737;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1484672980;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1484673320;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(123, '_transient_twentysixteen_categories', '1', 'yes'),
(124, 'recently_activated', 'a:3:{s:31:"easy-fancybox/easy-fancybox.php";i:1484587444;s:33:"which-template/which-template.php";i:1484587444;s:19:"akismet/akismet.php";i:1484587414;}', 'yes'),
(129, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1482254725;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(130, 'current_theme', 'Gladiolus', 'yes'),
(131, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1482258936;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:7:"pages-2";i:7;s:11:"tag_cloud-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:1:{i:0;s:14:"recent-posts-3";}}}}', 'yes'),
(132, 'theme_switched', '', 'yes'),
(133, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1482256360;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(139, '_transient_twentyfifteen_categories', '1', 'yes'),
(157, '_transient_twentyfourteen_category_count', '1', 'yes'),
(160, 'theme_mods_clean-magazine', 'a:4:{i:0;b:0;s:28:"clean_magazine_theme_options";a:57:{s:18:"move_title_tagline";i:0;s:12:"theme_layout";s:13:"right-sidebar";s:14:"content_layout";s:18:"excerpt-image-left";s:24:"single_post_image_layout";s:8:"disabled";s:28:"enable_featured_header_image";s:8:"disabled";s:19:"featured_image_size";s:4:"full";s:25:"featured_header_image_url";s:0:"";s:25:"featured_header_image_alt";s:0:"";s:26:"featured_header_image_base";i:0;s:16:"breadcumb_option";i:0;s:20:"breadcumb_onhomepage";i:0;s:19:"breadcumb_seperator";s:7:"&raquo;";s:10:"custom_css";s:0:"";s:16:"disable_scrollup";i:0;s:14:"excerpt_length";s:2:"45";s:17:"excerpt_more_text";s:13:"Read More ...";s:19:"front_page_category";a:0:{}s:15:"pagination_type";s:7:"default";s:25:"promotion_headline_option";s:8:"homepage";s:18:"promotion_headline";s:46:"Clean Magazine is a Responsive WordPress Theme";s:21:"promotion_subheadline";s:121:"This is promotion headline. You can edit this from Appearance -> Customize -> Theme Options -> Promotion Headline Options";s:25:"promotion_headline_button";s:7:"Buy Now";s:22:"promotion_headline_url";s:24:"https://catchthemes.com/";s:25:"promotion_headline_target";i:1;s:11:"search_text";s:9:"Search...";s:14:"footer_content";s:163:"Copyright &copy; [the-year] [site-link]. All Rights Reserved &#124; Clean Magazine&nbsp;by&nbsp;<a target="_blank" href="https://catchthemes.com/">Catch Themes</a>";s:20:"reset_footer_content";i:0;s:16:"background_color";s:7:"#f9f9f9";s:16:"header_textcolor";s:7:"#111111";s:31:"header_highlight_content_option";s:8:"disabled";s:29:"header_highlight_content_type";s:29:"demo-header-highlight-content";s:33:"header_highlight_content_headline";s:0:"";s:36:"header_highlight_content_subheadline";s:0:"";s:31:"header_highlight_content_number";s:1:"5";s:29:"header_highlight_content_show";s:7:"excerpt";s:23:"featured_content_option";s:8:"disabled";s:23:"featured_content_layout";s:11:"layout-four";s:25:"featured_content_position";i:1;s:25:"featured_content_headline";s:0:"";s:28:"featured_content_subheadline";s:0:"";s:21:"featured_content_type";s:21:"demo-featured-content";s:23:"featured_content_number";s:1:"3";s:21:"featured_content_show";s:7:"excerpt";s:18:"news_ticker_option";s:8:"disabled";s:20:"news_ticker_position";s:10:"below-menu";s:16:"news_ticker_type";s:16:"demo-news-ticker";s:17:"news_ticker_label";s:0:"";s:18:"news_ticker_number";s:1:"4";s:29:"news_ticker_transition_effect";s:8:"flipVert";s:22:"featured_slider_option";s:8:"disabled";s:28:"featured_slider_image_loader";s:4:"true";s:32:"featured_slide_transition_effect";s:7:"fadeout";s:31:"featured_slide_transition_delay";s:1:"4";s:32:"featured_slide_transition_length";s:1:"1";s:20:"featured_slider_type";s:20:"demo-featured-slider";s:21:"featured_slide_number";s:1:"4";s:18:"reset_all_settings";i:0;}s:16:"header_textcolor";s:6:"8a3ec9";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1482424477;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:15:"primary-sidebar";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:7:"pages-2";i:7;s:11:"tag_cloud-2";}s:12:"header-right";a:0:{}s:8:"footer-1";a:1:{i:0;s:14:"recent-posts-3";}s:8:"footer-2";N;s:8:"footer-3";N;}}}', 'yes'),
(161, 'widget_ct-advertisement-image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(162, 'widget_ct-featured-post', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'widget_ct-instagram', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'widget_clean_magazine_social_icons', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(334, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1482270239;s:7:"version";s:3:"4.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(427, 'ai1wm_secret_key', 'mVrTzFEY7Vyt', 'yes'),
(439, 'theme_mods_first', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:12:"primary-menu";i:7;s:12:"footery-menu";i:7;}s:10:"first_text";s:15:"Курьезы!";s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484586359;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:7:"pages-2";i:7;s:11:"tag_cloud-2";}s:18:"orphaned_widgets_2";a:1:{i:0;s:14:"recent-posts-3";}}}}', 'yes'),
(450, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(487, 'category_children', 'a:1:{i:2;a:2:{i:0;i:8;i:1;i:9;}}', 'yes'),
(500, 'fancybox_enableImg', '1', 'yes'),
(501, 'fancybox_enableInline', '1', 'yes'),
(502, 'fancybox_enablePDF', '', 'yes'),
(503, 'fancybox_enableSWF', '', 'yes'),
(504, 'fancybox_enableSVG', '', 'yes'),
(505, 'fancybox_enableYoutube', '', 'yes'),
(506, 'fancybox_enableVimeo', '', 'yes'),
(507, 'fancybox_enableDailymotion', '', 'yes'),
(508, 'fancybox_enableiFrame', '', 'yes'),
(509, 'fancybox_overlayShow', '1', 'yes'),
(510, 'fancybox_hideOnOverlayClick', '1', 'yes'),
(511, 'fancybox_overlayOpacity', '', 'yes'),
(512, 'fancybox_overlayColor', '', 'yes'),
(513, 'fancybox_overlaySpotlight', '', 'yes'),
(514, 'fancybox_showCloseButton', '1', 'yes'),
(515, 'fancybox_backgroundColor', '', 'yes'),
(516, 'fancybox_textColor', '', 'yes'),
(517, 'fancybox_titleColor', '', 'yes'),
(518, 'fancybox_paddingColor', '', 'yes'),
(519, 'fancybox_borderRadius', '', 'yes'),
(520, 'fancybox_width', '', 'yes'),
(521, 'fancybox_height', '', 'yes'),
(522, 'fancybox_padding', '', 'yes'),
(523, 'fancybox_margin', '20', 'yes'),
(524, 'fancybox_centerOnScroll', '1', 'yes'),
(525, 'fancybox_enableEscapeButton', '1', 'yes'),
(526, 'fancybox_autoScale', '1', 'yes'),
(527, 'fancybox_speedIn', '', 'yes'),
(528, 'fancybox_speedOut', '', 'yes'),
(529, 'fancybox_autoClick', '1', 'yes'),
(530, 'fancybox_delayClick', '1000', 'yes'),
(531, 'fancybox_compatIE8', '', 'yes'),
(532, 'fancybox_metaData', '', 'yes'),
(533, 'fancybox_autoAttribute', '.jpg .jpeg .png', 'yes'),
(534, 'fancybox_autoAttributeLimit', '', 'yes'),
(535, 'fancybox_classType', '', 'yes'),
(536, 'fancybox_transitionIn', 'elastic', 'yes'),
(537, 'fancybox_easingIn', 'easeOutBack', 'yes'),
(538, 'fancybox_transitionOut', 'elastic', 'yes'),
(539, 'fancybox_easingOut', 'easeInBack', 'yes'),
(540, 'fancybox_opacity', '', 'yes'),
(541, 'fancybox_hideOnContentClick', '', 'yes'),
(542, 'fancybox_titleShow', '1', 'yes'),
(543, 'fancybox_titlePosition', 'over', 'yes'),
(544, 'fancybox_titleFromAlt', '1', 'yes'),
(545, 'fancybox_autoGallery', '1', 'yes'),
(546, 'fancybox_showNavArrows', '1', 'yes'),
(547, 'fancybox_enableKeyboardNav', '1', 'yes'),
(548, 'fancybox_mouseWheel', '1', 'yes'),
(549, 'fancybox_cyclic', '', 'yes'),
(550, 'fancybox_changeSpeed', '', 'yes'),
(551, 'fancybox_changeFade', '', 'yes'),
(552, 'fancybox_autoSelector', 'div.gallery', 'yes'),
(555, 'ai1wm_status', 'a:3:{s:4:"type";s:4:"done";s:7:"message";s:518:"You need to perform two more steps:<br /><strong>1. You must save your permalinks structure twice. <a class="ai1wm-no-underline" href="http://wordpress2:81/wp-admin/options-permalink.php#submit" target="_blank">Permalinks Settings</a></strong> <small>(opens a new window)</small><br /><strong>2. <a class="ai1wm-no-underline" href="https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform" target="_blank">Optionally, review the plugin</a>.</strong> <small>(opens a new window)</small>";s:5:"title";s:40:"Your data has been imported successfuly!";}', 'yes'),
(556, 'active_plugins', 'a:2:{i:0;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(564, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1484586797;s:7:"checked";a:6:{s:19:"akismet/akismet.php";s:3:"3.2";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:4:"6.39";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.6";s:31:"easy-fancybox/easy-fancybox.php";s:7:"1.5.8.2";s:9:"hello.php";s:3:"1.6";s:33:"which-template/which-template.php";s:3:"4.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";O:8:"stdClass":6:{s:2:"id";s:5:"46859";s:4:"slug";s:23:"all-in-one-wp-migration";s:6:"plugin";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:11:"new_version";s:4:"6.39";s:3:"url";s:54:"https://wordpress.org/plugins/all-in-one-wp-migration/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.39.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.6";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.6.zip";}s:31:"easy-fancybox/easy-fancybox.php";O:8:"stdClass":7:{s:2:"id";s:5:"16614";s:4:"slug";s:13:"easy-fancybox";s:6:"plugin";s:31:"easy-fancybox/easy-fancybox.php";s:11:"new_version";s:7:"1.5.8.2";s:3:"url";s:44:"https://wordpress.org/plugins/easy-fancybox/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/easy-fancybox.1.5.8.2.zip";s:14:"upgrade_notice";s:85:"New features: auto-popup delay, margin, nolightbox... Bugfixes and PHP7 compatibility";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:33:"which-template/which-template.php";O:8:"stdClass":7:{s:2:"id";s:5:"42531";s:4:"slug";s:14:"which-template";s:6:"plugin";s:33:"which-template/which-template.php";s:11:"new_version";s:3:"4.0";s:3:"url";s:45:"https://wordpress.org/plugins/which-template/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/which-template.4.0.zip";s:14:"upgrade_notice";s:82:"You can now see which header, footer and sidebar template your using on your page.";}}}', 'no'),
(565, 'ai1wm_updater', 'a:0:{}', 'yes'),
(566, 'db_upgraded', '', 'yes'),
(567, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.1";s:7:"version";s:5:"4.7.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1484586546;s:15:"version_checked";s:5:"4.7.1";s:12:"translations";a:0:{}}', 'no'),
(568, 'can_compress_scripts', '1', 'no'),
(569, 'theme_mods_gladiolus', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:12:"primary-menu";i:7;s:12:"footery-menu";i:7;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(570, '_site_transient_timeout_theme_roots', '1484589557', 'no'),
(571, '_site_transient_theme_roots', 'a:7:{s:14:"clean-magazine";s:7:"/themes";s:9:"gladiolus";s:7:"/themes";s:3:"img";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(574, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1484587758;s:7:"checked";a:6:{s:14:"clean-magazine";s:3:"1.6";s:9:"gladiolus";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.0";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.1";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.1.zip";}}s:12:"translations";a:0:{}}', 'no'),
(576, '_transient_timeout_plugin_slugs', '1484674677', 'no'),
(577, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:31:"easy-fancybox/easy-fancybox.php";i:4;s:9:"hello.php";i:5;s:33:"which-template/which-template.php";}', 'no'),
(579, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_2postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=195 ;

--
-- Дамп данных таблицы `wp_2postmeta`
--

INSERT INTO `wp_2postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1484245946:1'),
(3, 4, '_edit_last', '1'),
(4, 4, '_edit_lock', '1482254137:1'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1482254122:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1482257118:1'),
(9, 8, '_wp_attached_file', '2016/12/Hydrangeas.jpg'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:22:"2016/12/Hydrangeas.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Hydrangeas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Hydrangeas-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Hydrangeas-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Hydrangeas-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"Hydrangeas-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:23:"Hydrangeas-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:11:"Amish Patel";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1206376913";s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 7, '_wp_page_template', 'default'),
(12, 11, '_edit_last', '1'),
(13, 11, '_edit_lock', '1482257994:1'),
(14, 12, '_wp_attached_file', '2016/12/Chrysanthemum.jpg'),
(15, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2016/12/Chrysanthemum.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Chrysanthemum-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Chrysanthemum-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1205503166";s:9:"copyright";s:32:"© Corbis.  All Rights Reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 11, '_thumbnail_id', '12'),
(18, 14, '_edit_last', '1'),
(19, 14, '_edit_lock', '1482258044:1'),
(20, 15, '_wp_attached_file', '2016/12/Jellyfish.jpg'),
(21, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:21:"2016/12/Jellyfish.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Jellyfish-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Jellyfish-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"Jellyfish-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"Jellyfish-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"Jellyfish-672x372.jpg";s:5:"width";i:672;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:22:"Jellyfish-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:9:"Hang Quan";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1202729544";s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 14, '_thumbnail_id', '15'),
(24, 17, '_edit_last', '1'),
(25, 17, '_edit_lock', '1482258195:1'),
(27, 19, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(28, 19, '_mail', 'a:8:{s:7:"subject";s:20:"ksa "[your-subject]"";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:161:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on ksa (http://wordpress2:81)";s:9:"recipient";s:13:"ksask@mail.ru";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(29, 19, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"ksa "[your-subject]"";s:6:"sender";s:26:"ksa <wordpress@wordpress2>";s:4:"body";s:103:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on ksa (http://wordpress2:81)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:23:"Reply-To: ksask@mail.ru";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(30, 19, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(31, 19, '_additional_settings', ''),
(32, 19, '_locale', 'ru_RU'),
(35, 19, '_config_errors', 'a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:103;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:88:"http://contactform7.com/configuration-errors/#mail.sender:error_email_not_in_site_domain";}}}}'),
(36, 20, '_edit_last', '1'),
(37, 20, '_edit_lock', '1482423531:1'),
(43, 20, 'clean-magazine-layout-option', 'default'),
(44, 20, 'clean-magazine-header-image', 'default'),
(45, 20, 'clean-magazine-featured-image', 'default'),
(46, 22, '_menu_item_type', 'taxonomy'),
(47, 22, '_menu_item_menu_item_parent', '0'),
(48, 22, '_menu_item_object_id', '1'),
(49, 22, '_menu_item_object', 'category'),
(50, 22, '_menu_item_target', ''),
(51, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 22, '_menu_item_xfn', ''),
(53, 22, '_menu_item_url', ''),
(55, 23, '_menu_item_type', 'taxonomy'),
(56, 23, '_menu_item_menu_item_parent', '0'),
(57, 23, '_menu_item_object_id', '2'),
(58, 23, '_menu_item_object', 'category'),
(59, 23, '_menu_item_target', ''),
(60, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 23, '_menu_item_xfn', ''),
(62, 23, '_menu_item_url', ''),
(64, 24, '_menu_item_type', 'post_type'),
(65, 24, '_menu_item_menu_item_parent', '0'),
(66, 24, '_menu_item_object_id', '14'),
(67, 24, '_menu_item_object', 'post'),
(68, 24, '_menu_item_target', ''),
(69, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 24, '_menu_item_xfn', ''),
(71, 24, '_menu_item_url', ''),
(73, 25, '_menu_item_type', 'post_type'),
(74, 25, '_menu_item_menu_item_parent', '0'),
(75, 25, '_menu_item_object_id', '17'),
(76, 25, '_menu_item_object', 'post'),
(77, 25, '_menu_item_target', ''),
(78, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 25, '_menu_item_xfn', ''),
(80, 25, '_menu_item_url', ''),
(91, 27, '_menu_item_type', 'post_type'),
(92, 27, '_menu_item_menu_item_parent', '0'),
(93, 27, '_menu_item_object_id', '1'),
(94, 27, '_menu_item_object', 'post'),
(95, 27, '_menu_item_target', ''),
(96, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 27, '_menu_item_xfn', ''),
(98, 27, '_menu_item_url', ''),
(118, 30, '_menu_item_type', 'post_type'),
(119, 30, '_menu_item_menu_item_parent', '0'),
(120, 30, '_menu_item_object_id', '2'),
(121, 30, '_menu_item_object', 'page'),
(122, 30, '_menu_item_target', ''),
(123, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 30, '_menu_item_xfn', ''),
(125, 30, '_menu_item_url', ''),
(127, 31, '_menu_item_type', 'custom'),
(128, 31, '_menu_item_menu_item_parent', '0'),
(129, 31, '_menu_item_object_id', '31'),
(130, 31, '_menu_item_object', 'custom'),
(131, 31, '_menu_item_target', ''),
(132, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 31, '_menu_item_xfn', ''),
(134, 31, '_menu_item_url', 'http://wordpress2:81/'),
(135, 35, '_edit_last', '1'),
(136, 35, '_edit_lock', '1484072622:1'),
(140, 41, '_edit_last', '1'),
(141, 41, '_edit_lock', '1484070889:1'),
(145, 35, '_thumbnail_id', '15'),
(146, 45, '_edit_last', '1'),
(147, 45, '_edit_lock', '1484238118:1'),
(148, 46, '_wp_attached_file', '2017/01/001.jpg'),
(149, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:680;s:6:"height";i:628;s:4:"file";s:15:"2017/01/001.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"001-300x277.jpg";s:5:"width";i:300;s:6:"height";i:277;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(150, 45, '_thumbnail_id', '46'),
(152, 49, '_wp_attached_file', '2017/01/002.jpg'),
(153, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:410;s:4:"file";s:15:"2017/01/002.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"002-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"002-300x189.jpg";s:5:"width";i:300;s:6:"height";i:189;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(154, 48, '_edit_last', '1'),
(155, 48, '_thumbnail_id', '49'),
(156, 48, '_edit_lock', '1484238244:1'),
(159, 51, '_edit_last', '1'),
(160, 51, '_edit_lock', '1484238344:1'),
(161, 52, '_wp_attached_file', '2017/01/003.jpg'),
(162, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:225;s:4:"file";s:15:"2017/01/003.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"003-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"003-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 51, '_thumbnail_id', '52'),
(165, 54, '_edit_last', '1'),
(166, 54, '_edit_lock', '1484238600:1'),
(167, 56, '_menu_item_type', 'taxonomy'),
(168, 56, '_menu_item_menu_item_parent', '0'),
(169, 56, '_menu_item_object_id', '10'),
(170, 56, '_menu_item_object', 'category'),
(171, 56, '_menu_item_target', ''),
(172, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 56, '_menu_item_xfn', ''),
(174, 56, '_menu_item_url', ''),
(176, 57, '_wp_attached_file', '2017/01/004.jpg'),
(177, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:348;s:4:"file";s:15:"2017/01/004.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"004-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"004-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 54, '_thumbnail_id', '57'),
(180, 58, '_edit_last', '1'),
(181, 58, '_edit_lock', '1484239101:1'),
(182, 58, '_thumbnail_id', '15'),
(184, 60, '_form', '[text* your-name placeholder "Ваше имя"] \n\n[email* your-email placeholder "Ваш e-mail"] \n\n[submit "Send"]'),
(185, 60, '_mail', 'a:8:{s:7:"subject";s:20:"KSA "[your-subject]"";s:6:"sender";s:34:"[your-name] <wordpress@wordpress2>";s:4:"body";s:216:"имя: [your-name]\nтелефон: [your-phone]\nотправлено со страницы: [_post_url]\n[_url]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on KSA (http://wordpress2:81)";s:9:"recipient";s:13:"ksask@mail.ru";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(186, 60, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"KSA "[your-subject]"";s:6:"sender";s:26:"KSA <wordpress@wordpress2>";s:4:"body";s:103:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on KSA (http://wordpress2:81)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:23:"Reply-To: ksask@mail.ru";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(187, 60, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(188, 60, '_additional_settings', ''),
(189, 60, '_locale', 'ru_RU'),
(192, 2, '_edit_last', '1'),
(194, 60, '_config_errors', 'a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:78:"http://contactform7.com/configuration-errors/#mail.sender:error_invalid_syntax";}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2posts`
--

CREATE TABLE IF NOT EXISTS `wp_2posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `wp_2posts`
--

INSERT INTO `wp_2posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-12-20 20:08:56', '2016-12-20 17:08:56', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2016-12-20 20:08:56', '2016-12-20 17:08:56', '', 0, 'http://wordpress2:81/?p=1', 0, 'post', '', 1),
(2, 1, '2016-12-20 20:08:56', '2016-12-20 17:08:56', '[contact-form-7 id="60" title="Untitled"]\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://wordpress2:81/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-01-12 21:30:49', '2017-01-12 18:30:49', '', 0, 'http://wordpress2:81/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-12-20 20:15:37', '0000-00-00 00:00:00', '', 'вторая', '', 'draft', 'open', 'open', '', '', '', '', '2016-12-20 20:15:37', '2016-12-20 17:15:37', '', 0, 'http://wordpress2:81/?p=4', 0, 'post', '', 0),
(5, 1, '2016-12-20 20:17:22', '0000-00-00 00:00:00', 'Привет Сергей', 'вторая', '', 'draft', 'open', 'open', '', '', '', '', '2016-12-20 20:17:22', '2016-12-20 17:17:22', '', 0, 'http://wordpress2:81/?p=5', 0, 'post', '', 0),
(6, 1, '2016-12-20 20:17:22', '2016-12-20 17:17:22', 'Привет Сергей', 'вторая', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-12-20 20:17:22', '2016-12-20 17:17:22', '', 5, 'http://wordpress2:81/2016/12/20/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-12-20 21:04:23', '2016-12-20 18:04:23', '<h1><span style="color: #ff0000;">Какойто текст в первой странице </span></h1>\r\n<a href="https://f1.news.ru">ну такое</a><a href="http://mail.ru"><img class="img-img wp-image-8 alignleft" src="http://wordpress2:81/wp-content/uploads/2016/12/Hydrangeas-300x225.jpg" alt="hydrangeas" width="323" height="242" /></a>', 'Первая страница', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%b5%d1%80%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2016-12-20 21:07:38', '2016-12-20 18:07:38', '', 0, 'http://wordpress2:81/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-12-20 20:59:19', '2016-12-20 17:59:19', '', 'hydrangeas', '', 'inherit', 'open', 'closed', '', 'hydrangeas', '', '', '2016-12-20 20:59:19', '2016-12-20 17:59:19', '', 7, 'http://wordpress2:81/wp-content/uploads/2016/12/Hydrangeas.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2016-12-20 21:04:23', '2016-12-20 18:04:23', '<h1><span style="color: #ff0000;">Какойто текст в первой странице </span></h1>\r\n<a href="http://f1.news.ru">ну такое</a><a href="http://mail.ru"><img class="img-img alignleft wp-image-8" src="http://wordpress2:81/wp-content/uploads/2016/12/Hydrangeas-300x225.jpg" alt="hydrangeas" width="323" height="242" /></a>', 'Первая страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-12-20 21:04:23', '2016-12-20 18:04:23', '', 7, 'http://wordpress2:81/2016/12/20/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-12-20 21:07:38', '2016-12-20 18:07:38', '<h1><span style="color: #ff0000;">Какойто текст в первой странице </span></h1>\r\n<a href="https://f1.news.ru">ну такое</a><a href="http://mail.ru"><img class="img-img wp-image-8 alignleft" src="http://wordpress2:81/wp-content/uploads/2016/12/Hydrangeas-300x225.jpg" alt="hydrangeas" width="323" height="242" /></a>', 'Первая страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-12-20 21:07:38', '2016-12-20 18:07:38', '', 7, 'http://wordpress2:81/2016/12/20/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-12-20 21:18:14', '2016-12-20 18:18:14', '<h1 class="post_title">Сезон 2016: Календарь чемпионата</h1>', 'ЧЕМПИОНАТ', '', 'publish', 'open', 'open', '', '%d1%87%d0%b5%d0%bc%d0%bf%d0%b8%d0%be%d0%bd%d0%b0%d1%82', '', '', '2016-12-20 21:18:14', '2016-12-20 18:18:14', '', 0, 'http://wordpress2:81/?p=11', 0, 'post', '', 0),
(12, 1, '2016-12-20 21:17:59', '2016-12-20 18:17:59', '', 'chrysanthemum', '', 'inherit', 'open', 'closed', '', 'chrysanthemum', '', '', '2016-12-20 21:17:59', '2016-12-20 18:17:59', '', 11, 'http://wordpress2:81/wp-content/uploads/2016/12/Chrysanthemum.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2016-12-20 21:18:14', '2016-12-20 18:18:14', '<h1 class="post_title">Сезон 2016: Календарь чемпионата</h1>', 'ЧЕМПИОНАТ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-12-20 21:18:14', '2016-12-20 18:18:14', '', 11, 'http://wordpress2:81/2016/12/20/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-12-20 21:22:06', '2016-12-20 18:22:06', 'какоето интервью самого себя<!--more-->\r\n\r\nеще какаоенто интервью\r\n\r\nlorem20+TAB  не работает((((', 'ИНТЕРВЬЮ', '', 'publish', 'open', 'open', '', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b2%d1%8c%d1%8e', '', '', '2016-12-20 21:22:06', '2016-12-20 18:22:06', '', 0, 'http://wordpress2:81/?p=14', 0, 'post', '', 0),
(15, 1, '2016-12-20 21:20:38', '2016-12-20 18:20:38', '', 'jellyfish', '', 'inherit', 'open', 'closed', '', 'jellyfish', '', '', '2016-12-20 21:20:38', '2016-12-20 18:20:38', '', 14, 'http://wordpress2:81/wp-content/uploads/2016/12/Jellyfish.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2016-12-20 21:22:06', '2016-12-20 18:22:06', 'какоето интервью самого себя<!--more-->\r\n\r\nеще какаоенто интервью\r\n\r\nlorem20+TAB  не работает((((', 'ИНТЕРВЬЮ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-12-20 21:22:06', '2016-12-20 18:22:06', '', 14, 'http://wordpress2:81/2016/12/20/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-12-20 21:25:00', '2016-12-20 18:25:00', 'творим что хотим!!! УРА!! ХОЧУ ВСЕГО СРАЗУ всего хорошего  ВДВА РАЗА БОЛЬШЕ', 'КОЛОНКИ', '', 'publish', 'open', 'open', '', '%d0%ba%d0%be%d0%bb%d0%be%d0%bd%d0%ba%d0%b8', '', '', '2016-12-20 21:25:00', '2016-12-20 18:25:00', '', 0, 'http://wordpress2:81/?p=17', 0, 'post', '', 0),
(18, 1, '2016-12-20 21:25:00', '2016-12-20 18:25:00', 'творим что хотим!!! УРА!! ХОЧУ ВСЕГО СРАЗУ всего хорошего  ВДВА РАЗА БОЛЬШЕ', 'КОЛОНКИ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-12-20 21:25:00', '2016-12-20 18:25:00', '', 17, 'http://wordpress2:81/2016/12/20/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-12-20 21:43:59', '2016-12-20 18:43:59', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Send"]\nksa "[your-subject]"\n[your-name] <[your-email]>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on ksa (http://wordpress2:81)\nksask@mail.ru\n\n\n\n\n\nksa "[your-subject]"\nksa <wordpress@wordpress2>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on ksa (http://wordpress2:81)\n[your-email]\nReply-To: ksask@mail.ru\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-12-20 21:55:48', '2016-12-20 18:55:48', '', 0, 'http://wordpress2:81/?post_type=wpcf7_contact_form&#038;p=19', 0, 'wpcf7_contact_form', '', 0),
(20, 1, '2016-12-20 21:57:09', '2016-12-20 18:57:09', '[contact-form-7 id="19" title="Contact form 1"]', 'Обратная связь', '', 'publish', 'open', 'open', '', '%d0%be%d0%b1%d1%80%d0%b0%d1%82%d0%bd%d0%b0%d1%8f-%d1%81%d0%b2%d1%8f%d0%b7%d1%8c', '', '', '2016-12-20 21:58:01', '2016-12-20 18:58:01', '', 0, 'http://wordpress2:81/?p=20', 0, 'post', '', 0),
(21, 1, '2016-12-20 21:57:09', '2016-12-20 18:57:09', '[contact-form-7 id="19" title="Contact form 1"]', 'Обратная связь', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-12-20 21:57:09', '2016-12-20 18:57:09', '', 20, 'http://wordpress2:81/2016/12/20/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-12-22 21:32:23', '2016-12-22 18:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-01-12 19:29:07', '2017-01-12 16:29:07', '', 0, 'http://wordpress2:81/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2016-12-22 21:32:23', '2016-12-22 18:32:23', 'какието новости', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-01-12 19:29:07', '2017-01-12 16:29:07', '', 0, 'http://wordpress2:81/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2016-12-22 21:32:23', '2016-12-22 18:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-01-12 19:29:07', '2017-01-12 16:29:08', '', 0, 'http://wordpress2:81/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2016-12-22 21:32:23', '2016-12-22 18:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-01-12 19:29:08', '2017-01-12 16:29:08', '', 0, 'http://wordpress2:81/?p=25', 5, 'nav_menu_item', '', 0),
(27, 1, '2016-12-22 21:32:23', '2016-12-22 18:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-01-12 19:29:08', '2017-01-12 16:29:08', '', 0, 'http://wordpress2:81/?p=27', 6, 'nav_menu_item', '', 0),
(30, 1, '2016-12-22 21:32:23', '2016-12-22 18:32:23', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2017-01-12 19:29:08', '2017-01-12 16:29:08', '', 0, 'http://wordpress2:81/?p=30', 7, 'nav_menu_item', '', 0),
(31, 1, '2016-12-22 21:52:23', '2016-12-22 18:52:23', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2017-01-12 19:29:07', '2017-01-12 16:29:07', '', 0, 'http://wordpress2:81/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2017-01-10 19:14:19', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-01-10 19:14:19', '0000-00-00 00:00:00', '', 0, 'http://wordpress2:81/?p=32', 0, 'post', '', 0),
(33, 1, '2017-01-10 20:13:08', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-01-10 20:13:08', '0000-00-00 00:00:00', '', 0, 'http://wordpress2:81/?p=33', 0, 'post', '', 0),
(34, 1, '2017-01-10 20:13:12', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-01-10 20:13:12', '0000-00-00 00:00:00', '', 0, 'http://wordpress2:81/?p=34', 0, 'post', '', 0),
(35, 1, '2017-01-10 20:15:40', '2017-01-10 17:15:40', '<div class="feed__item">\r\n\r\n<time>19:09</time>\r\n<div class="feed__item--title"><a href="http://zn.ua/UKRAINE/efremov-soderzhitsya-v-dvuhmestnoy-kamere-s-fortochkoy-sbu-235441_.html" target="_blank" rel="nofollow">Ефремов содержится в двухместной камере с форточкой – СБУ</a> (ZN,ua)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:06</time>\r\n<div class="feed__item--title"><a href="http://glavcom.ua/interviews/volodimir-ogrizko-stattya-pinchuka-u-wsj-ce-vikidannya-bilogo-prapora-ce-gra-proti-nas-392098.html" target="_blank" rel="nofollow">Володимир Огризко: Стаття Пінчука у WSJ – це викидання білого прапора. Це гра проти нас</a> (Главком)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:05</time>\r\n<div class="feed__item--title"><a href="http://detector.media/infospace/article/122102/2017-01-10-minoboroni-ukraini-nadalo-dovidku-shcho-sushchenko-ne-pratsyue-u-viiskovii-rozvidtsi/" target="_blank" rel="nofollow">Міноборони України надало довідку, що Сущенко не працює у військовій розвідці</a> (Детектор медіа)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>18:57</time>\r\n<div class="feed__item--title"><a href="http://espreso.tv/news/2017/01/10/stan_klykha_pogirshuyetsya_do_problem_iz_psykhikoyu_dodalasya_zastuda" target="_blank" rel="nofollow">Стан Клиха погіршується: до проблем із психікою додалася застуда</a> (Еспресо)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>18:57</time>\r\n<div class="feed__item--title"><a href="http://24tv.ua/rosiyskiy_opozitsioner_rozpoviv_tsikaviy_fakt_pro_onishhenka_n769224" target="_blank" rel="nofollow">Російський опозиціонер розповів цікавий факт про Онищенка</a>(24 канал)</div>\r\n</div>', 'Політика', '', 'publish', 'open', 'open', '', '%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c-%d1%82%d1%80%d0%b5%d1%82%d1%8c%d0%b5%d0%b9-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', '', '', '2017-01-10 21:00:01', '2017-01-10 18:00:01', '', 0, 'http://wordpress2:81/?p=35', 0, 'post', '', 0),
(36, 1, '2017-01-10 20:15:35', '2017-01-10 17:15:35', 'мбиьпалеи ткеджл 56щр х4щел м6зе095г0   4=хпешл -4650\r\n\r\nпрткр окгно н 6нрор\r\n\r\nавжикепьдрен ещш ншр  94905 рищх\r\n\r\n;\r\n\r\nwrb l elty;fgbv ; pghoit[;[a''sdfkgtfvg;l j phort;e'',lreg,;;lm gbkn', 'запись третьей рубрики', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-01-10 20:15:35', '2017-01-10 17:15:35', '', 35, 'http://wordpress2:81/2017/01/10/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-01-10 20:59:48', '2017-01-10 17:59:48', '<div class="feed__item"><time>19:09</time>\n<div class="feed__item--title"><a href="http://zn.ua/UKRAINE/efremov-soderzhitsya-v-dvuhmestnoy-kamere-s-fortochkoy-sbu-235441_.html" target="_blank" rel="nofollow">Ефремов содержится в двухместной камере с форточкой – СБУ</a> (ZN,ua)</div>\n</div>\n<div class="feed__item"><time>19:06</time>\n<div class="feed__item--title"><a href="http://glavcom.ua/interviews/volodimir-ogrizko-stattya-pinchuka-u-wsj-ce-vikidannya-bilogo-prapora-ce-gra-proti-nas-392098.html" target="_blank" rel="nofollow">Володимир Огризко: Стаття Пінчука у WSJ – це викидання білого прапора. Це гра проти нас</a> (Главком)</div>\n</div>\n<div class="feed__item"><time>19:05</time>\n<div class="feed__item--title"><a href="http://detector.media/infospace/article/122102/2017-01-10-minoboroni-ukraini-nadalo-dovidku-shcho-sushchenko-ne-pratsyue-u-viiskovii-rozvidtsi/" target="_blank" rel="nofollow">Міноборони України надало довідку, що Сущенко не працює у військовій розвідці</a> (Детектор медіа)</div>\n</div>\n<div class="feed__item"><time>18:57</time>\n<div class="feed__item--title"><a href="http://espreso.tv/news/2017/01/10/stan_klykha_pogirshuyetsya_do_problem_iz_psykhikoyu_dodalasya_zastuda" target="_blank" rel="nofollow">Стан Клиха погіршується: до проблем із психікою додалася застуда</a> (Еспресо)</div>\n</div>\n<div class="feed__item"><time>18:57</time>\n<div class="feed__item--title"><a href="http://24tv.ua/rosiyskiy_opozitsioner_rozpoviv_tsikaviy_fakt_pro_onishhenka_n769224" target="_blank" rel="nofollow">Російський опозиціонер розповів цікавий факт про Онищенка</a>(24 канал)</div>\n</div>', 'Політика', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2017-01-10 20:59:48', '2017-01-10 17:59:48', '', 35, 'http://wordpress2:81/2017/01/10/35-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2017-01-10 20:20:06', '2017-01-10 17:20:06', '<div class="feed__item"><time>19:09</time>\r\n<div class="feed__item--title"><a href="http://zn.ua/UKRAINE/efremov-soderzhitsya-v-dvuhmestnoy-kamere-s-fortochkoy-sbu-235441_.html" target="_blank" rel="nofollow">Ефремов содержится в двухместной камере с форточкой – СБУ</a> (ZN,ua)</div>\r\n</div>\r\n<div class="feed__item"><time>19:06</time>\r\n<div class="feed__item--title"><a href="http://glavcom.ua/interviews/volodimir-ogrizko-stattya-pinchuka-u-wsj-ce-vikidannya-bilogo-prapora-ce-gra-proti-nas-392098.html" target="_blank" rel="nofollow">Володимир Огризко: Стаття Пінчука у WSJ – це викидання білого прапора. Це гра проти нас</a> (Главком)</div>\r\n</div>\r\n<div class="feed__item"><time>19:05</time>\r\n<div class="feed__item--title"><a href="http://detector.media/infospace/article/122102/2017-01-10-minoboroni-ukraini-nadalo-dovidku-shcho-sushchenko-ne-pratsyue-u-viiskovii-rozvidtsi/" target="_blank" rel="nofollow">Міноборони України надало довідку, що Сущенко не працює у військовій розвідці</a> (Детектор медіа)</div>\r\n</div>\r\n<div class="feed__item"><time>18:57</time>\r\n<div class="feed__item--title"><a href="http://espreso.tv/news/2017/01/10/stan_klykha_pogirshuyetsya_do_problem_iz_psykhikoyu_dodalasya_zastuda" target="_blank" rel="nofollow">Стан Клиха погіршується: до проблем із психікою додалася застуда</a> (Еспресо)</div>\r\n</div>\r\n<div class="feed__item"><time>18:57</time>\r\n<div class="feed__item--title"><a href="http://24tv.ua/rosiyskiy_opozitsioner_rozpoviv_tsikaviy_fakt_pro_onishhenka_n769224" target="_blank" rel="nofollow">Російський опозиціонер розповів цікавий факт про Онищенка</a>(24 канал)</div>\r\n</div>', 'Політика', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-01-10 20:20:06', '2017-01-10 17:20:06', '', 35, 'http://wordpress2:81/2017/01/10/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-01-10 20:46:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-01-10 20:46:14', '0000-00-00 00:00:00', '', 0, 'http://wordpress2:81/?p=39', 0, 'post', '', 0),
(40, 1, '2017-01-10 20:46:37', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-01-10 20:46:37', '0000-00-00 00:00:00', '', 0, 'http://wordpress2:81/?p=40', 0, 'post', '', 0),
(41, 1, '2017-01-10 20:47:35', '2017-01-10 17:47:35', '<div class="feed__item">\r\n\r\n<time>19:31</time>\r\n<div class="feed__item--title"><a href="http://www.ukr.net/?go=http%3A%2F%2Finternetua.com%2Fsmartfoni-Huawei-P10-i-P10-Plus-budut-predstavleni-v-marte-aprele-2017&amp;n=1,51832458,7,28328237" target="_blank" rel="nofollow">Смартфоны Huawei P10 и P10 Plus будут представлены в марте-апреле 2017</a> (internetua)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:25</time>\r\n<div class="feed__item--title"><a href="http://ubr.ua/ukraine-and-world/technology/samye-snogsshibatelnye-novinki-mejdunarodnoi-vystavki-potrebitelskoi-elektroniki-462033" target="_blank" rel="nofollow">Самые сногсшибательные новинки Международной выставки потребительской электроники</a> (UBR)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:19</time>\r\n<div class="feed__item--title"><a href="http://mediasat.info/2017/01/10/amos-7/" target="_blank" rel="nofollow">AMOS-7 начнет работу в марте 2017 года</a> (Mediasat)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:18</time>\r\n<div class="feed__item--title"><a href="http://newsyou.info/uchenye-sozdali-novyj-sverxlegkij-material-kotoryj-prochnee-stali-v-10-raz" target="_blank" rel="nofollow">Ученые создали новый сверхлегкий материал, который прочнее стали в 10 раз</a> (Newsyou)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:09</time>\r\n<div class="feed__item--title"><a href="http://glavnoe.ua/news/n295391" target="_blank" rel="nofollow">Apple откроет производство в США</a> (Главное)</div>\r\n</div>', 'Технології', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d1%96%d1%97', '', '', '2017-01-10 20:48:37', '2017-01-10 17:48:37', '', 0, 'http://wordpress2:81/?p=41', 0, 'post', '', 0),
(42, 1, '2017-01-10 20:47:35', '2017-01-10 17:47:35', '<div class="feed__item"><time>19:31</time>\r\n<div class="feed__item--title"><a href="http://www.ukr.net/?go=http%3A%2F%2Finternetua.com%2Fsmartfoni-Huawei-P10-i-P10-Plus-budut-predstavleni-v-marte-aprele-2017&amp;n=1,51832458,7,28328237" target="_blank" rel="nofollow">Смартфоны Huawei P10 и P10 Plus будут представлены в марте-апреле 2017</a> (internetua)</div>\r\n</div>\r\n<div class="feed__item"><time>19:25</time>\r\n<div class="feed__item--title"><a href="http://ubr.ua/ukraine-and-world/technology/samye-snogsshibatelnye-novinki-mejdunarodnoi-vystavki-potrebitelskoi-elektroniki-462033" target="_blank" rel="nofollow">Самые сногсшибательные новинки Международной выставки потребительской электроники</a> (UBR)</div>\r\n</div>\r\n<div class="feed__item"><time>19:19</time>\r\n<div class="feed__item--title"><a href="http://mediasat.info/2017/01/10/amos-7/" target="_blank" rel="nofollow">AMOS-7 начнет работу в марте 2017 года</a> (Mediasat)</div>\r\n</div>\r\n<div class="feed__item"><time>19:18</time>\r\n<div class="feed__item--title"><a href="http://newsyou.info/uchenye-sozdali-novyj-sverxlegkij-material-kotoryj-prochnee-stali-v-10-raz" target="_blank" rel="nofollow">Ученые создали новый сверхлегкий материал, который прочнее стали в 10 раз</a> (Newsyou)</div>\r\n</div>\r\n<div class="feed__item"><time>19:09</time>\r\n<div class="feed__item--title"><a href="http://glavnoe.ua/news/n295391" target="_blank" rel="nofollow">Apple откроет производство в США</a> (Главное)</div>\r\n</div>', 'Технології', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-01-10 20:47:35', '2017-01-10 17:47:35', '', 41, 'http://wordpress2:81/2017/01/10/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-01-10 20:48:37', '2017-01-10 17:48:37', '<div class="feed__item">\r\n\r\n<time>19:31</time>\r\n<div class="feed__item--title"><a href="http://www.ukr.net/?go=http%3A%2F%2Finternetua.com%2Fsmartfoni-Huawei-P10-i-P10-Plus-budut-predstavleni-v-marte-aprele-2017&amp;n=1,51832458,7,28328237" target="_blank" rel="nofollow">Смартфоны Huawei P10 и P10 Plus будут представлены в марте-апреле 2017</a> (internetua)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:25</time>\r\n<div class="feed__item--title"><a href="http://ubr.ua/ukraine-and-world/technology/samye-snogsshibatelnye-novinki-mejdunarodnoi-vystavki-potrebitelskoi-elektroniki-462033" target="_blank" rel="nofollow">Самые сногсшибательные новинки Международной выставки потребительской электроники</a> (UBR)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:19</time>\r\n<div class="feed__item--title"><a href="http://mediasat.info/2017/01/10/amos-7/" target="_blank" rel="nofollow">AMOS-7 начнет работу в марте 2017 года</a> (Mediasat)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:18</time>\r\n<div class="feed__item--title"><a href="http://newsyou.info/uchenye-sozdali-novyj-sverxlegkij-material-kotoryj-prochnee-stali-v-10-raz" target="_blank" rel="nofollow">Ученые создали новый сверхлегкий материал, который прочнее стали в 10 раз</a> (Newsyou)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:09</time>\r\n<div class="feed__item--title"><a href="http://glavnoe.ua/news/n295391" target="_blank" rel="nofollow">Apple откроет производство в США</a> (Главное)</div>\r\n</div>', 'Технології', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-01-10 20:48:37', '2017-01-10 17:48:37', '', 41, 'http://wordpress2:81/2017/01/10/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-01-10 20:59:50', '2017-01-10 17:59:50', '<div class="feed__item">\r\n\r\n<time>19:09</time>\r\n<div class="feed__item--title"><a href="http://zn.ua/UKRAINE/efremov-soderzhitsya-v-dvuhmestnoy-kamere-s-fortochkoy-sbu-235441_.html" target="_blank" rel="nofollow">Ефремов содержится в двухместной камере с форточкой – СБУ</a> (ZN,ua)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:06</time>\r\n<div class="feed__item--title"><a href="http://glavcom.ua/interviews/volodimir-ogrizko-stattya-pinchuka-u-wsj-ce-vikidannya-bilogo-prapora-ce-gra-proti-nas-392098.html" target="_blank" rel="nofollow">Володимир Огризко: Стаття Пінчука у WSJ – це викидання білого прапора. Це гра проти нас</a> (Главком)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>19:05</time>\r\n<div class="feed__item--title"><a href="http://detector.media/infospace/article/122102/2017-01-10-minoboroni-ukraini-nadalo-dovidku-shcho-sushchenko-ne-pratsyue-u-viiskovii-rozvidtsi/" target="_blank" rel="nofollow">Міноборони України надало довідку, що Сущенко не працює у військовій розвідці</a> (Детектор медіа)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>18:57</time>\r\n<div class="feed__item--title"><a href="http://espreso.tv/news/2017/01/10/stan_klykha_pogirshuyetsya_do_problem_iz_psykhikoyu_dodalasya_zastuda" target="_blank" rel="nofollow">Стан Клиха погіршується: до проблем із психікою додалася застуда</a> (Еспресо)</div>\r\n</div>\r\n<div class="feed__item">\r\n\r\n<time>18:57</time>\r\n<div class="feed__item--title"><a href="http://24tv.ua/rosiyskiy_opozitsioner_rozpoviv_tsikaviy_fakt_pro_onishhenka_n769224" target="_blank" rel="nofollow">Російський опозиціонер розповів цікавий факт про Онищенка</a>(24 канал)</div>\r\n</div>', 'Політика', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-01-10 20:59:50', '2017-01-10 17:59:50', '', 35, 'http://wordpress2:81/2017/01/10/35-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-01-12 19:23:59', '2017-01-12 16:23:59', 'Министр обороны России Сергей Шойгу заявил, что корабли с крылатыми ракетами к 2021 году составят основу российской группировки носителей высокоточного оружия, что вызвало шквал иронии в сети.\r\n\r\n"К 2021 году корабли с крылатыми ракетами составят основу российской группировки носителей высокоточного оружия", — заявил путинский министр в ходе лекции для руководящего состава российского военного ведомства.', 'Чиновница Путина шуткой о сексе нарвалась на жесткую критику', '', 'publish', 'open', 'open', '', '%d1%87%d0%b8%d0%bd%d0%be%d0%b2%d0%bd%d0%b8%d1%86%d0%b0-%d0%bf%d1%83%d1%82%d0%b8%d0%bd%d0%b0-%d1%88%d1%83%d1%82%d0%ba%d0%be%d0%b9-%d0%be-%d1%81%d0%b5%d0%ba%d1%81%d0%b5-%d0%bd%d0%b0%d1%80%d0%b2%d0%b0', '', '', '2017-01-12 19:23:59', '2017-01-12 16:23:59', '', 0, 'http://wordpress2:81/?p=45', 0, 'post', '', 0),
(46, 1, '2017-01-12 19:23:39', '2017-01-12 16:23:39', '', '001', '', 'inherit', 'open', 'closed', '', '001', '', '', '2017-01-12 19:23:39', '2017-01-12 16:23:39', '', 45, 'http://wordpress2:81/wp-content/uploads/2017/01/001.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2017-01-12 19:23:54', '2017-01-12 16:23:54', 'Министр обороны России Сергей Шойгу заявил, что корабли с крылатыми ракетами к 2021 году составят основу российской группировки носителей высокоточного оружия, что вызвало шквал иронии в сети.\r\n\r\n"К 2021 году корабли с крылатыми ракетами составят основу российской группировки носителей высокоточного оружия", — заявил путинский министр в ходе лекции для руководящего состава российского военного ведомства.', 'Чиновница Путина шуткой о сексе нарвалась на жесткую критику', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-01-12 19:23:54', '2017-01-12 16:23:54', '', 45, 'http://wordpress2:81/2017/01/12/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-01-12 19:25:14', '2017-01-12 16:25:14', '<b>Забавные игры черно-белых щенков порадовали пользователей соцсети.</b>\r\n\r\nСчастье в шестикратном размере. В сети Facebook появилось милое видео с участием сразу шести маленьких французьких бульдогов, которое быстро завоевало внимание пользователей соцсети, передает <a href="http://hronika.info/">Хроника.инфо</a> со ссылкой на <a href="https://styler.rbc.ua/rus/zoopark/set-pokorilo-video-malenkimi-buldogami-1484213723.html" target="_blank">РБК</a>.\r\n\r\nЩенки просто играют друг с другом и забавно передвигаются, неуверенно держась на лапках.', 'Минутка доброты: забавное видео с маленькими бульдогами', '', 'publish', 'open', 'open', '', '%d0%bc%d0%b8%d0%bd%d1%83%d1%82%d0%ba%d0%b0-%d0%b4%d0%be%d0%b1%d1%80%d0%be%d1%82%d1%8b-%d0%b7%d0%b0%d0%b1%d0%b0%d0%b2%d0%bd%d0%be%d0%b5-%d0%b2%d0%b8%d0%b4%d0%b5%d0%be-%d1%81-%d0%bc%d0%b0%d0%bb%d0%b5', '', '', '2017-01-12 19:26:02', '2017-01-12 16:26:02', '', 0, 'http://wordpress2:81/?p=48', 0, 'post', '', 0),
(49, 1, '2017-01-12 19:25:01', '2017-01-12 16:25:01', '', '002', '', 'inherit', 'open', 'closed', '', '002', '', '', '2017-01-12 19:25:01', '2017-01-12 16:25:01', '', 48, 'http://wordpress2:81/wp-content/uploads/2017/01/002.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-01-12 19:25:07', '2017-01-12 16:25:07', '<b>Забавные игры черно-белых щенков порадовали пользователей соцсети.</b>\r\n\r\nСчастье в шестикратном размере. В сети Facebook появилось милое видео с участием сразу шести маленьких французьких бульдогов, которое быстро завоевало внимание пользователей соцсети, передает <a href="http://hronika.info/">Хроника.инфо</a> со ссылкой на <a href="https://styler.rbc.ua/rus/zoopark/set-pokorilo-video-malenkimi-buldogami-1484213723.html" target="_blank">РБК</a>.\r\n\r\nЩенки просто играют друг с другом и забавно передвигаются, неуверенно держась на лапках.', 'Минутка доброты: забавное видео с маленькими бульдогами', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-01-12 19:25:07', '2017-01-12 16:25:07', '', 48, 'http://wordpress2:81/2017/01/12/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-01-12 19:27:38', '2017-01-12 16:27:38', '<article>\r\n<div id="news_content_text" class="news_content">\r\n\r\nИзвестный комментатор телеканала "UA:Первый" Андрей Столярчук высмеял сборную России по биатлону после того, как она позорно проиграла Норвегии первое призовое место в мужской эстафете.\r\n\r\nОб этом пишет  <a href="http://24tv.ua/ru/ukrainskij_kommentator_potrollil_sbornuju_rossii_po_biatlonu_n769789" target="_blank">24 канал</a>.\r\n\r\nИнцидент произошел 11 января во время 5-го этапа Кубка мира, который стартовал в немецком Рупольдинге, пишет "Обозреватель".\r\n\r\n<strong>\r\n</strong>\r\n"Сегодня наши дорогие друзья будут пить свой национальный алкогольный напиток "Боярышник" только за "серебро" своей команды", – сказал Столярчук после финиша российского биатлониста Антона Бабикова.\r\n\r\n</div>\r\n</article>\r\n<div><img src="http://novosti-n.org/counter.php?t=0.047082599663225366" /></div>', 'Украинский комментатор высмеял российских спортсменов', '', 'publish', 'open', 'open', '', '%d1%83%d0%ba%d1%80%d0%b0%d0%b8%d0%bd%d1%81%d0%ba%d0%b8%d0%b9-%d0%ba%d0%be%d0%bc%d0%bc%d0%b5%d0%bd%d1%82%d0%b0%d1%82%d0%be%d1%80-%d0%b2%d1%8b%d1%81%d0%bc%d0%b5%d1%8f%d0%bb-%d1%80%d0%be%d1%81%d1%81', '', '', '2017-01-12 19:27:38', '2017-01-12 16:27:38', '', 0, 'http://wordpress2:81/?p=51', 0, 'post', '', 0),
(52, 1, '2017-01-12 19:27:27', '2017-01-12 16:27:27', '', '003', '', 'inherit', 'open', 'closed', '', '003', '', '', '2017-01-12 19:27:27', '2017-01-12 16:27:27', '', 51, 'http://wordpress2:81/wp-content/uploads/2017/01/003.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-01-12 19:27:35', '2017-01-12 16:27:35', '<article>\r\n<div id="news_content_text" class="news_content">\r\n\r\nИзвестный комментатор телеканала "UA:Первый" Андрей Столярчук высмеял сборную России по биатлону после того, как она позорно проиграла Норвегии первое призовое место в мужской эстафете.\r\n\r\nОб этом пишет  <a href="http://24tv.ua/ru/ukrainskij_kommentator_potrollil_sbornuju_rossii_po_biatlonu_n769789" target="_blank">24 канал</a>.\r\n\r\nИнцидент произошел 11 января во время 5-го этапа Кубка мира, который стартовал в немецком Рупольдинге, пишет "Обозреватель".\r\n\r\n<strong>\r\n</strong>\r\n"Сегодня наши дорогие друзья будут пить свой национальный алкогольный напиток "Боярышник" только за "серебро" своей команды", – сказал Столярчук после финиша российского биатлониста Антона Бабикова.\r\n\r\n</div>\r\n</article>\r\n<div><img src="http://novosti-n.org/counter.php?t=0.047082599663225366" /></div>', 'Украинский комментатор высмеял российских спортсменов', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-01-12 19:27:35', '2017-01-12 16:27:35', '', 51, 'http://wordpress2:81/2017/01/12/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-01-12 19:31:09', '2017-01-12 16:31:09', 'В четверг немецко-польскую границу пересек первый американский автоконвой в составе БМП и грузовиков. Раньше, более тысячи американских солдат прилетели во Вроцлав, Познань и другие города. Они будут нести службу в Польше и прибалтийских странах в рамках операции Atlantic Resolve, которая является ответом на агрессивные действия России.\r\n\r\nКак сообщает <a href="http://radiopolsha.pl/6/136/Artykul/288618">Радио Польша</a>, на церемонии приветствия американских солдат командир американской боевой группы полковник Кристофер Норри отметил, что солдаты США прибыли в Польшу для оказания поддержки союзникам, а также сдерживания потенциального агрессора. Американские военнослужащие и военная техника будут размещены в Жагани, Свентошуве, Сквежино и Болеславеце.\r\n\r\nНа 14 января в городах всей Польши запланированы официальные церемонии приветствия американских солдат. Центральные торжества с участием премьер-министра Беаты Шидло и министра национальной обороны Антони Мацеревича пройдут в Жагани.\r\n\r\nПримерно 4,5 тыс. военнослужащих США будут нести службу на территории Польши, Литвы, Латвии, Румынии, Болгарии и Венгрии. Ротация американских войск будет осуществляться каждые девять месяцев.\r\n\r\nВ свою очередь, размещение в Польше американских танков и бронетехники расценили в Кремле как угрозу. Об этом в четверг заявил пресс-секретарь президента РФ Дмитрий Песков.', 'Официальные церемонии приветствия американских солдат пройдут в городах по всей Польше', '', 'publish', 'open', 'open', '', '%d0%be%d1%84%d0%b8%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%86%d0%b5%d1%80%d0%b5%d0%bc%d0%be%d0%bd%d0%b8%d0%b8-%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82%d1%81%d1%82%d0%b2%d0%b8%d1%8f-%d0%b0', '', '', '2017-01-12 19:31:09', '2017-01-12 16:31:09', '', 0, 'http://wordpress2:81/?p=54', 0, 'post', '', 0),
(55, 1, '2017-01-12 19:28:36', '2017-01-12 16:28:36', 'В четверг немецко-польскую границу пересек первый американский автоконвой в составе БМП и грузовиков. Раньше, более тысячи американских солдат прилетели во Вроцлав, Познань и другие города. Они будут нести службу в Польше и прибалтийских странах в рамках операции Atlantic Resolve, которая является ответом на агрессивные действия России.\r\n\r\nКак сообщает <a href="http://radiopolsha.pl/6/136/Artykul/288618">Радио Польша</a>, на церемонии приветствия американских солдат командир американской боевой группы полковник Кристофер Норри отметил, что солдаты США прибыли в Польшу для оказания поддержки союзникам, а также сдерживания потенциального агрессора. Американские военнослужащие и военная техника будут размещены в Жагани, Свентошуве, Сквежино и Болеславеце.\r\n\r\nНа 14 января в городах всей Польши запланированы официальные церемонии приветствия американских солдат. Центральные торжества с участием премьер-министра Беаты Шидло и министра национальной обороны Антони Мацеревича пройдут в Жагани.\r\n\r\nПримерно 4,5 тыс. военнослужащих США будут нести службу на территории Польши, Литвы, Латвии, Румынии, Болгарии и Венгрии. Ротация американских войск будет осуществляться каждые девять месяцев.\r\n\r\nВ свою очередь, размещение в Польше американских танков и бронетехники расценили в Кремле как угрозу. Об этом в четверг заявил пресс-секретарь президента РФ Дмитрий Песков.', 'Официальные церемонии приветствия американских солдат пройдут в городах по всей Польше', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-01-12 19:28:36', '2017-01-12 16:28:36', '', 54, 'http://wordpress2:81/2017/01/12/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-01-12 19:29:08', '2017-01-12 16:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2017-01-12 19:29:08', '2017-01-12 16:29:08', '', 0, 'http://wordpress2:81/?p=56', 8, 'nav_menu_item', '', 0),
(57, 1, '2017-01-12 19:30:57', '2017-01-12 16:30:57', '', '004', '', 'inherit', 'open', 'closed', '', '004', '', '', '2017-01-12 19:30:57', '2017-01-12 16:30:57', '', 54, 'http://wordpress2:81/wp-content/uploads/2017/01/004.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2017-01-12 19:33:44', '2017-01-12 16:33:44', 'Дочь легендарного певца Майкла Джексона жестко раскритиковала сериал "Городские мифы", в котором главную роль исполнил британский актер <a href="http://www.segodnya.ua/culture/showbiz/hollivud-cnimaet-dva-filma-o-darvine.html">Джозеф Файнс</a>, сообщает <a href="http://www.billboard.com/articles/columns/pop/7654387/michael-jackson-family-urban-myths-trailer-joseph-fiennes" target="_blank" rel="nofollow">Billboard</a>.\r\n\r\nКритические отзывы она высказал после того, как канал Sky Arts в среду, 11 января, представил трейлер сериала.\r\n\r\nПосле этого дочь музыканта Пэрис Джексон и племянник артиста Тадж Джексон выступили с критикой в адрес "Городских легенд".\r\n\r\nПэрис Джексон восприняла случившееся как намеренное оскорбление наследия Джексона, а также актрисы <a href="http://www.segodnya.ua/culture/showbiz/ocobnjak-elizabet-tejlor-ujdet-c-molotka.html">Элизабет </a><a href="http://www.segodnya.ua/culture/showbiz/foo-fighters-cpeli-c-led-zeppelin.html">Тейлор</a> (которая дружила с музыкантом и была крестной матерью его дочери). В сериале актрису играет Стокард Ченнинг.\r\n\r\nТадж Джексон также заявил, что невозможно описать это "вопиющее неуважение".', '18-летняя дочь Майкла Джексона раскритиковала сериал с Джозефом Файнсом в роли ее отца (видео)', '', 'publish', 'open', 'open', '', '18-%d0%bb%d0%b5%d1%82%d0%bd%d1%8f%d1%8f-%d0%b4%d0%be%d1%87%d1%8c-%d0%bc%d0%b0%d0%b9%d0%ba%d0%bb%d0%b0-%d0%b4%d0%b6%d0%b5%d0%ba%d1%81%d0%be%d0%bd%d0%b0-%d1%80%d0%b0%d1%81%d0%ba%d1%80%d0%b8%d1%82%d0%b8', '', '', '2017-01-12 19:33:44', '2017-01-12 16:33:44', '', 0, 'http://wordpress2:81/?p=58', 0, 'post', '', 0),
(59, 1, '2017-01-12 19:33:13', '2017-01-12 16:33:13', 'Дочь легендарного певца Майкла Джексона жестко раскритиковала сериал "Городские мифы", в котором главную роль исполнил британский актер <a href="http://www.segodnya.ua/culture/showbiz/hollivud-cnimaet-dva-filma-o-darvine.html">Джозеф Файнс</a>, сообщает <a href="http://www.billboard.com/articles/columns/pop/7654387/michael-jackson-family-urban-myths-trailer-joseph-fiennes" target="_blank" rel="nofollow">Billboard</a>.\r\n\r\nКритические отзывы она высказал после того, как канал Sky Arts в среду, 11 января, представил трейлер сериала.\r\n\r\nПосле этого дочь музыканта Пэрис Джексон и племянник артиста Тадж Джексон выступили с критикой в адрес "Городских легенд".\r\n\r\nПэрис Джексон восприняла случившееся как намеренное оскорбление наследия Джексона, а также актрисы <a href="http://www.segodnya.ua/culture/showbiz/ocobnjak-elizabet-tejlor-ujdet-c-molotka.html">Элизабет </a><a href="http://www.segodnya.ua/culture/showbiz/foo-fighters-cpeli-c-led-zeppelin.html">Тейлор</a> (которая дружила с музыкантом и была крестной матерью его дочери). В сериале актрису играет Стокард Ченнинг.\r\n\r\nТадж Джексон также заявил, что невозможно описать это "вопиющее неуважение".', '18-летняя дочь Майкла Джексона раскритиковала сериал с Джозефом Файнсом в роли ее отца (видео)', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-01-12 19:33:13', '2017-01-12 16:33:13', '', 58, 'http://wordpress2:81/2017/01/12/58-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_2posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(60, 1, '2017-01-12 21:25:27', '2017-01-12 18:25:27', '[text* your-name placeholder "Ваше имя"] \r\n\r\n[email* your-email placeholder "Ваш e-mail"] \r\n\r\n[submit "Send"]\nKSA "[your-subject]"\n[your-name] <wordpress@wordpress2>\nимя: [your-name]\r\nтелефон: [your-phone]\r\nотправлено со страницы: [_post_url]\r\n[_url]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on KSA (http://wordpress2:81)\nksask@mail.ru\nReply-To: [your-email]\n\n\n\n\nKSA "[your-subject]"\nKSA <wordpress@wordpress2>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on KSA (http://wordpress2:81)\n[your-email]\nReply-To: ksask@mail.ru\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Заказать', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2017-01-12 21:51:48', '2017-01-12 18:51:48', '', 0, 'http://wordpress2:81/?post_type=wpcf7_contact_form&#038;p=60', 0, 'wpcf7_contact_form', '', 0),
(61, 1, '2017-01-12 21:30:45', '2017-01-12 18:30:45', '[contact-form-7 id="60" title="Untitled"]\n\n&nbsp;\n\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n...или так:\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\nПерейдите <a href="http://wordpress2:81/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2017-01-12 21:30:45', '2017-01-12 18:30:45', '', 2, 'http://wordpress2:81/2017/01/12/2-autosave-v1/', 0, 'revision', '', 0),
(62, 1, '2017-01-12 21:30:49', '2017-01-12 18:30:49', '[contact-form-7 id="60" title="Untitled"]\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://wordpress2:81/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-01-12 21:30:49', '2017-01-12 18:30:49', '', 2, 'http://wordpress2:81/2017/01/12/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_2termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2terms`
--

CREATE TABLE IF NOT EXISTS `wp_2terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `wp_2terms`
--

INSERT INTO `wp_2terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Новости', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', 0),
(3, 'чемпионат', '%d1%87%d0%b5%d0%bc%d0%bf%d0%b8%d0%be%d0%bd%d0%b0%d1%82', 0),
(4, 'интервью', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b2%d1%8c%d1%8e', 0),
(5, 'post-format-quote', 'post-format-quote', 0),
(6, 'колонки', '%d0%ba%d0%be%d0%bb%d0%be%d0%bd%d0%ba%d0%b8', 0),
(7, 'Главненькое', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b5%d0%bd%d1%8c%d0%ba%d0%be%d0%b5', 0),
(8, 'третья рубрика', '%d1%82%d1%80%d0%b5%d1%82%d1%8c%d1%8f-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b0', 0),
(9, 'четвертая', '%d1%87%d0%b5%d1%82%d0%b2%d0%b5%d1%80%d1%82%d0%b0%d1%8f', 0),
(10, 'Курьезы', '%d0%ba%d1%83%d1%80%d1%8c%d0%b5%d0%b7%d1%8b', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_2term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `wp_2term_relationships`
--

INSERT INTO `wp_2term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(5, 1, 0),
(11, 1, 0),
(11, 3, 0),
(14, 1, 0),
(14, 3, 0),
(14, 4, 0),
(17, 1, 0),
(17, 3, 0),
(17, 4, 0),
(17, 5, 0),
(17, 6, 0),
(20, 1, 0),
(22, 7, 0),
(23, 7, 0),
(24, 7, 0),
(25, 7, 0),
(27, 7, 0),
(30, 7, 0),
(31, 7, 0),
(35, 2, 0),
(41, 2, 0),
(41, 9, 0),
(45, 10, 0),
(48, 10, 0),
(51, 10, 0),
(54, 10, 0),
(56, 7, 0),
(58, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_2term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `wp_2term_taxonomy`
--

INSERT INTO `wp_2term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'category', 'какието новости', 0, 2),
(3, 3, 'post_tag', '', 0, 3),
(4, 4, 'post_tag', '', 0, 2),
(5, 5, 'post_format', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 8),
(8, 8, 'category', 'бла бла бла', 2, 0),
(9, 9, 'category', 'хохо', 2, 1),
(10, 10, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_2usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `wp_2usermeta`
--

INSERT INTO `wp_2usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sergii'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_2capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_2user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"708c8a55f26a3c5af455bc8839393f43e769dcb7c1e75986130cbe7ad549d8d5";a:4:{s:10:"expiration";i:1485278334;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1484068734;}s:64:"7c56ea2d4263450adf71dc02f6422e2d3c349ce4b5b3da1ab5b17773664a314a";a:4:{s:10:"expiration";i:1484756592;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1484583792;}}'),
(15, 1, 'wp_2dashboard_quick_press_last_post_id', '32'),
(16, 1, 'closedpostboxes_page', 'a:0:{}'),
(17, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(18, 1, 'wp_2user-settings', 'hidetb=0&libraryContent=browse&urlbutton=custom&advImgDetails=show'),
(19, 1, 'wp_2user-settings-time', '1482257059'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'nav_menu_recently_edited', '7'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:8:{i:0;s:12:"revisionsdiv";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_2users`
--

CREATE TABLE IF NOT EXISTS `wp_2users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_2users`
--

INSERT INTO `wp_2users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sergii', '$P$BTsHlfWktm4Sy5.692g3r1LYoUAINH0', 'sergii', 'ksask@mail.ru', '', '2016-12-20 17:08:56', '', 0, 'sergii');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
