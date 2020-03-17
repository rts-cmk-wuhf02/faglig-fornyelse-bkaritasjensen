-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-02-09 13:16:50','2020-02-09 13:16:50','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://meter.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://meter.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','meter','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','bkj@karitaswebdesign.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','5','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','meter','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','meter','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','13','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','32','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1596806209','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1583435811;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583457411;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583500611;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583500728;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583500730;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','.1kq-7Wq?/$UzQ?&`5^.yymFOe|jS:iITG23I4|Gla59fGrdp/GoOu7Gb{IIw$/w','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt',':plU7n95ITV#*y*=]!2HP%vm T!3Y&8ApEU;mY=t1KFEB^esnarD2EOt6+^.NFEf','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583414502;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (119,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583414502;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583414503;s:7:\"checked\";a:5:{s:5:\"meter\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581255934;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (132,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (143,'current_theme','meter','yes');
INSERT INTO `wp_options` VALUES (144,'theme_mods_meter','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"headerMenuLocation\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581260155;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (145,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (154,'theme_mods_twentynineteen','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581260157;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (206,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}','yes');
INSERT INTO `wp_options` VALUES (214,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (376,'_site_transient_timeout_browser_428f289d131527a8146ba85d8282beb4','1583943570','no');
INSERT INTO `wp_options` VALUES (377,'_site_transient_browser_428f289d131527a8146ba85d8282beb4','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (378,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1583943570','no');
INSERT INTO `wp_options` VALUES (379,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (401,'category_children','a:1:{i:3;a:1:{i:0;i:8;}}','yes');
INSERT INTO `wp_options` VALUES (411,'_site_transient_timeout_theme_roots','1583416303','no');
INSERT INTO `wp_options` VALUES (412,'_site_transient_theme_roots','a:5:{s:5:\"meter\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (4,6,'_edit_lock','1581670097:1');
INSERT INTO `wp_postmeta` VALUES (5,8,'_edit_lock','1581532063:1');
INSERT INTO `wp_postmeta` VALUES (6,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (7,3,'_wp_trash_meta_time','1581528934');
INSERT INTO `wp_postmeta` VALUES (8,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (9,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (10,2,'_wp_trash_meta_time','1581528939');
INSERT INTO `wp_postmeta` VALUES (11,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (12,13,'_edit_lock','1582544070:1');
INSERT INTO `wp_postmeta` VALUES (13,15,'_edit_lock','1581532095:1');
INSERT INTO `wp_postmeta` VALUES (14,17,'_edit_lock','1581670126:1');
INSERT INTO `wp_postmeta` VALUES (15,19,'_edit_lock','1581670136:1');
INSERT INTO `wp_postmeta` VALUES (16,21,'_edit_lock','1581670146:1');
INSERT INTO `wp_postmeta` VALUES (17,23,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (18,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (19,23,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (20,23,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (21,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (22,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (23,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (24,23,'_menu_item_url','http://meter.local/');
INSERT INTO `wp_postmeta` VALUES (25,23,'_menu_item_orphaned','1581674994');
INSERT INTO `wp_postmeta` VALUES (26,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (27,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (28,24,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (32,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (33,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (35,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (36,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (37,25,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (42,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (45,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (46,26,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (47,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (48,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (49,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (51,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (63,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (64,28,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (67,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (68,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (69,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (70,28,'_menu_item_orphaned','1581674995');
INSERT INTO `wp_postmeta` VALUES (71,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (72,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (73,29,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (76,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (78,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (79,29,'_menu_item_orphaned','1581674995');
INSERT INTO `wp_postmeta` VALUES (80,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (81,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (82,30,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (83,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (84,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (85,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (87,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (88,30,'_menu_item_orphaned','1581674995');
INSERT INTO `wp_postmeta` VALUES (89,32,'_edit_lock','1582210677:1');
INSERT INTO `wp_postmeta` VALUES (90,34,'_edit_lock','1582210695:1');
INSERT INTO `wp_postmeta` VALUES (91,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (92,34,'_wp_trash_meta_time','1582280844');
INSERT INTO `wp_postmeta` VALUES (93,34,'_wp_desired_post_slug','news-2');
INSERT INTO `wp_postmeta` VALUES (94,1,'_edit_lock','1583392518:1');
INSERT INTO `wp_postmeta` VALUES (97,38,'_edit_lock','1582287733:1');
INSERT INTO `wp_postmeta` VALUES (100,40,'_edit_lock','1582541778:1');
INSERT INTO `wp_postmeta` VALUES (104,43,'_edit_lock','1582541784:1');
INSERT INTO `wp_postmeta` VALUES (107,45,'_edit_lock','1582541789:1');
INSERT INTO `wp_postmeta` VALUES (110,47,'_edit_lock','1582542017:1');
INSERT INTO `wp_postmeta` VALUES (113,47,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (114,47,'_wp_trash_meta_time','1582542165');
INSERT INTO `wp_postmeta` VALUES (115,47,'_wp_desired_post_slug','hej-5');
INSERT INTO `wp_postmeta` VALUES (116,45,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (117,45,'_wp_trash_meta_time','1582542166');
INSERT INTO `wp_postmeta` VALUES (118,45,'_wp_desired_post_slug','hej-4');
INSERT INTO `wp_postmeta` VALUES (119,43,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (120,43,'_wp_trash_meta_time','1582542168');
INSERT INTO `wp_postmeta` VALUES (121,43,'_wp_desired_post_slug','hej-3');
INSERT INTO `wp_postmeta` VALUES (122,40,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (123,40,'_wp_trash_meta_time','1582542169');
INSERT INTO `wp_postmeta` VALUES (124,40,'_wp_desired_post_slug','hej-2');
INSERT INTO `wp_postmeta` VALUES (125,38,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (126,38,'_wp_trash_meta_time','1582542170');
INSERT INTO `wp_postmeta` VALUES (127,38,'_wp_desired_post_slug','hej');
INSERT INTO `wp_postmeta` VALUES (128,49,'_edit_lock','1582545884:1');
INSERT INTO `wp_postmeta` VALUES (129,51,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (130,51,'_menu_item_menu_item_parent','54');
INSERT INTO `wp_postmeta` VALUES (131,51,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (132,51,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (133,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (134,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (135,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (136,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (138,52,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (139,52,'_menu_item_menu_item_parent','54');
INSERT INTO `wp_postmeta` VALUES (140,52,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (141,52,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (142,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (143,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (144,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (145,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (147,53,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (148,53,'_menu_item_menu_item_parent','54');
INSERT INTO `wp_postmeta` VALUES (149,53,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (150,53,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (151,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (152,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (153,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (154,53,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (156,54,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (157,54,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (158,54,'_menu_item_object_id','54');
INSERT INTO `wp_postmeta` VALUES (159,54,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (160,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (161,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (162,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (163,54,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (171,1,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (174,58,'_edit_lock','1582729066:1');
INSERT INTO `wp_postmeta` VALUES (182,58,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (183,58,'_wp_trash_meta_time','1583146714');
INSERT INTO `wp_postmeta` VALUES (184,58,'_wp_desired_post_slug','hej');
INSERT INTO `wp_postmeta` VALUES (185,60,'_edit_lock','1583235966:1');
INSERT INTO `wp_postmeta` VALUES (190,60,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (191,60,'_wp_trash_meta_time','1583236028');
INSERT INTO `wp_postmeta` VALUES (192,60,'_wp_desired_post_slug','hej');
INSERT INTO `wp_postmeta` VALUES (197,63,'_edit_lock','1583432430:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-02-09 13:16:50','2020-02-09 13:16:50','<!-- wp:paragraph -->\n<p>Come celebrate the Moon with us on Friday, October 11 from 4-10 pm – two days before the fiery full supermoon in Aries. Artist and designer Line Falk will be showing a series of handcrafted Lunar Plates at meter. This small pop-up is also open Saturday, October 12 between 1 and 4 pm.</p>\n<!-- /wp:paragraph -->','Lunar Celebration – Pop-up exhibition by Line Falk','','publish','open','open','','lunar-celebration-pop-up-exhibition-by-line-falk','','','2020-03-05 07:17:26','2020-03-05 07:17:26','',0,'http://meter.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-02-09 13:16:50','2020-02-09 13:16:50','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://meter.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-02-12 17:35:39','2020-02-12 17:35:39','',0,'http://meter.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-02-09 13:16:50','2020-02-09 13:16:50','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://meter.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-02-12 17:35:34','2020-02-12 17:35:34','',0,'http://meter.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-02-12 17:35:17','2020-02-12 17:35:17','<!-- wp:paragraph -->\n<p>meter is a fluid curatorial platform that pollinates and reworks other art spaces and cultural institutions. Often working in collaboration with others, the focus is securing a mutually beneficial space for learning across disciplines. Therefore meters volume and mass is also varying. Its form is shaped by the collaborations and the project at hand. At meter curating is performative. It is creating a framework based on care for the artwork and its contextualisation, for the artist and their work. But it is equally important to create a caring space for the audience, for their experience and for the dialogues around art, culture and society.<br> meter is characterised by long curatorial and artistic research projects that allow time and space for immersion. Through this we work to create a framework in which we can approach subjects from different perspectives in collaboration with artists, poets, activists, scholars and curators to visualize the multiplicity, the connections, the complexities, the ambivalence, the conflicts, the contradictions and escape deduction, generalisation or conclusion as well as universality, neutrality and objectivity which have been defined within a western epistemology that does not assume itself as a point of view.<br> meter is political. Not partisan but political in the sense that we work actively to challenge our perceptions of the world. We are not anti-western and try to escape all forms of essentialism or fundamentalism. We recognize that so far no one escapes class, sexual, gender, spiritual, linguistic, geographical and racial hierarchies. We always speak from a particular location in the power structures. Knowledge is situated and the project at hand is to listen and learn from each other, be open, generous and not try to necessarily mend differences but acknowledge their presence. <br> meter is run by curator Louise Lassen Iversen.<br> History:<br> From 2017-2019 meter took form as a physical exhibition space. It’s program was characterized by long exhibition periods of between 4-6 months. Each exhibition took its outset from a specific point such as a historical event, an artistic practice or a specific art work, a fictional or factual text, a public debate etc. and developed and grew from there. Consequently the exhibitions were not static, but developed like organisms growing and transforming with time. This generated exhibitions that made space for extension and movement, for adding and subtracting, for regretting or for changing the context in which the individual art works were placed and for approaching them from different perspectives.<br> From 2017-2019 Rie Hovmann Rasmussen was co-director of meter in collaboration with Louise Lassen Iversen.</p>\n<!-- /wp:paragraph -->','About','','publish','closed','closed','','about','','','2020-02-12 17:59:26','2020-02-12 17:59:26','',0,'http://meter.local/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-02-12 17:35:17','2020-02-12 17:35:17','','About','','inherit','closed','closed','','6-revision-v1','','','2020-02-12 17:35:17','2020-02-12 17:35:17','',6,'http://meter.local/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-02-12 17:35:26','2020-02-12 17:35:26','','Press','','publish','closed','closed','','press','','','2020-02-12 17:35:26','2020-02-12 17:35:26','',0,'http://meter.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-02-12 17:35:26','2020-02-12 17:35:26','','Press','','inherit','closed','closed','','8-revision-v1','','','2020-02-12 17:35:26','2020-02-12 17:35:26','',8,'http://meter.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-02-12 17:35:34','2020-02-12 17:35:34','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://meter.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-02-12 17:35:34','2020-02-12 17:35:34','',3,'http://meter.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-02-12 17:35:39','2020-02-12 17:35:39','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://meter.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-02-12 17:35:39','2020-02-12 17:35:39','',2,'http://meter.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-02-12 17:59:26','2020-02-12 17:59:26','<!-- wp:paragraph -->\n<p>meter is a fluid curatorial platform that pollinates and reworks other art spaces and cultural institutions. Often working in collaboration with others, the focus is securing a mutually beneficial space for learning across disciplines. Therefore meters volume and mass is also varying. Its form is shaped by the collaborations and the project at hand. At meter curating is performative. It is creating a framework based on care for the artwork and its contextualisation, for the artist and their work. But it is equally important to create a caring space for the audience, for their experience and for the dialogues around art, culture and society.<br> meter is characterised by long curatorial and artistic research projects that allow time and space for immersion. Through this we work to create a framework in which we can approach subjects from different perspectives in collaboration with artists, poets, activists, scholars and curators to visualize the multiplicity, the connections, the complexities, the ambivalence, the conflicts, the contradictions and escape deduction, generalisation or conclusion as well as universality, neutrality and objectivity which have been defined within a western epistemology that does not assume itself as a point of view.<br> meter is political. Not partisan but political in the sense that we work actively to challenge our perceptions of the world. We are not anti-western and try to escape all forms of essentialism or fundamentalism. We recognize that so far no one escapes class, sexual, gender, spiritual, linguistic, geographical and racial hierarchies. We always speak from a particular location in the power structures. Knowledge is situated and the project at hand is to listen and learn from each other, be open, generous and not try to necessarily mend differences but acknowledge their presence. <br> meter is run by curator Louise Lassen Iversen.<br> History:<br> From 2017-2019 meter took form as a physical exhibition space. It’s program was characterized by long exhibition periods of between 4-6 months. Each exhibition took its outset from a specific point such as a historical event, an artistic practice or a specific art work, a fictional or factual text, a public debate etc. and developed and grew from there. Consequently the exhibitions were not static, but developed like organisms growing and transforming with time. This generated exhibitions that made space for extension and movement, for adding and subtracting, for regretting or for changing the context in which the individual art works were placed and for approaching them from different perspectives.<br> From 2017-2019 Rie Hovmann Rasmussen was co-director of meter in collaboration with Louise Lassen Iversen.</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','6-revision-v1','','','2020-02-12 17:59:26','2020-02-12 17:59:26','',6,'http://meter.local/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-02-12 18:30:20','2020-02-12 18:30:20','','News','','publish','closed','closed','','news','','','2020-02-12 18:30:20','2020-02-12 18:30:20','',0,'http://meter.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-02-12 18:30:20','2020-02-12 18:30:20','','News','','inherit','closed','closed','','13-revision-v1','','','2020-02-12 18:30:20','2020-02-12 18:30:20','',13,'http://meter.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-02-12 18:30:38','2020-02-12 18:30:38','','Projects','','publish','closed','closed','','projects','','','2020-02-12 18:30:38','2020-02-12 18:30:38','',0,'http://meter.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-02-12 18:30:38','2020-02-12 18:30:38','','Projects','','inherit','closed','closed','','15-revision-v1','','','2020-02-12 18:30:38','2020-02-12 18:30:38','',15,'http://meter.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-02-14 08:51:10','2020-02-14 08:51:10','','Future','','publish','closed','closed','','future','','','2020-02-14 08:51:10','2020-02-14 08:51:10','',15,'http://meter.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-02-14 08:51:10','2020-02-14 08:51:10','','Future','','inherit','closed','closed','','17-revision-v1','','','2020-02-14 08:51:10','2020-02-14 08:51:10','',17,'http://meter.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-02-14 08:51:19','2020-02-14 08:51:19','','Current','','publish','closed','closed','','current','','','2020-02-14 08:51:19','2020-02-14 08:51:19','',15,'http://meter.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-02-14 08:51:19','2020-02-14 08:51:19','','Current','','inherit','closed','closed','','19-revision-v1','','','2020-02-14 08:51:19','2020-02-14 08:51:19','',19,'http://meter.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-02-14 08:51:29','2020-02-14 08:51:29','','Past','','publish','closed','closed','','past','','','2020-02-14 08:51:29','2020-02-14 08:51:29','',15,'http://meter.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-02-14 08:51:29','2020-02-14 08:51:29','','Past','','inherit','closed','closed','','21-revision-v1','','','2020-02-14 08:51:29','2020-02-14 08:51:29','',21,'http://meter.local/21-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-02-14 10:09:54','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-02-14 10:09:54','0000-00-00 00:00:00','',0,'http://meter.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-02-14 10:15:13','2020-02-14 10:15:13',' ','','','publish','closed','closed','','24','','','2020-02-25 12:35:30','2020-02-25 12:35:30','',0,'http://meter.local/?p=24',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-02-14 10:15:13','2020-02-14 10:15:13',' ','','','publish','closed','closed','','25','','','2020-02-25 12:35:30','2020-02-25 12:35:30','',0,'http://meter.local/?p=25',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-02-14 10:15:13','2020-02-14 10:15:13',' ','','','publish','closed','closed','','26','','','2020-02-25 12:35:30','2020-02-25 12:35:30','',0,'http://meter.local/?p=26',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-02-14 10:09:55','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-02-14 10:09:55','0000-00-00 00:00:00','',15,'http://meter.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-02-14 10:09:55','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-02-14 10:09:55','0000-00-00 00:00:00','',15,'http://meter.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-02-14 10:09:55','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-02-14 10:09:55','0000-00-00 00:00:00','',15,'http://meter.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-02-20 15:00:13','2020-02-20 15:00:13','','Home','','publish','closed','closed','','home','','','2020-02-20 15:00:13','2020-02-20 15:00:13','',0,'http://meter.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-02-20 15:00:13','2020-02-20 15:00:13','','Home','','inherit','closed','closed','','32-revision-v1','','','2020-02-20 15:00:13','2020-02-20 15:00:13','',32,'http://meter.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-02-20 15:00:30','2020-02-20 15:00:30','','News','','trash','closed','closed','','news-2__trashed','','','2020-02-21 10:27:24','2020-02-21 10:27:24','',0,'http://meter.local/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-02-20 15:00:30','2020-02-20 15:00:30','','News','','inherit','closed','closed','','34-revision-v1','','','2020-02-20 15:00:30','2020-02-20 15:00:30','',34,'http://meter.local/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-02-21 10:28:13','2020-02-21 10:28:13','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lunar Celebration – Pop-up exhibition by Line Falk','','inherit','closed','closed','','1-revision-v1','','','2020-02-21 10:28:13','2020-02-21 10:28:13','',1,'http://meter.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-02-21 10:28:33','2020-02-21 10:28:33','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Come celebrate the Moon with us on Friday, October 11 from 4-10 pm – two days before the fiery full supermoon in Aries. Artist and designer Line Falk will be showing a series of handcrafted Lunar Plates at meter. This small pop-up is also open Saturday, October 12 between 1 and 4 pm.Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lunar Celebration – Pop-up exhibition by Line Falk','','inherit','closed','closed','','1-revision-v1','','','2020-02-21 10:28:33','2020-02-21 10:28:33','',1,'http://meter.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-02-21 12:01:54','2020-02-21 12:01:54','','Hej','','trash','open','open','','hej__trashed','','','2020-02-24 11:02:50','2020-02-24 11:02:50','',0,'http://meter.local/?p=38',0,'post','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-02-21 12:01:54','2020-02-21 12:01:54','','Hej','','inherit','closed','closed','','38-revision-v1','','','2020-02-21 12:01:54','2020-02-21 12:01:54','',38,'http://meter.local/38-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-02-24 10:58:40','2020-02-24 10:58:40','','hej','','trash','open','open','','hej-2__trashed','','','2020-02-24 11:02:49','2020-02-24 11:02:49','',0,'http://meter.local/?p=40',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-02-24 10:58:40','2020-02-24 10:58:40','','hej','','inherit','closed','closed','','40-revision-v1','','','2020-02-24 10:58:40','2020-02-24 10:58:40','',40,'http://meter.local/40-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-02-24 10:58:47','2020-02-24 10:58:47','','hej','','trash','open','open','','hej-3__trashed','','','2020-02-24 11:02:48','2020-02-24 11:02:48','',0,'http://meter.local/?p=43',0,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-02-24 10:58:47','2020-02-24 10:58:47','','hej','','inherit','closed','closed','','43-revision-v1','','','2020-02-24 10:58:47','2020-02-24 10:58:47','',43,'http://meter.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-02-24 10:58:53','2020-02-24 10:58:53','','hej','','trash','open','open','','hej-4__trashed','','','2020-02-24 11:02:46','2020-02-24 11:02:46','',0,'http://meter.local/?p=45',0,'post','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-02-24 10:58:53','2020-02-24 10:58:53','','hej','','inherit','closed','closed','','45-revision-v1','','','2020-02-24 10:58:53','2020-02-24 10:58:53','',45,'http://meter.local/45-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-02-24 10:58:59','2020-02-24 10:58:59','','hej','','trash','open','open','','hej-5__trashed','','','2020-02-24 11:02:45','2020-02-24 11:02:45','',0,'http://meter.local/?p=47',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-02-24 10:58:59','2020-02-24 10:58:59','','hej','','inherit','closed','closed','','47-revision-v1','','','2020-02-24 10:58:59','2020-02-24 10:58:59','',47,'http://meter.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-02-24 11:53:52','2020-02-24 11:53:52','<!-- wp:paragraph -->\n<p>We use cookies when you visit our site, but you can control these through your browser settings. You can find out how to manage cookies on your devices below.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>What are cookies?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cookies are data files that can hold small amounts of info and are stored on your device (computer, smartphone etc) when you first visit a website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>How do we use them?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We use cookies for:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>essential operations, like site navigation</li><li>allowing you to add items to your shopping bag or to your Saved Items</li><li>analysing visitor numbers and behaviours, such as what pages are frequently visited</li><li>assessing the success of our advertising campaigns, offers and communications</li><li>targeting suitable advertising messages</li><li>understanding which Affiliates have helped us reach out to new customers, or have promoted our products on their websites</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>How to manage cookies</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Most browsers allow you to manage cookies saved on your device – just head to the help section of your browser. But don’t forget, if you modify your settings to block all cookies, you may not be able to access parts of our site or our service.</p>\n<!-- /wp:paragraph -->','Private Policy','','publish','closed','closed','','private-policy','','','2020-02-24 11:53:52','2020-02-24 11:53:52','',0,'http://meter.local/?page_id=49',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-02-24 11:53:52','2020-02-24 11:53:52','<!-- wp:paragraph -->\n<p>We use cookies when you visit our site, but you can control these through your browser settings. You can find out how to manage cookies on your devices below.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>What are cookies?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cookies are data files that can hold small amounts of info and are stored on your device (computer, smartphone etc) when you first visit a website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>How do we use them?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We use cookies for:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>essential operations, like site navigation</li><li>allowing you to add items to your shopping bag or to your Saved Items</li><li>analysing visitor numbers and behaviours, such as what pages are frequently visited</li><li>assessing the success of our advertising campaigns, offers and communications</li><li>targeting suitable advertising messages</li><li>understanding which Affiliates have helped us reach out to new customers, or have promoted our products on their websites</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>How to manage cookies</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Most browsers allow you to manage cookies saved on your device – just head to the help section of your browser. But don’t forget, if you modify your settings to block all cookies, you may not be able to access parts of our site or our service.</p>\n<!-- /wp:paragraph -->','Private Policy','','inherit','closed','closed','','49-revision-v1','','','2020-02-24 11:53:52','2020-02-24 11:53:52','',49,'http://meter.local/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-02-25 11:42:42','2020-02-25 11:42:42',' ','','','publish','closed','closed','','51','','','2020-02-25 12:35:30','2020-02-25 12:35:30','',15,'http://meter.local/?p=51',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-02-25 11:42:42','2020-02-25 11:42:42',' ','','','publish','closed','closed','','52','','','2020-02-25 12:35:30','2020-02-25 12:35:30','',15,'http://meter.local/?p=52',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-02-25 11:42:42','2020-02-25 11:42:42',' ','','','publish','closed','closed','','53','','','2020-02-25 12:35:30','2020-02-25 12:35:30','',15,'http://meter.local/?p=53',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-02-25 12:35:30','2020-02-25 12:35:30','','Projects','','publish','closed','closed','','projects','','','2020-02-25 12:35:30','2020-02-25 12:35:30','',0,'http://meter.local/?p=54',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-02-26 07:26:32','2020-02-26 07:26:32','<!-- wp:paragraph -->\n<p>Come celebrate the Moon with us on Friday, October 11 from 4-10 pm – two days before the fiery full supermoon in Aries. Artist and designer Line Falk will be showing a series of handcrafted Lunar Plates at meter. This small pop-up is also open Saturday, October 12 between 1 and 4 pm.</p>\n<!-- /wp:paragraph -->','Lunar Celebration – Pop-up exhibition by Line Falk','','inherit','closed','closed','','1-revision-v1','','','2020-02-26 07:26:32','2020-02-26 07:26:32','',1,'http://meter.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-02-26 12:35:00','2020-02-26 12:35:00','<!-- wp:paragraph -->\n<p>Hej med jer</p>\n<!-- /wp:paragraph -->','Hej','','trash','open','open','','hej__trashed-2','','','2020-03-02 10:58:34','2020-03-02 10:58:34','',0,'http://meter.local/?p=58',0,'post','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-02-26 12:35:00','2020-02-26 12:35:00','<!-- wp:paragraph -->\n<p>Hej med jer</p>\n<!-- /wp:paragraph -->','Hej','','inherit','closed','closed','','58-revision-v1','','','2020-02-26 12:35:00','2020-02-26 12:35:00','',58,'http://meter.local/58-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-03-02 10:58:48','2020-03-02 10:58:48','<!-- wp:paragraph -->\n<p>gdbhdhrdtjjj</p>\n<!-- /wp:paragraph -->','hej','','trash','open','open','','hej__trashed-3','','','2020-03-03 11:47:08','2020-03-03 11:47:08','',0,'http://meter.local/?p=60',0,'post','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-03-02 10:58:48','2020-03-02 10:58:48','<!-- wp:paragraph -->\n<p>gdbhdhrdtjjj</p>\n<!-- /wp:paragraph -->','hej','','inherit','closed','closed','','60-revision-v1','','','2020-03-02 10:58:48','2020-03-02 10:58:48','',60,'http://meter.local/60-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-03-04 16:19:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-03-04 16:19:30','0000-00-00 00:00:00','',0,'http://meter.local/?p=62',0,'post','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-03-05 12:56:51','2020-03-05 12:56:51','<!-- wp:paragraph -->\n<p>ujf8jgd9j9dfm</p>\n<!-- /wp:paragraph -->','hej','','publish','open','open','','hej','','','2020-03-05 17:19:32','2020-03-05 17:19:32','',0,'http://meter.local/?p=63',0,'post','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-03-05 12:56:51','2020-03-05 12:56:51','<!-- wp:paragraph -->\n<p>ujf8jgd9j9dfm</p>\n<!-- /wp:paragraph -->','hej','','inherit','closed','closed','','63-revision-v1','','','2020-03-05 12:56:51','2020-03-05 12:56:51','',63,'http://meter.local/63-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,8,0);
INSERT INTO `wp_term_relationships` VALUES (1,9,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (38,1,0);
INSERT INTO `wp_term_relationships` VALUES (40,1,0);
INSERT INTO `wp_term_relationships` VALUES (43,1,0);
INSERT INTO `wp_term_relationships` VALUES (45,1,0);
INSERT INTO `wp_term_relationships` VALUES (47,1,0);
INSERT INTO `wp_term_relationships` VALUES (51,2,0);
INSERT INTO `wp_term_relationships` VALUES (52,2,0);
INSERT INTO `wp_term_relationships` VALUES (53,2,0);
INSERT INTO `wp_term_relationships` VALUES (54,2,0);
INSERT INTO `wp_term_relationships` VALUES (58,1,0);
INSERT INTO `wp_term_relationships` VALUES (60,3,0);
INSERT INTO `wp_term_relationships` VALUES (63,3,0);
INSERT INTO `wp_term_relationships` VALUES (63,10,0);
INSERT INTO `wp_term_relationships` VALUES (63,12,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','Artist',3,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'post_tag','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Hoved Menu','hoved-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Artist','artist',0);
INSERT INTO `wp_terms` VALUES (8,'Line Falk','line-falk',0);
INSERT INTO `wp_terms` VALUES (9,'Pop-up','pop-up',0);
INSERT INTO `wp_terms` VALUES (10,'hej','hej',0);
INSERT INTO `wp_terms` VALUES (11,'halløj','halloj',0);
INSERT INTO `wp_terms` VALUES (12,'hejmeddig','hejmeddig',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','meter');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"39c7cee784c98332ef19e60f204b6c598ff70776d4b2fe8a97b6e4450cf61751\";a:4:{s:10:\"expiration\";i:1583511569;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1583338769;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','62');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'meter','$P$BtdsPfdPz85s2lkMy7zTc0z8qY2Hu6/','meter','bkj@karitaswebdesign.com','','2020-02-09 13:16:50','',0,'meter');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-05 19:20:41
