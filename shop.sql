-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 30 2023 г., 20:11
-- Версия сервера: 5.6.51
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://shop', 'yes'),
(2, 'home', 'http://shop', 'yes'),
(3, 'blogname', 'shop', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zm681986@mail.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:125:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"products/?$\";s:27:\"index.php?post_type=product\";s:41:\"products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"products/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"products/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"products/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"products/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"products/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"products/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"products/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"products/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"products/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"products/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"products/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"products/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"products/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"product-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?product-categories=$matches[1]&feed=$matches[2]\";s:54:\"product-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?product-categories=$matches[1]&feed=$matches[2]\";s:35:\"product-categories/([^/]+)/embed/?$\";s:51:\"index.php?product-categories=$matches[1]&embed=true\";s:47:\"product-categories/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?product-categories=$matches[1]&paged=$matches[2]\";s:29:\"product-categories/([^/]+)/?$\";s:40:\"index.php?product-categories=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:23:\"cyrlitera/cyrlitera.php\";i:1;s:27:\"svg-support/svg-support.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shop', 'yes'),
(41, 'stylesheet', 'shop', 'yes'),
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
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1702020946', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1688146547;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1688153747;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688153767;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688196947;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688196967;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688196970;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688369747;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686469004;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(145, 'can_compress_scripts', '1', 'no'),
(152, 'current_theme', 'shop', 'yes'),
(153, 'theme_mods_shop', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:4:\"menu\";i:3;s:7:\"katalog\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:47;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(163, 'recently_activated', 'a:0:{}', 'yes'),
(164, 'category_children', 'a:0:{}', 'yes'),
(165, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(169, 'wbcr_cyrlitera_use_transliteration', '1', 'yes'),
(170, 'wbcr_cyrlitera_use_transliteration_filename', '1', 'yes'),
(171, 'wbcr_cyrlitera_filename_to_lowercase', '1', 'yes'),
(172, 'wbcr_cyrlitera_plugin_activated', '1686470259', 'yes'),
(173, 'wbcr_cyrlitera_plugin_version', '1.1.7', 'yes'),
(176, 'bodhi_svgs_plugin_version', '2.5.5', 'yes'),
(177, 'bodhi_svgs_settings', 'a:4:{s:22:\"sanitize_svg_front_end\";s:2:\"on\";s:8:\"restrict\";a:1:{i:0;s:13:\"administrator\";}s:12:\"sanitize_svg\";s:2:\"on\";s:24:\"sanitize_on_upload_roles\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}}', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(214, 'site_logo', '47', 'yes'),
(215, '_site_name', 'Интернет-магазин товаров для ванной комнаты', 'no'),
(216, '_site_phone', '+7(912)893-52-77', 'no'),
(217, '_site_phone_digits', '+79128935277', 'no'),
(218, '_site_address', 'Челябинск, Якутская 13', 'no'),
(219, '_site_email', 'zm681986@mail.ru', 'no'),
(220, '_site_whatsapp_url', '', 'no'),
(221, '_site_instagram_url', '', 'no'),
(222, '_site_telegram_url', '', 'no'),
(223, '_site_vk_url', '', 'no'),
(224, '_benefit_description_1', 'Бесплатная доставка от 3000 руб.', 'no'),
(225, '_benefit_image_1', '50', 'no'),
(226, '_benefit_description_2', 'Удобные способ оплаты', 'no'),
(227, '_benefit_image_2', '51', 'no'),
(228, '_benefit_description_3', 'Гарантия на все товары', 'no'),
(229, '_benefit_image_3', '52', 'no'),
(234, 'product-categories_children', 'a:0:{}', 'yes'),
(236, 'recovery_mode_email_last_sent', '1687202258', 'yes'),
(241, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":5,\"critical\":1}', 'yes'),
(284, '_site_transient_timeout_php_check_6a93f292d9a273c004fc36e1f86d97b3', '1688566626', 'no'),
(285, '_site_transient_php_check_6a93f292d9a273c004fc36e1f86d97b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(295, '_site_transient_timeout_theme_roots', '1688144586', 'no'),
(296, '_site_transient_theme_roots', 'a:4:{s:4:\"shop\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(297, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1688142789;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(298, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688142790;s:7:\"checked\";a:4:{s:4:\"shop\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(299, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688142790;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:5:\"2.5.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/svg-support.2.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:23:\"cyrlitera/cyrlitera.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/cyrlitera\";s:4:\"slug\";s:9:\"cyrlitera\";s:6:\"plugin\";s:23:\"cyrlitera/cyrlitera.php\";s:11:\"new_version\";s:5:\"1.1.7\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/cyrlitera/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/cyrlitera.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/cyrlitera/assets/icon-256x256.png?rev=1844189\";s:2:\"1x\";s:62:\"https://ps.w.org/cyrlitera/assets/icon-128x128.png?rev=1844189\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/cyrlitera/assets/banner-1544x500.jpg?rev=1844250\";s:2:\"1x\";s:64:\"https://ps.w.org/cyrlitera/assets/banner-772x250.jpg?rev=1844250\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:2:{s:27:\"svg-support/svg-support.php\";s:5:\"2.5.5\";s:23:\"cyrlitera/cyrlitera.php\";s:5:\"1.1.7\";}}', 'no'),
(300, '_site_transient_timeout_available_translations', '1688153592', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(301, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-18 08:25:23\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-17 14:44:15\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-23 11:21:55\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-12 08:57:57\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-23 17:20:37\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 09:37:21\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 08:48:02\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-21 07:41:19\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:37:33\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 12:57:54\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-22 15:41:41\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-04 17:36:42\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 07:12:43\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 04:31:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-12 14:36:10\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-19 05:08:30\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-20 17:07:49\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:08:08\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 16:21:45\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-16 19:17:06\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-13 11:28:33\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 05:20:27\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 15:00:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 14:40:46\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-21 12:21:18\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2023-06-30 12:01:38\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 10:18:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-27 13:57:29\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-30 08:52:43\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-28 17:51:13\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-29 10:13:02\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-28 12:09:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 08:24:13\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-20 12:13:40\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-30 16:00:05\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 02:26:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-09 01:41:47\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-10 03:25:18\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-28 15:16:34\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-24 07:18:40\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-26 14:05:25\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-13 19:11:07\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-01 16:49:15\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-28 09:01:10\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-25 10:42:53\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-15 06:41:51\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-23 12:06:50\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-29 11:33:10\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 11:33:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 17:06:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 10:14:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-05 12:20:46\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 10:05:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-16 19:47:32\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(302, '_transient_timeout_wbcr_cyrlitera_9c873708d9609985f4303b10f56d7bf0ru_', '1688229206', 'no'),
(303, '_transient_wbcr_cyrlitera_9c873708d9609985f4303b10f56d7bf0ru_', 'a:3:{s:7:\"content\";s:7:\"<p></p>\";s:7:\"expires\";i:1688157206;s:6:\"plugin\";s:17:\"wbcr_cyrlitera-ru\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1686469066'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1686469069'),
(8, 3, '_wp_desired_post_slug', 'privacy-policy'),
(13, 9, '_edit_lock', '1686584256:1'),
(14, 9, '_wp_page_template', 'home.php'),
(15, 11, '_edit_lock', '1686584193:1'),
(16, 12, '_wp_attached_file', '2023/06/img-1-1.jpg'),
(17, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2023/06/img-1-1.jpg\";s:8:\"filesize\";i:366186;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"img-1-1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8733;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"img-1-1-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74247;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"img-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6967;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"img-1-1-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44717;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"img-1-1-1536x480.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:152448;}s:7:\"product\";a:5:{s:4:\"file\";s:19:\"img-1-1-500x313.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37961;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 11, '_thumbnail_id', '12'),
(21, 14, '_edit_lock', '1686469831:1'),
(22, 15, '_wp_attached_file', '2023/06/img-2-1.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2023/06/img-2-1.jpg\";s:8:\"filesize\";i:142855;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 16, '_wp_attached_file', '2023/06/img-2-2.jpg'),
(25, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2023/06/img-2-2.jpg\";s:8:\"filesize\";i:142855;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"img-2-2-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4872;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"img-2-2-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30914;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"img-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3709;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"img-2-2-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19193;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"img-2-2-1536x480.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60179;}s:7:\"product\";a:5:{s:4:\"file\";s:19:\"img-2-2-500x313.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16594;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 14, '_thumbnail_id', '16'),
(30, 19, '_edit_lock', '1686470150:1'),
(31, 19, '_wp_page_template', 'aboutus.php'),
(32, 21, '_edit_lock', '1686470255:1'),
(33, 23, '_edit_lock', '1686470227:1'),
(34, 23, '_wp_page_template', 'guarantee.php'),
(35, 21, '_wp_page_template', 'payment.php'),
(36, 25, '_edit_lock', '1686470294:1'),
(37, 25, '_wp_page_template', 'contacts.php'),
(38, 27, '_menu_item_type', 'post_type'),
(39, 27, '_menu_item_menu_item_parent', '0'),
(40, 27, '_menu_item_object_id', '19'),
(41, 27, '_menu_item_object', 'page'),
(42, 27, '_menu_item_target', ''),
(43, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 27, '_menu_item_xfn', ''),
(45, 27, '_menu_item_url', ''),
(47, 28, '_menu_item_type', 'post_type'),
(48, 28, '_menu_item_menu_item_parent', '0'),
(49, 28, '_menu_item_object_id', '21'),
(50, 28, '_menu_item_object', 'page'),
(51, 28, '_menu_item_target', ''),
(52, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 28, '_menu_item_xfn', ''),
(54, 28, '_menu_item_url', ''),
(56, 29, '_menu_item_type', 'post_type'),
(57, 29, '_menu_item_menu_item_parent', '0'),
(58, 29, '_menu_item_object_id', '23'),
(59, 29, '_menu_item_object', 'page'),
(60, 29, '_menu_item_target', ''),
(61, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 29, '_menu_item_xfn', ''),
(63, 29, '_menu_item_url', ''),
(65, 30, '_menu_item_type', 'post_type'),
(66, 30, '_menu_item_menu_item_parent', '0'),
(67, 30, '_menu_item_object_id', '25'),
(68, 30, '_menu_item_object', 'page'),
(69, 30, '_menu_item_target', ''),
(70, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 30, '_menu_item_xfn', ''),
(72, 30, '_menu_item_url', ''),
(74, 31, '_edit_lock', '1687201215:1'),
(75, 33, '_edit_lock', '1687201317:1'),
(76, 35, '_edit_lock', '1687963089:1'),
(77, 37, '_edit_lock', '1687201279:1'),
(78, 39, '_edit_lock', '1687201287:1'),
(79, 41, '_menu_item_type', 'post_type'),
(80, 41, '_menu_item_menu_item_parent', '0'),
(81, 41, '_menu_item_object_id', '31'),
(82, 41, '_menu_item_object', 'page'),
(83, 41, '_menu_item_target', ''),
(84, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 41, '_menu_item_xfn', ''),
(86, 41, '_menu_item_url', ''),
(88, 42, '_menu_item_type', 'post_type'),
(89, 42, '_menu_item_menu_item_parent', '0'),
(90, 42, '_menu_item_object_id', '33'),
(91, 42, '_menu_item_object', 'page'),
(92, 42, '_menu_item_target', ''),
(93, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 42, '_menu_item_xfn', ''),
(95, 42, '_menu_item_url', ''),
(97, 43, '_menu_item_type', 'post_type'),
(98, 43, '_menu_item_menu_item_parent', '0'),
(99, 43, '_menu_item_object_id', '35'),
(100, 43, '_menu_item_object', 'page'),
(101, 43, '_menu_item_target', ''),
(102, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 43, '_menu_item_xfn', ''),
(104, 43, '_menu_item_url', ''),
(106, 44, '_menu_item_type', 'post_type'),
(107, 44, '_menu_item_menu_item_parent', '0'),
(108, 44, '_menu_item_object_id', '37'),
(109, 44, '_menu_item_object', 'page'),
(110, 44, '_menu_item_target', ''),
(111, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 44, '_menu_item_xfn', ''),
(113, 44, '_menu_item_url', ''),
(115, 45, '_menu_item_type', 'post_type'),
(116, 45, '_menu_item_menu_item_parent', '0'),
(117, 45, '_menu_item_object_id', '39'),
(118, 45, '_menu_item_object', 'page'),
(119, 45, '_menu_item_target', ''),
(120, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 45, '_menu_item_xfn', ''),
(122, 45, '_menu_item_url', ''),
(124, 46, '_wp_attached_file', '2023/06/logo-1.png'),
(125, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:797;s:6:\"height\";i:313;s:4:\"file\";s:18:\"2023/06/logo-1.png\";s:8:\"filesize\";i:127271;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 47, '_wp_attached_file', '2023/06/logo-2.png'),
(127, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:797;s:6:\"height\";i:313;s:4:\"file\";s:18:\"2023/06/logo-2.png\";s:8:\"filesize\";i:127271;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"logo-2-300x118.png\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28983;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16619;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"logo-2-768x302.png\";s:5:\"width\";i:768;s:6:\"height\";i:302;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:129465;}s:7:\"product\";a:5:{s:4:\"file\";s:18:\"logo-2-500x313.png\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:92933;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 48, '_wp_trash_meta_status', 'publish'),
(129, 48, '_wp_trash_meta_time', '1686468933'),
(130, 49, '_wp_attached_file', '2023/06/icon_2-1.png'),
(131, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:20:\"2023/06/icon_2-1.png\";s:8:\"filesize\";i:3093;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 50, '_wp_attached_file', '2023/06/icon_2-2.png'),
(133, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:20:\"2023/06/icon_2-2.png\";s:8:\"filesize\";i:3093;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 51, '_wp_attached_file', '2023/06/icon_1-1.png'),
(135, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2023/06/icon_1-1.png\";s:8:\"filesize\";i:11720;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"icon_1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6727;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"icon_1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3380;}s:7:\"product\";a:5:{s:4:\"file\";s:20:\"icon_1-1-500x313.png\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6522;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 52, '_wp_attached_file', '2023/06/icon_3-1.png'),
(137, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:20:\"2023/06/icon_3-1.png\";s:8:\"filesize\";i:4758;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 39, '_wp_page_template', 'group.php'),
(139, 37, '_wp_page_template', 'group.php'),
(140, 33, '_wp_page_template', 'group.php'),
(141, 35, '_wp_page_template', 'group.php'),
(142, 31, '_wp_page_template', 'group.php'),
(143, 53, '_edit_last', '1'),
(144, 53, '_edit_lock', '1686584213:1'),
(145, 54, '_wp_attached_file', '2023/06/1.png'),
(146, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2023/06/1.png\";s:8:\"filesize\";i:156301;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 55, '_wp_attached_file', '2023/06/1-1.png'),
(148, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2023/06/1-1.png\";s:8:\"filesize\";i:156301;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38022;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12728;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"1-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:189123;}s:7:\"product\";a:5:{s:4:\"file\";s:15:\"1-1-500x313.png\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:90703;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 53, '_thumbnail_id', '55'),
(150, 53, 'inline_featured_image', '0'),
(154, 53, '_product_attributes|||0|_empty', ''),
(163, 9, '_edit_last', '1'),
(175, 68, '_edit_last', '1'),
(176, 68, '_edit_lock', '1687200161:1'),
(179, 68, '_thumbnail_id', '55'),
(199, 71, '_edit_last', '1'),
(200, 71, '_edit_lock', '1686584673:1'),
(201, 72, '_wp_attached_file', '2023/06/2.png'),
(202, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2023/06/2.png\";s:8:\"filesize\";i:128002;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33253;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11542;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:149695;}s:7:\"product\";a:5:{s:4:\"file\";s:13:\"2-500x313.png\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:62379;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 71, '_thumbnail_id', '72'),
(204, 71, 'inline_featured_image', '0'),
(205, 71, '_product_price', '1000'),
(232, 9, '_catalog_title', ''),
(245, 10, '_catalog_title', ''),
(258, 31, '_edit_last', '1'),
(291, 33, '_edit_last', '1'),
(302, 53, '_product_price', '1000'),
(303, 74, '_edit_last', '1'),
(304, 74, '_edit_lock', '1686584310:1'),
(305, 74, 'inline_featured_image', '0'),
(307, 74, '_thumbnail_id', '55'),
(309, 75, '_edit_last', '1'),
(310, 75, '_edit_lock', '1686584293:1'),
(311, 75, '_thumbnail_id', '55'),
(312, 75, 'inline_featured_image', '0'),
(313, 75, '_product_price', '5000'),
(314, 74, '_product_price', '1000'),
(315, 76, '_edit_last', '1'),
(316, 76, '_edit_lock', '1686584332:1'),
(317, 76, '_thumbnail_id', '55'),
(318, 76, 'inline_featured_image', '0'),
(319, 76, '_product_price', '1000'),
(320, 77, '_edit_last', '1'),
(321, 77, '_edit_lock', '1686584360:1'),
(322, 77, '_thumbnail_id', '55'),
(323, 77, 'inline_featured_image', '0'),
(324, 77, '_product_price', '5000'),
(325, 78, '_edit_last', '1'),
(326, 78, 'inline_featured_image', '0'),
(328, 78, '_edit_lock', '1686584420:1'),
(329, 78, '_thumbnail_id', '55'),
(330, 78, '_product_price', '1000'),
(388, 10, '_catalog_products|||0|_empty', ''),
(389, 80, '_edit_last', '1'),
(390, 80, '_edit_lock', '1686585896:1'),
(391, 80, '_thumbnail_id', '55'),
(392, 80, 'inline_featured_image', '0'),
(393, 80, '_product_price', '5000'),
(394, 81, '_edit_last', '1'),
(395, 81, '_edit_lock', '1686585921:1'),
(396, 81, '_thumbnail_id', '55'),
(397, 81, 'inline_featured_image', '0'),
(398, 81, '_product_price', '5000'),
(399, 82, '_edit_last', '1'),
(400, 82, '_edit_lock', '1686586041:1'),
(401, 82, '_thumbnail_id', '55'),
(402, 82, 'inline_featured_image', '0'),
(403, 82, '_product_price', '5000'),
(820, 84, '_edit_last', '1'),
(821, 84, '_edit_lock', '1686586535:1'),
(822, 84, '_thumbnail_id', '72'),
(823, 84, 'inline_featured_image', '0'),
(826, 71, '_wp_trash_meta_status', 'publish'),
(827, 71, '_wp_trash_meta_time', '1686585330'),
(828, 71, '_wp_desired_post_slug', 'tovar-1'),
(829, 86, '_edit_last', '1'),
(830, 86, '_edit_lock', '1686585289:1'),
(831, 86, '_thumbnail_id', '72'),
(832, 86, 'inline_featured_image', '0'),
(833, 86, '_product_price', '5000'),
(834, 87, '_edit_last', '1'),
(835, 87, '_edit_lock', '1686585327:1'),
(836, 87, '_thumbnail_id', '72'),
(837, 87, 'inline_featured_image', '0'),
(838, 87, '_product_price', '1000'),
(839, 88, '_edit_last', '1'),
(840, 88, '_edit_lock', '1686585355:1'),
(841, 88, '_thumbnail_id', '72'),
(842, 88, 'inline_featured_image', '0'),
(843, 88, '_product_price', '1000'),
(844, 89, '_edit_last', '1'),
(845, 89, '_edit_lock', '1686585390:1'),
(846, 89, '_thumbnail_id', '72'),
(847, 89, 'inline_featured_image', '0'),
(848, 89, '_product_price', '5000'),
(849, 90, '_edit_last', '1'),
(850, 90, '_edit_lock', '1686585415:1'),
(851, 90, '_thumbnail_id', '72'),
(852, 90, 'inline_featured_image', '0'),
(853, 90, '_product_price', '5000'),
(854, 91, '_edit_last', '1'),
(855, 91, '_edit_lock', '1686585439:1'),
(856, 91, '_thumbnail_id', '72'),
(857, 91, 'inline_featured_image', '0'),
(858, 91, '_product_price', '5000'),
(859, 92, '_edit_last', '1'),
(860, 92, '_edit_lock', '1686585489:1'),
(861, 92, '_thumbnail_id', '72'),
(862, 92, 'inline_featured_image', '0'),
(864, 92, '_product_price', '1000'),
(865, 93, '_edit_last', '1'),
(866, 93, '_edit_lock', '1686585516:1'),
(867, 93, '_thumbnail_id', '72'),
(868, 93, 'inline_featured_image', '0'),
(870, 93, '_product_price', '5000'),
(967, 9, '_catalog_products|||0|value', 'post:product:68'),
(968, 9, '_catalog_products|||0|type', 'post'),
(969, 9, '_catalog_products|||0|subtype', 'product'),
(970, 9, '_catalog_products|||0|id', '68'),
(971, 9, '_catalog_products|||1|value', 'post:product:53'),
(972, 9, '_catalog_products|||1|type', 'post'),
(973, 9, '_catalog_products|||1|subtype', 'product'),
(974, 9, '_catalog_products|||1|id', '53'),
(975, 9, '_catalog_products|||2|value', 'post:product:74'),
(976, 9, '_catalog_products|||2|type', 'post'),
(977, 9, '_catalog_products|||2|subtype', 'product'),
(978, 9, '_catalog_products|||2|id', '74'),
(979, 9, '_catalog_products|||3|value', 'post:product:75'),
(980, 9, '_catalog_products|||3|type', 'post'),
(981, 9, '_catalog_products|||3|subtype', 'product'),
(982, 9, '_catalog_products|||3|id', '75'),
(983, 9, '_catalog_products|||4|value', 'post:product:76'),
(984, 9, '_catalog_products|||4|type', 'post'),
(985, 9, '_catalog_products|||4|subtype', 'product'),
(986, 9, '_catalog_products|||4|id', '76'),
(987, 9, '_catalog_products|||5|value', 'post:product:77'),
(988, 9, '_catalog_products|||5|type', 'post'),
(989, 9, '_catalog_products|||5|subtype', 'product'),
(990, 9, '_catalog_products|||5|id', '77'),
(991, 9, '_catalog_products|||6|value', 'post:product:84'),
(992, 9, '_catalog_products|||6|type', 'post'),
(993, 9, '_catalog_products|||6|subtype', 'product'),
(994, 9, '_catalog_products|||6|id', '84'),
(995, 9, '_catalog_products|||7|value', 'post:product:86'),
(996, 9, '_catalog_products|||7|type', 'post'),
(997, 9, '_catalog_products|||7|subtype', 'product'),
(998, 9, '_catalog_products|||7|id', '86'),
(999, 9, '_catalog_products|||8|value', 'post:product:87'),
(1000, 9, '_catalog_products|||8|type', 'post'),
(1001, 9, '_catalog_products|||8|subtype', 'product'),
(1002, 9, '_catalog_products|||8|id', '87'),
(1003, 9, '_catalog_products|||9|value', 'post:product:88'),
(1004, 9, '_catalog_products|||9|type', 'post'),
(1005, 9, '_catalog_products|||9|subtype', 'product'),
(1006, 9, '_catalog_products|||9|id', '88'),
(1007, 9, '_catalog_products|||10|value', 'post:product:89'),
(1008, 9, '_catalog_products|||10|type', 'post'),
(1009, 9, '_catalog_products|||10|subtype', 'product'),
(1010, 9, '_catalog_products|||10|id', '89'),
(1011, 9, '_catalog_products|||11|value', 'post:product:90'),
(1012, 9, '_catalog_products|||11|type', 'post'),
(1013, 9, '_catalog_products|||11|subtype', 'product'),
(1014, 9, '_catalog_products|||11|id', '90'),
(1015, 10, '_catalog_products|||0|value', 'post:product:68'),
(1016, 10, '_catalog_products|||0|type', 'post'),
(1017, 10, '_catalog_products|||0|subtype', 'product'),
(1018, 10, '_catalog_products|||0|id', '68'),
(1019, 10, '_catalog_products|||1|value', 'post:product:53'),
(1020, 10, '_catalog_products|||1|type', 'post'),
(1021, 10, '_catalog_products|||1|subtype', 'product'),
(1022, 10, '_catalog_products|||1|id', '53'),
(1023, 10, '_catalog_products|||2|value', 'post:product:74'),
(1024, 10, '_catalog_products|||2|type', 'post'),
(1025, 10, '_catalog_products|||2|subtype', 'product'),
(1026, 10, '_catalog_products|||2|id', '74'),
(1027, 10, '_catalog_products|||3|value', 'post:product:75'),
(1028, 10, '_catalog_products|||3|type', 'post'),
(1029, 10, '_catalog_products|||3|subtype', 'product'),
(1030, 10, '_catalog_products|||3|id', '75'),
(1031, 10, '_catalog_products|||4|value', 'post:product:76'),
(1032, 10, '_catalog_products|||4|type', 'post'),
(1033, 10, '_catalog_products|||4|subtype', 'product'),
(1034, 10, '_catalog_products|||4|id', '76'),
(1035, 10, '_catalog_products|||5|value', 'post:product:77'),
(1036, 10, '_catalog_products|||5|type', 'post'),
(1037, 10, '_catalog_products|||5|subtype', 'product'),
(1038, 10, '_catalog_products|||5|id', '77'),
(1039, 10, '_catalog_products|||6|value', 'post:product:84'),
(1040, 10, '_catalog_products|||6|type', 'post'),
(1041, 10, '_catalog_products|||6|subtype', 'product'),
(1042, 10, '_catalog_products|||6|id', '84'),
(1043, 10, '_catalog_products|||7|value', 'post:product:86'),
(1044, 10, '_catalog_products|||7|type', 'post'),
(1045, 10, '_catalog_products|||7|subtype', 'product'),
(1046, 10, '_catalog_products|||7|id', '86'),
(1047, 10, '_catalog_products|||8|value', 'post:product:87'),
(1048, 10, '_catalog_products|||8|type', 'post'),
(1049, 10, '_catalog_products|||8|subtype', 'product'),
(1050, 10, '_catalog_products|||8|id', '87'),
(1051, 10, '_catalog_products|||9|value', 'post:product:88'),
(1052, 10, '_catalog_products|||9|type', 'post'),
(1053, 10, '_catalog_products|||9|subtype', 'product'),
(1054, 10, '_catalog_products|||9|id', '88'),
(1055, 10, '_catalog_products|||10|value', 'post:product:89'),
(1056, 10, '_catalog_products|||10|type', 'post'),
(1057, 10, '_catalog_products|||10|subtype', 'product'),
(1058, 10, '_catalog_products|||10|id', '89'),
(1059, 10, '_catalog_products|||11|value', 'post:product:90'),
(1060, 10, '_catalog_products|||11|type', 'post'),
(1061, 10, '_catalog_products|||11|subtype', 'product'),
(1062, 10, '_catalog_products|||11|id', '90'),
(1135, 95, '_edit_last', '1'),
(1136, 95, '_edit_lock', '1686586078:1'),
(1137, 95, '_thumbnail_id', '72'),
(1138, 95, 'inline_featured_image', '0'),
(1139, 95, '_product_price', '5000'),
(1140, 97, '_edit_last', '1'),
(1141, 97, '_edit_lock', '1686586124:1'),
(1142, 97, '_thumbnail_id', '55'),
(1143, 97, 'inline_featured_image', '0'),
(1144, 97, '_product_price', '1000'),
(1145, 98, '_edit_last', '1'),
(1146, 98, '_edit_lock', '1686584184:1'),
(1147, 98, '_thumbnail_id', '55'),
(1148, 98, 'inline_featured_image', '0'),
(1149, 98, '_product_price', '5000'),
(1750, 33, '_catalog_products|||0|value', 'post:product:84'),
(1751, 33, '_catalog_products|||0|type', 'post'),
(1752, 33, '_catalog_products|||0|subtype', 'product'),
(1753, 33, '_catalog_products|||0|id', '84'),
(1754, 33, '_catalog_products|||1|value', 'post:product:93'),
(1755, 33, '_catalog_products|||1|type', 'post'),
(1756, 33, '_catalog_products|||1|subtype', 'product'),
(1757, 33, '_catalog_products|||1|id', '93'),
(1758, 33, '_catalog_products|||2|value', 'post:product:86'),
(1759, 33, '_catalog_products|||2|type', 'post'),
(1760, 33, '_catalog_products|||2|subtype', 'product'),
(1761, 33, '_catalog_products|||2|id', '86'),
(1762, 33, '_catalog_products|||3|value', 'post:product:87'),
(1763, 33, '_catalog_products|||3|type', 'post'),
(1764, 33, '_catalog_products|||3|subtype', 'product'),
(1765, 33, '_catalog_products|||3|id', '87'),
(1766, 33, '_catalog_products|||4|value', 'post:product:88'),
(1767, 33, '_catalog_products|||4|type', 'post'),
(1768, 33, '_catalog_products|||4|subtype', 'product'),
(1769, 33, '_catalog_products|||4|id', '88'),
(1770, 33, '_catalog_products|||5|value', 'post:product:89'),
(1771, 33, '_catalog_products|||5|type', 'post'),
(1772, 33, '_catalog_products|||5|subtype', 'product'),
(1773, 33, '_catalog_products|||5|id', '89'),
(1774, 33, '_catalog_products|||6|value', 'post:product:90'),
(1775, 33, '_catalog_products|||6|type', 'post'),
(1776, 33, '_catalog_products|||6|subtype', 'product'),
(1777, 33, '_catalog_products|||6|id', '90'),
(1778, 33, '_catalog_products|||7|value', 'post:product:91'),
(1779, 33, '_catalog_products|||7|type', 'post'),
(1780, 33, '_catalog_products|||7|subtype', 'product'),
(1781, 33, '_catalog_products|||7|id', '91'),
(1782, 33, '_catalog_products|||8|value', 'post:product:92'),
(1783, 33, '_catalog_products|||8|type', 'post'),
(1784, 33, '_catalog_products|||8|subtype', 'product'),
(1785, 33, '_catalog_products|||8|id', '92'),
(1786, 33, '_catalog_products|||9|value', 'post:product:95'),
(1787, 33, '_catalog_products|||9|type', 'post'),
(1788, 33, '_catalog_products|||9|subtype', 'product'),
(1789, 33, '_catalog_products|||9|id', '95'),
(1790, 34, '_catalog_products|||0|value', 'post:product:84'),
(1791, 34, '_catalog_products|||0|type', 'post'),
(1792, 34, '_catalog_products|||0|subtype', 'product'),
(1793, 34, '_catalog_products|||0|id', '84'),
(1794, 34, '_catalog_products|||1|value', 'post:product:93'),
(1795, 34, '_catalog_products|||1|type', 'post'),
(1796, 34, '_catalog_products|||1|subtype', 'product'),
(1797, 34, '_catalog_products|||1|id', '93'),
(1798, 34, '_catalog_products|||2|value', 'post:product:86'),
(1799, 34, '_catalog_products|||2|type', 'post'),
(1800, 34, '_catalog_products|||2|subtype', 'product'),
(1801, 34, '_catalog_products|||2|id', '86'),
(1802, 34, '_catalog_products|||3|value', 'post:product:87'),
(1803, 34, '_catalog_products|||3|type', 'post'),
(1804, 34, '_catalog_products|||3|subtype', 'product'),
(1805, 34, '_catalog_products|||3|id', '87'),
(1806, 34, '_catalog_products|||4|value', 'post:product:88'),
(1807, 34, '_catalog_products|||4|type', 'post'),
(1808, 34, '_catalog_products|||4|subtype', 'product'),
(1809, 34, '_catalog_products|||4|id', '88'),
(1810, 34, '_catalog_products|||5|value', 'post:product:89'),
(1811, 34, '_catalog_products|||5|type', 'post'),
(1812, 34, '_catalog_products|||5|subtype', 'product'),
(1813, 34, '_catalog_products|||5|id', '89'),
(1814, 34, '_catalog_products|||6|value', 'post:product:90'),
(1815, 34, '_catalog_products|||6|type', 'post'),
(1816, 34, '_catalog_products|||6|subtype', 'product'),
(1817, 34, '_catalog_products|||6|id', '90'),
(1818, 34, '_catalog_products|||7|value', 'post:product:91'),
(1819, 34, '_catalog_products|||7|type', 'post'),
(1820, 34, '_catalog_products|||7|subtype', 'product'),
(1821, 34, '_catalog_products|||7|id', '91'),
(1822, 34, '_catalog_products|||8|value', 'post:product:92'),
(1823, 34, '_catalog_products|||8|type', 'post'),
(1824, 34, '_catalog_products|||8|subtype', 'product'),
(1825, 34, '_catalog_products|||8|id', '92'),
(1826, 34, '_catalog_products|||9|value', 'post:product:95'),
(1827, 34, '_catalog_products|||9|type', 'post'),
(1828, 34, '_catalog_products|||9|subtype', 'product'),
(1829, 34, '_catalog_products|||9|id', '95'),
(1918, 31, '_catalog_products|||0|value', 'post:product:53'),
(1919, 31, '_catalog_products|||0|type', 'post'),
(1920, 31, '_catalog_products|||0|subtype', 'product'),
(1921, 31, '_catalog_products|||0|id', '53'),
(1922, 31, '_catalog_products|||1|value', 'post:product:68'),
(1923, 31, '_catalog_products|||1|type', 'post'),
(1924, 31, '_catalog_products|||1|subtype', 'product'),
(1925, 31, '_catalog_products|||1|id', '68'),
(1926, 31, '_catalog_products|||2|value', 'post:product:74'),
(1927, 31, '_catalog_products|||2|type', 'post'),
(1928, 31, '_catalog_products|||2|subtype', 'product'),
(1929, 31, '_catalog_products|||2|id', '74'),
(1930, 31, '_catalog_products|||3|value', 'post:product:75'),
(1931, 31, '_catalog_products|||3|type', 'post'),
(1932, 31, '_catalog_products|||3|subtype', 'product'),
(1933, 31, '_catalog_products|||3|id', '75'),
(1934, 31, '_catalog_products|||4|value', 'post:product:76'),
(1935, 31, '_catalog_products|||4|type', 'post'),
(1936, 31, '_catalog_products|||4|subtype', 'product'),
(1937, 31, '_catalog_products|||4|id', '76'),
(1938, 31, '_catalog_products|||5|value', 'post:product:78'),
(1939, 31, '_catalog_products|||5|type', 'post'),
(1940, 31, '_catalog_products|||5|subtype', 'product'),
(1941, 31, '_catalog_products|||5|id', '78'),
(1942, 31, '_catalog_products|||6|value', 'post:product:81'),
(1943, 31, '_catalog_products|||6|type', 'post'),
(1944, 31, '_catalog_products|||6|subtype', 'product'),
(1945, 31, '_catalog_products|||6|id', '81'),
(1946, 31, '_catalog_products|||7|value', 'post:product:80'),
(1947, 31, '_catalog_products|||7|type', 'post'),
(1948, 31, '_catalog_products|||7|subtype', 'product'),
(1949, 31, '_catalog_products|||7|id', '80'),
(1950, 31, '_catalog_products|||8|value', 'post:product:82'),
(1951, 31, '_catalog_products|||8|type', 'post'),
(1952, 31, '_catalog_products|||8|subtype', 'product'),
(1953, 31, '_catalog_products|||8|id', '82'),
(1954, 31, '_catalog_products|||9|value', 'post:product:77'),
(1955, 31, '_catalog_products|||9|type', 'post'),
(1956, 31, '_catalog_products|||9|subtype', 'product'),
(1957, 31, '_catalog_products|||9|id', '77'),
(1958, 31, '_catalog_products|||10|value', 'post:product:97'),
(1959, 31, '_catalog_products|||10|type', 'post'),
(1960, 31, '_catalog_products|||10|subtype', 'product'),
(1961, 31, '_catalog_products|||10|id', '97'),
(1962, 31, '_catalog_products|||11|value', 'post:product:98'),
(1963, 31, '_catalog_products|||11|type', 'post'),
(1964, 31, '_catalog_products|||11|subtype', 'product'),
(1965, 31, '_catalog_products|||11|id', '98'),
(1966, 32, '_catalog_products|||0|value', 'post:product:53'),
(1967, 32, '_catalog_products|||0|type', 'post'),
(1968, 32, '_catalog_products|||0|subtype', 'product'),
(1969, 32, '_catalog_products|||0|id', '53'),
(1970, 32, '_catalog_products|||1|value', 'post:product:68'),
(1971, 32, '_catalog_products|||1|type', 'post'),
(1972, 32, '_catalog_products|||1|subtype', 'product'),
(1973, 32, '_catalog_products|||1|id', '68'),
(1974, 32, '_catalog_products|||2|value', 'post:product:74'),
(1975, 32, '_catalog_products|||2|type', 'post'),
(1976, 32, '_catalog_products|||2|subtype', 'product'),
(1977, 32, '_catalog_products|||2|id', '74'),
(1978, 32, '_catalog_products|||3|value', 'post:product:75'),
(1979, 32, '_catalog_products|||3|type', 'post'),
(1980, 32, '_catalog_products|||3|subtype', 'product'),
(1981, 32, '_catalog_products|||3|id', '75'),
(1982, 32, '_catalog_products|||4|value', 'post:product:76'),
(1983, 32, '_catalog_products|||4|type', 'post'),
(1984, 32, '_catalog_products|||4|subtype', 'product'),
(1985, 32, '_catalog_products|||4|id', '76'),
(1986, 32, '_catalog_products|||5|value', 'post:product:78'),
(1987, 32, '_catalog_products|||5|type', 'post'),
(1988, 32, '_catalog_products|||5|subtype', 'product'),
(1989, 32, '_catalog_products|||5|id', '78'),
(1990, 32, '_catalog_products|||6|value', 'post:product:81'),
(1991, 32, '_catalog_products|||6|type', 'post'),
(1992, 32, '_catalog_products|||6|subtype', 'product'),
(1993, 32, '_catalog_products|||6|id', '81'),
(1994, 32, '_catalog_products|||7|value', 'post:product:80'),
(1995, 32, '_catalog_products|||7|type', 'post'),
(1996, 32, '_catalog_products|||7|subtype', 'product'),
(1997, 32, '_catalog_products|||7|id', '80'),
(1998, 32, '_catalog_products|||8|value', 'post:product:82'),
(1999, 32, '_catalog_products|||8|type', 'post'),
(2000, 32, '_catalog_products|||8|subtype', 'product'),
(2001, 32, '_catalog_products|||8|id', '82'),
(2002, 32, '_catalog_products|||9|value', 'post:product:77'),
(2003, 32, '_catalog_products|||9|type', 'post'),
(2004, 32, '_catalog_products|||9|subtype', 'product'),
(2005, 32, '_catalog_products|||9|id', '77'),
(2006, 32, '_catalog_products|||10|value', 'post:product:97'),
(2007, 32, '_catalog_products|||10|type', 'post'),
(2008, 32, '_catalog_products|||10|subtype', 'product'),
(2009, 32, '_catalog_products|||10|id', '97'),
(2010, 32, '_catalog_products|||11|value', 'post:product:98'),
(2011, 32, '_catalog_products|||11|type', 'post'),
(2012, 32, '_catalog_products|||11|subtype', 'product'),
(2013, 32, '_catalog_products|||11|id', '98'),
(2015, 84, '_product_price', '1000'),
(2025, 68, 'inline_featured_image', '0'),
(2028, 68, '_full-description', ''),
(2043, 68, '_photo', ''),
(2046, 68, '_product_availability', 'В наличии'),
(2047, 68, '_product_price', '1000'),
(2048, 68, '_short_description', 'Ванна акриловая Acryelia 1Марка с просторной формой чаши позволяет принимать как ванну, так и душ. Ванна изготовлена из АБС-пластика. Акриловые ванны всегда теплые, они долго сохраняют температуру воды. Акриловые ванны не шумят при наборе воды.'),
(2049, 68, '_features', '<ul class=\"product__list\">\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Производитель:</span><span class=\"product__features-text\">Santek</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Единица измерения:</span><span class=\"product__features-text\">шт</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Ширина:</span><span class=\"product__features-text\">75</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Длина:</span><span class=\"product__features-text\">75</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Глубина:</span><span class=\"product__features-text\">25</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Материал:</span><span class=\"product__features-text\">Акрил</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Страна производитель:</span><span class=\"product__features-text\">Россия</span></li>\r\n</ul>'),
(2050, 68, '_full_description', 'Ванна акриловая Acryelia 1Марка с просторной формой чаши позволяет принимать как ванну, так и душ. Ванна изготовлена из АБС-пластика. Акриловые ванны всегда теплые, они долго сохраняют температуру воды. Акриловые ванны не шумят при наборе воды. Поверхность хоть и гладкая, но не скользкая. Не слишком глубокие повреждения ванны поддаются реставрации. Царапины можно зашлифовать и обработать специальным составом. Однако с акриловой ванной все же нужно обращаться бережно. Слой акрила со временем может истончаться, а от падения острого предмета могут появиться серьезные повреждения, устранить которые будет сложно или даже невозможно.'),
(2051, 68, '_photo_1', '55'),
(2052, 68, '_photo_2', '55'),
(2053, 68, '_photo_3', ''),
(2054, 35, '_edit_last', '1'),
(2055, 35, '_catalog_products|||0|value', 'post:product:68'),
(2056, 35, '_catalog_products|||0|type', 'post'),
(2057, 35, '_catalog_products|||0|subtype', 'product'),
(2058, 35, '_catalog_products|||0|id', '68'),
(2059, 35, '_catalog_products|||1|value', 'post:product:84'),
(2060, 35, '_catalog_products|||1|type', 'post'),
(2061, 35, '_catalog_products|||1|subtype', 'product'),
(2062, 35, '_catalog_products|||1|id', '84'),
(2063, 36, '_catalog_products|||0|value', 'post:product:68'),
(2064, 36, '_catalog_products|||0|type', 'post'),
(2065, 36, '_catalog_products|||0|subtype', 'product'),
(2066, 36, '_catalog_products|||0|id', '68'),
(2067, 36, '_catalog_products|||1|value', 'post:product:84'),
(2068, 36, '_catalog_products|||1|type', 'post'),
(2069, 36, '_catalog_products|||1|subtype', 'product'),
(2070, 36, '_catalog_products|||1|id', '84');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2023-06-11 10:35:47', '2023-06-11 07:35:47', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://shop/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-06-11 10:37:46', '2023-06-11 07:37:46', '', 0, 'http://shop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-11 10:35:47', '2023-06-11 07:35:47', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://shop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-06-11 10:37:49', '2023-06-11 07:37:49', '', 0, 'http://shop/?page_id=3', 0, 'page', '', 0),
(6, 1, '2023-06-11 10:37:46', '2023-06-11 07:37:46', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://shop/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-11 10:37:46', '2023-06-11 07:37:46', '', 2, 'http://shop/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-06-11 10:37:49', '2023-06-11 07:37:49', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://shop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-06-11 10:37:49', '2023-06-11 07:37:49', '', 3, 'http://shop/?p=7', 0, 'revision', '', 0),
(9, 1, '2023-06-11 10:43:28', '2023-06-11 07:43:28', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-06-12 19:03:23', '2023-06-12 16:03:23', '', 0, 'http://shop/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-06-11 10:54:31', '2023-06-11 07:54:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-06-11 10:54:31', '2023-06-11 07:54:31', '', 9, 'http://shop/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-06-11 10:49:18', '2023-06-11 07:49:18', '<!-- wp:paragraph -->\n<p>Строймастер любит своих покупателей и хочет, чтобы Вам было покупать комфортнее. Именно для этого мы запускаем акцию \"до 10% скидка на следующую покупку\".</p>\n<!-- /wp:paragraph -->', 'Скидка 10% на следующую покупку', '', 'publish', 'open', 'open', '', '%d1%81%d0%ba%d0%b8%d0%b4%d0%ba%d0%b0-10-%d0%bd%d0%b0-%d1%81%d0%bb%d0%b5%d0%b4%d1%83%d1%8e%d1%89%d1%83%d1%8e-%d0%bf%d0%be%d0%ba%d1%83%d0%bf%d0%ba%d1%83', '', '', '2023-06-11 10:49:18', '2023-06-11 07:49:18', '', 0, 'http://shop/?p=11', 0, 'post', '', 0),
(12, 1, '2023-06-11 10:49:00', '2023-06-11 07:49:00', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2023-06-11 10:49:00', '2023-06-11 07:49:00', '', 11, 'http://shop/wp-content/uploads/2023/06/img-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2023-06-11 10:49:18', '2023-06-11 07:49:18', '<!-- wp:paragraph -->\n<p>Строймастер любит своих покупателей и хочет, чтобы Вам было покупать комфортнее. Именно для этого мы запускаем акцию \"до 10% скидка на следующую покупку\".</p>\n<!-- /wp:paragraph -->', 'Скидка 10% на следующую покупку', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-06-11 10:49:18', '2023-06-11 07:49:18', '', 11, 'http://shop/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-06-11 10:50:35', '2023-06-11 07:50:35', '<!-- wp:paragraph -->\n<p>Закажите комплект мебели для ванной комнаты от компании Whitecoff и сделайте свою ванную комнату невероятно яркой и чистой!</p>\n<!-- /wp:paragraph -->', 'Невероятная белая магия от компании', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b5%d0%b2%d0%b5%d1%80%d0%be%d1%8f%d1%82%d0%bd%d0%b0%d1%8f-%d0%b1%d0%b5%d0%bb%d0%b0%d1%8f-%d0%bc%d0%b0%d0%b3%d0%b8%d1%8f-%d0%be%d1%82-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d0%b8%d0%b8', '', '', '2023-06-11 10:50:35', '2023-06-11 07:50:35', '', 0, 'http://shop/?p=14', 0, 'post', '', 0),
(15, 1, '2023-06-11 10:50:28', '2023-06-11 07:50:28', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2023-06-11 10:50:28', '2023-06-11 07:50:28', '', 14, 'http://shop/wp-content/uploads/2023/06/img-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2023-06-11 10:50:29', '2023-06-11 07:50:29', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2-2', '', '', '2023-06-11 10:50:29', '2023-06-11 07:50:29', '', 14, 'http://shop/wp-content/uploads/2023/06/img-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2023-06-11 10:50:35', '2023-06-11 07:50:35', '<!-- wp:paragraph -->\n<p>Закажите комплект мебели для ванной комнаты от компании Whitecoff и сделайте свою ванную комнату невероятно яркой и чистой!</p>\n<!-- /wp:paragraph -->', 'Невероятная белая магия от компании', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-06-11 10:50:35', '2023-06-11 07:50:35', '', 14, 'http://shop/?p=17', 0, 'revision', '', 0),
(19, 1, '2023-06-11 10:57:10', '2023-06-11 07:57:10', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2023-06-11 10:58:09', '2023-06-11 07:58:09', '', 0, 'http://shop/?page_id=19', 0, 'page', '', 0),
(20, 1, '2023-06-11 10:57:10', '2023-06-11 07:57:10', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-06-11 10:57:10', '2023-06-11 07:57:10', '', 19, 'http://shop/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-06-11 10:58:41', '2023-06-11 07:58:41', '', 'Оплата и доставка', '', 'publish', 'closed', 'closed', '', 'oplata-i-dostavka', '', '', '2023-06-11 10:59:47', '2023-06-11 07:59:47', '', 0, 'http://shop/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-06-11 10:58:41', '2023-06-11 07:58:41', '', 'Оплата и доставка', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-06-11 10:58:41', '2023-06-11 07:58:41', '', 21, 'http://shop/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-06-11 10:59:20', '2023-06-11 07:59:20', '', 'Гарантия и возврат', '', 'publish', 'closed', 'closed', '', 'garantija-i-vozvrat', '', '', '2023-06-11 10:59:29', '2023-06-11 07:59:29', '', 0, 'http://shop/?page_id=23', 0, 'page', '', 0),
(24, 1, '2023-06-11 10:59:20', '2023-06-11 07:59:20', '', 'Гарантия и возврат', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-11 10:59:20', '2023-06-11 07:59:20', '', 23, 'http://shop/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-06-11 11:00:24', '2023-06-11 08:00:24', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2023-06-11 11:00:24', '2023-06-11 08:00:24', '', 0, 'http://shop/?page_id=25', 0, 'page', '', 0),
(26, 1, '2023-06-11 11:00:24', '2023-06-11 08:00:24', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2023-06-11 11:00:24', '2023-06-11 08:00:24', '', 25, 'http://shop/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-06-11 11:04:15', '2023-06-11 08:02:23', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2023-06-11 11:04:15', '2023-06-11 08:04:15', '', 0, 'http://shop/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2023-06-11 11:04:15', '2023-06-11 08:02:23', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2023-06-11 11:04:15', '2023-06-11 08:04:15', '', 0, 'http://shop/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2023-06-11 11:04:15', '2023-06-11 08:02:23', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2023-06-11 11:04:15', '2023-06-11 08:04:15', '', 0, 'http://shop/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2023-06-11 11:04:15', '2023-06-11 08:02:23', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2023-06-11 11:04:15', '2023-06-11 08:04:15', '', 0, 'http://shop/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2023-06-11 10:46:33', '2023-06-11 07:46:33', '', 'Раковины', '', 'publish', 'closed', 'closed', '', 'rakoviny', '', '', '2023-06-12 18:54:20', '2023-06-12 15:54:20', '', 0, 'http://shop/?page_id=31', 0, 'page', '', 0),
(32, 1, '2023-06-11 11:06:08', '2023-06-11 08:06:08', '', 'Раковины', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-06-11 11:06:08', '2023-06-11 08:06:08', '', 31, 'http://shop/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-06-11 10:46:58', '2023-06-11 07:46:58', '', 'Смесители', '', 'publish', 'closed', 'closed', '', 'smesiteli', '', '', '2023-06-12 18:48:35', '2023-06-12 15:48:35', '', 0, 'http://shop/?page_id=33', 0, 'page', '', 0),
(34, 1, '2023-06-11 11:06:26', '2023-06-11 08:06:26', '', 'Смесители', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-06-11 11:06:26', '2023-06-11 08:06:26', '', 33, 'http://shop/?p=34', 0, 'revision', '', 0),
(35, 1, '2023-06-11 10:07:16', '2023-06-11 07:07:16', '', 'Унитазы', '', 'publish', 'closed', 'closed', '', 'unitazy', '', '', '2023-06-19 22:07:25', '2023-06-19 19:07:25', '', 0, 'http://shop/?page_id=35', 0, 'page', '', 0),
(36, 1, '2023-06-11 10:07:16', '2023-06-11 07:07:16', '', 'Унитазы', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2023-06-11 10:07:16', '2023-06-11 07:07:16', '', 35, 'http://shop/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-06-11 10:07:45', '2023-06-11 07:07:45', '', 'Душевые кабины', '', 'publish', 'closed', 'closed', '', 'dushevye-kabiny', '', '', '2023-06-11 10:41:54', '2023-06-11 07:41:54', '', 0, 'http://shop/?page_id=37', 0, 'page', '', 0),
(38, 1, '2023-06-11 10:07:45', '2023-06-11 07:07:45', '', 'Душевые кабины', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2023-06-11 10:07:45', '2023-06-11 07:07:45', '', 37, 'http://shop/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-06-11 10:08:00', '2023-06-11 07:08:00', '', 'Ванны', '', 'publish', 'closed', 'closed', '', 'vanny', '', '', '2023-06-11 10:41:34', '2023-06-11 07:41:34', '', 0, 'http://shop/?page_id=39', 0, 'page', '', 0),
(40, 1, '2023-06-11 10:08:00', '2023-06-11 07:08:00', '', 'Ванны', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2023-06-11 10:08:00', '2023-06-11 07:08:00', '', 39, 'http://shop/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-06-11 10:09:41', '2023-06-11 07:09:41', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2023-06-11 10:09:41', '2023-06-11 07:09:41', '', 0, 'http://shop/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2023-06-11 10:09:41', '2023-06-11 07:09:41', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2023-06-11 10:09:41', '2023-06-11 07:09:41', '', 0, 'http://shop/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2023-06-11 10:09:42', '2023-06-11 07:09:42', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2023-06-11 10:09:42', '2023-06-11 07:09:42', '', 0, 'http://shop/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2023-06-11 10:09:42', '2023-06-11 07:09:42', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2023-06-11 10:09:42', '2023-06-11 07:09:42', '', 0, 'http://shop/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2023-06-11 10:09:42', '2023-06-11 07:09:42', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2023-06-11 10:09:42', '2023-06-11 07:09:42', '', 0, 'http://shop/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2023-06-11 10:34:37', '2023-06-11 07:34:37', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-06-11 10:34:37', '2023-06-11 07:34:37', '', 0, 'http://shop/wp-content/uploads/2023/06/logo-1.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2023-06-11 10:34:38', '2023-06-11 07:34:38', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2023-06-11 10:34:38', '2023-06-11 07:34:38', '', 0, 'http://shop/wp-content/uploads/2023/06/logo-2.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2023-06-11 10:35:33', '2023-06-11 07:35:33', '{\n    \"shop::custom_logo\": {\n        \"value\": 47,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-11 07:35:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '36c3cc7d-efc4-4596-8b7c-12b5a7fe17b1', '', '', '2023-06-11 10:35:33', '2023-06-11 07:35:33', '', 0, 'http://shop/2023/06/11/36c3cc7d-efc4-4596-8b7c-12b5a7fe17b1/', 0, 'customize_changeset', '', 0),
(49, 1, '2023-06-11 10:36:26', '2023-06-11 07:36:26', '', 'icon_2', '', 'inherit', 'open', 'closed', '', 'icon_2', '', '', '2023-06-11 10:36:26', '2023-06-11 07:36:26', '', 0, 'http://shop/wp-content/uploads/2023/06/icon_2-1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2023-06-11 10:36:27', '2023-06-11 07:36:27', '', 'icon_2', '', 'inherit', 'open', 'closed', '', 'icon_2-2', '', '', '2023-06-11 10:36:27', '2023-06-11 07:36:27', '', 0, 'http://shop/wp-content/uploads/2023/06/icon_2-2.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2023-06-11 10:36:53', '2023-06-11 07:36:53', '', 'icon_1', '', 'inherit', 'open', 'closed', '', 'icon_1', '', '', '2023-06-11 10:36:53', '2023-06-11 07:36:53', '', 0, 'http://shop/wp-content/uploads/2023/06/icon_1-1.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2023-06-11 10:37:18', '2023-06-11 07:37:18', '', 'icon_3', '', 'inherit', 'open', 'closed', '', 'icon_3', '', '', '2023-06-11 10:37:18', '2023-06-11 07:37:18', '', 0, 'http://shop/wp-content/uploads/2023/06/icon_3-1.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2023-06-11 10:46:55', '2023-06-11 07:46:55', '', 'Товар №2', '', 'publish', 'closed', 'closed', '', 'rakovina-akrilovaja', '', '', '2023-06-12 18:39:12', '2023-06-12 15:39:12', '', 0, 'http://shop/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2023-06-11 10:43:03', '2023-06-11 07:43:03', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2023-06-11 10:43:03', '2023-06-11 07:43:03', '', 53, 'http://shop/wp-content/uploads/2023/06/1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2023-06-11 10:43:04', '2023-06-11 07:43:04', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2023-06-11 10:43:04', '2023-06-11 07:43:04', '', 53, 'http://shop/wp-content/uploads/2023/06/1-1.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2023-06-11 11:03:59', '2023-06-11 08:03:59', '<ul class=\"product__list\">\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Производитель: </span><span class=\"product__features-text\">Santek</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Единица измерения: </span><span class=\"product__features-text\">шт</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Ширина: </span><span class=\"product__features-text\">75</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Длина: </span><span class=\"product__features-text\">75</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Глубина: </span><span class=\"product__features-text\">25</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Материал: </span><span class=\"product__features-text\">Акрил</span></li>\r\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Страна производитель: </span><span class=\"product__features-text\">Россия</span></li>\r\n</ul>', 'Товар №1', '', 'publish', 'closed', 'closed', '', 'rakovina-jemal', '', '', '2023-06-19 21:42:05', '2023-06-19 18:42:05', '', 0, 'http://shop/?post_type=product&#038;p=68', 0, 'product', '', 0),
(71, 1, '2023-06-11 10:32:45', '2023-06-11 07:32:45', '', 'товар 1', '', 'trash', 'closed', 'closed', '', 'tovar-1__trashed', '', '', '2023-06-12 18:55:30', '2023-06-12 15:55:30', '', 0, 'http://shop/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2023-06-11 10:32:35', '2023-06-11 07:32:35', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2023-06-11 10:32:35', '2023-06-11 07:32:35', '', 71, 'http://shop/wp-content/uploads/2023/06/2.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2023-06-12 18:39:59', '2023-06-12 15:39:59', '', 'Товар №3', '', 'publish', 'closed', 'closed', '', 'tovar-3', '', '', '2023-06-12 18:40:51', '2023-06-12 15:40:51', '', 0, 'http://shop/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2023-06-12 18:40:33', '2023-06-12 15:40:33', '', 'Товар №4', '', 'publish', 'closed', 'closed', '', 'tovar-4', '', '', '2023-06-12 18:40:33', '2023-06-12 15:40:33', '', 0, 'http://shop/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2023-06-12 18:41:10', '2023-06-12 15:41:10', '', 'Товар №5', '', 'publish', 'closed', 'closed', '', 'tovar-5', '', '', '2023-06-12 18:41:10', '2023-06-12 15:41:10', '', 0, 'http://shop/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2023-06-12 18:41:40', '2023-06-12 15:41:40', '', 'Товар №6', '', 'publish', 'closed', 'closed', '', 'tovar-6', '', '', '2023-06-12 18:41:40', '2023-06-12 15:41:40', '', 0, 'http://shop/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 1, '2023-06-12 18:42:07', '2023-06-12 15:42:07', '', 'Товар №7', '', 'publish', 'closed', 'closed', '', 'tovar-7', '', '', '2023-06-12 18:42:21', '2023-06-12 15:42:21', '', 0, 'http://shop/?post_type=product&#038;p=78', 0, 'product', '', 0),
(80, 1, '2023-06-12 19:07:15', '2023-06-12 16:07:15', '', 'Товар №8', '', 'publish', 'closed', 'closed', '', 'tovar-8', '', '', '2023-06-12 19:07:15', '2023-06-12 16:07:15', '', 0, 'http://shop/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2023-06-12 19:07:38', '2023-06-12 16:07:38', '', 'Товар №9', '', 'publish', 'closed', 'closed', '', 'tovar-9', '', '', '2023-06-12 19:07:38', '2023-06-12 16:07:38', '', 0, 'http://shop/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2023-06-12 19:08:03', '2023-06-12 16:08:03', '', 'Товар №10', '', 'publish', 'closed', 'closed', '', 'tovar-10', '', '', '2023-06-12 19:08:03', '2023-06-12 16:08:03', '', 0, 'http://shop/?post_type=product&#038;p=82', 0, 'product', '', 0),
(84, 1, '2023-06-12 18:54:54', '2023-06-12 15:54:54', '', 'Товар №1', '', 'publish', 'closed', 'closed', '', 'tovar-1-2', '', '', '2023-06-12 19:12:03', '2023-06-12 16:12:03', '', 0, 'http://shop/?post_type=product&#038;p=84', 0, 'product', '', 0),
(86, 1, '2023-06-12 18:56:42', '2023-06-12 15:56:42', '', 'Товар №2', '', 'publish', 'closed', 'closed', '', 'tovar-2', '', '', '2023-06-12 18:56:42', '2023-06-12 15:56:42', '', 0, 'http://shop/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2023-06-12 18:57:47', '2023-06-12 15:57:47', '', 'Товар №3', '', 'publish', 'closed', 'closed', '', 'tovar-3-2', '', '', '2023-06-12 18:57:47', '2023-06-12 15:57:47', '', 0, 'http://shop/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2023-06-12 18:58:17', '2023-06-12 15:58:17', '', 'Товар №4', '', 'publish', 'closed', 'closed', '', 'tovar-4-2', '', '', '2023-06-12 18:58:17', '2023-06-12 15:58:17', '', 0, 'http://shop/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2023-06-12 18:58:47', '2023-06-12 15:58:47', '', 'Товар №5', '', 'publish', 'closed', 'closed', '', 'tovar-5-2', '', '', '2023-06-12 18:58:47', '2023-06-12 15:58:47', '', 0, 'http://shop/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2023-06-12 18:59:16', '2023-06-12 15:59:16', '', 'Товар №6', '', 'publish', 'closed', 'closed', '', 'tovar-6-2', '', '', '2023-06-12 18:59:16', '2023-06-12 15:59:16', '', 0, 'http://shop/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2023-06-12 18:59:40', '2023-06-12 15:59:40', '', 'Товар №7', '', 'publish', 'closed', 'closed', '', 'tovar-7-2', '', '', '2023-06-12 18:59:40', '2023-06-12 15:59:40', '', 0, 'http://shop/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2023-06-12 19:00:04', '2023-06-12 16:00:04', '', 'Товар №9', '', 'publish', 'closed', 'closed', '', 'tovar-8-2', '', '', '2023-06-12 19:00:30', '2023-06-12 16:00:30', '', 0, 'http://shop/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2023-06-12 19:00:50', '2023-06-12 16:00:50', '', 'Товар №10', '', 'publish', 'closed', 'closed', '', 'tovar-10-2', '', '', '2023-06-12 19:00:56', '2023-06-12 16:00:56', '', 0, 'http://shop/?post_type=product&#038;p=93', 0, 'product', '', 0),
(95, 1, '2023-06-12 19:06:34', '2023-06-12 16:06:34', '', 'Товар №8', '', 'publish', 'closed', 'closed', '', 'tovar-8-3', '', '', '2023-06-12 19:06:34', '2023-06-12 16:06:34', '', 0, 'http://shop/?post_type=product&#038;p=95', 0, 'product', '', 0),
(97, 1, '2023-06-12 19:11:04', '2023-06-12 16:11:04', '', 'Товар №11', '', 'publish', 'closed', 'closed', '', 'tovar-11', '', '', '2023-06-12 19:11:04', '2023-06-12 16:11:04', '', 0, 'http://shop/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2023-06-12 19:11:39', '2023-06-12 16:11:39', '', 'Товар №12', '', 'publish', 'closed', 'closed', '', 'tovar-12', '', '', '2023-06-12 19:11:39', '2023-06-12 16:11:39', '', 0, 'http://shop/?post_type=product&#038;p=98', 0, 'product', '', 0),
(101, 1, '2023-06-12 18:45:31', '2023-06-12 15:45:31', '<ul class=\"product__list\">\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Производитель: </span><span class=\"product__features-text\">Santek</span></li>\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Единица измерения: </span><span class=\"product__features-text\">шт</span></li>\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Ширина: </span><span class=\"product__features-text\">75</span></li>\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Длина: </span><span class=\"product__features-text\">75</span></li>\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Глубина: </span><span class=\"product__features-text\">25</span></li>\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Материал: </span><span class=\"product__features-text\">Акрил</span></li>\n 	<li class=\"product__features-links\"><span class=\"product__features-text\">Страна производитель: </span><span class=\"product__features-text\">Россия</span></li>\n 	<li></li>\n</ul>', 'Товар №1', 'Ванна акриловая Acryelia 1Марка с просторной формой чаши позволяет принимать как ванну, так и душ. Ванна изготовлена из АБС-пластика. Акриловые ванны всегда теплые, они долго сохраняют температуру воды. Акриловые ванны не шумят при наборе воды.', 'inherit', 'closed', 'closed', '', '68-autosave-v1', '', '', '2023-06-12 18:45:31', '2023-06-12 15:45:31', '', 68, 'http://shop/?p=101', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Слайдер', '%d1%81%d0%bb%d0%b0%d0%b9%d0%b4%d0%b5%d1%80', 0),
(3, 'Меню сайта', 'menju-sajta', 0),
(4, 'Меню каталога', 'menju-kataloga', 0),
(5, 'Раковины', 'rakoviny', 0),
(6, 'Смесители', 'smesiteli', 0),
(7, 'Унитазы', 'unitazy', 0),
(8, 'Душевые кабины', 'dushevye-kabiny', 0),
(9, 'Ванны', 'vanny', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(11, 2, 0),
(14, 2, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(41, 4, 0),
(42, 4, 0),
(43, 4, 0),
(44, 4, 0),
(45, 4, 0),
(53, 5, 0),
(68, 5, 0),
(71, 6, 0),
(74, 5, 0),
(75, 5, 0),
(76, 5, 0),
(77, 5, 0),
(78, 5, 0),
(80, 5, 0),
(81, 5, 0),
(82, 5, 0),
(84, 6, 0),
(86, 6, 0),
(87, 6, 0),
(88, 6, 0),
(89, 6, 0),
(90, 6, 0),
(91, 6, 0),
(92, 6, 0),
(93, 6, 0),
(95, 6, 0),
(97, 5, 0),
(98, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'product-categories', '', 0, 12),
(6, 6, 'product-categories', '', 0, 10),
(7, 7, 'product-categories', '', 0, 0),
(8, 8, 'product-categories', '', 0, 0),
(9, 9, 'product-categories', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"da84893cc140b70068d5545433fe630e674dc7f84f13b9ede3f4e09bd0a6e04e\";a:4:{s:10:\"expiration\";i:1688315605;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:123:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0\";s:5:\"login\";i:1688142805;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2023-06-11T07:48:48.701Z\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:22:\"add-product-categories\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1687199745'),
(24, 1, 'nav_menu_recently_edited', '4'),
(25, 1, 'closedpostboxes_product', 'a:0:{}'),
(26, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(27, 1, 'meta-box-order_product', 'a:4:{s:25:\"carbon_fields_after_title\";s:0:\"\";s:4:\"side\";s:44:\"submitdiv,product-categoriesdiv,postimagediv\";s:6:\"normal\";s:53:\"carbon_fields_container_0f00390c3,postexcerpt,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(28, 1, 'screen_layout_product', '2'),
(29, 1, 'closedpostboxes_page', 'a:0:{}'),
(30, 1, 'metaboxhidden_page', 'a:0:{}'),
(31, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:32:\"carbon_fields_container_0f00390c\";s:4:\"side\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BrCvRVuYju/AdZxl4jh75IVoC4LH9B0', 'admin', 'zm681986@mail.ru', 'http://shop', '2023-06-11 07:35:47', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2071;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
