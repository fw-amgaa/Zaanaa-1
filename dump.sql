-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` tinyint(4) DEFAULT NULL,
  `parent_id` varchar(0) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `slug` varchar(11) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'',1,'Playground','playground','',''),(4,'',1,'Maintenance','maintenance','',''),(5,'',1,'Training','training','','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` tinyint(4) DEFAULT NULL,
  `data_type_id` tinyint(4) DEFAULT NULL,
  `field` varchar(39) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `display_name` varchar(16) DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `browse` tinyint(4) DEFAULT NULL,
  `read` tinyint(4) DEFAULT NULL,
  `edit` tinyint(4) DEFAULT NULL,
  `add` tinyint(4) DEFAULT NULL,
  `delete` tinyint(4) DEFAULT NULL,
  `details` varchar(208) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'name','text','Name',1,1,1,1,1,1,'',2),(3,1,'email','text','Email',1,1,1,1,1,1,'',3),(4,1,'password','password','Password',1,0,0,1,1,0,'',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'',12),(12,2,'id','number','ID',1,0,0,0,0,0,'',1),(13,2,'name','text','Name',1,1,1,1,1,1,'',2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(16,3,'id','number','ID',1,0,0,0,0,0,'',1),(17,3,'name','text','Name',1,1,1,1,1,1,'',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(21,1,'role_id','text','Role',1,1,1,1,1,1,'',9),(22,4,'id','number','ID',1,0,0,0,0,0,'{}',1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,'{}',4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(29,5,'id','number','ID',1,0,0,0,0,0,'',1),(30,5,'author_id','text','Author',1,0,1,1,0,1,'',2),(31,5,'category_id','text','Category',1,0,1,1,1,0,'',3),(32,5,'title','text','Title',1,1,1,1,1,1,'',4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),(44,6,'id','number','ID',1,0,0,0,0,0,'',1),(45,6,'author_id','text','Author',1,0,0,0,0,0,'',2),(46,6,'title','text','Title',1,1,1,1,1,1,'',3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,'',5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,'',7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,'',8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,'',10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,'',11),(55,6,'image','image','Page Image',0,1,1,1,1,1,'',12),(56,7,'id','number','Id',1,0,0,0,0,0,'{}',1),(57,7,'name','text','Name',1,1,1,1,1,1,'{}',2),(58,7,'description','text_area','Description',0,1,1,1,1,1,'{}',3),(59,7,'unitPriceER','number','UnitPriceER',0,1,1,1,1,1,'{}',4),(60,7,'unitPriceUB','number','UnitPriceUB',0,1,1,1,1,1,'{}',5),(61,7,'size','text','Size',0,1,1,1,1,1,'{}',6),(62,7,'availableSize','text','AvailableSize',0,0,0,1,1,1,'{}',7),(63,7,'discount','number','Discount',0,0,0,1,1,1,'{}',8),(64,7,'unitsInStock','number','UnitsInStock',0,0,1,1,1,1,'{}',9),(65,7,'picture','multiple_images','Picture',1,1,1,1,1,1,'{}',10),(66,7,'product_belongsto_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categories_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(67,7,'created_at','timestamp','Created At',0,1,1,0,1,1,'{}',11),(68,7,'updated_at','timestamp','Updated At',0,1,1,1,1,0,'{}',12),(69,7,'categories_id','text','Categories Id',0,1,1,1,1,1,'{}',13),(77,7,'product_belongsto_type_relationship','relationship','types',0,1,1,1,1,1,'{\"model\":\"App\\\\Type\",\"table\":\"types\",\"type\":\"belongsTo\",\"column\":\"productType_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(78,12,'id','number','Id',1,0,0,0,0,0,'{}',1),(79,12,'name','text','Name',0,1,1,1,1,1,'{}',2),(80,12,'created_at','timestamp','Created At',0,1,1,1,1,1,'{}',3),(81,12,'updated_at','timestamp','Updated At',0,1,1,1,1,1,'{}',4),(82,7,'productType_id','text','ProductType Id',0,0,0,1,1,1,'{}',14),(83,7,'blyat','text','Blyat',0,1,1,1,1,1,'{}',15);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `slug` varchar(11) DEFAULT NULL,
  `display_name_singular` varchar(11) DEFAULT NULL,
  `display_name_plural` varchar(12) DEFAULT NULL,
  `icon` varchar(18) DEFAULT NULL,
  `model_name` varchar(23) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL,
  `generate_permissions` tinyint(4) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `server_side` tinyint(4) DEFAULT NULL,
  `controller` varchar(50) DEFAULT NULL,
  `policy_name` varchar(31) DEFAULT NULL,
  `details` varchar(119) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person', "TCG\\Voyager\\Models\\User",'',1,'','',0,"TCG\\Voyager\\Http\\Controllers\\VoyagerUserController","TCG\\Voyager\\Policies\\UserPolicy",''),(2,'menus','menus','Menu','Menus','voyager-list',"TCG\\Voyager\\Models\\Menu",'',1,'','',0,'','',''),(3,'roles','roles','Role','Roles','voyager-lock',"TCG\\Voyager\\Models\\Role",'',1,'','',0,"TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController",'',''),(4,'categories','categories','Category','Categories','voyager-categories',"App\\Category",'',1,'','',0,'','','{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}'),(5,'posts','posts','Post','Posts','voyager-news',"TCG\\Voyager\\Models\\Post",'',1,'','',0,'',"TCG\\Voyager\\Policies\\PostPolicy",''),(6,'pages','pages','Page','Pages','voyager-file-text',"TCG\\Voyager\\Models\\Page",'',1,'','',0,'','',''),(7,'products','products','Product','Products','voyager-bag',"App\\Product",'',1,'','',0,'','','{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}'),(10,'ProductType','producttype','Producttype','Producttypes','voyager-params',"App\\ProductType",'',1,'','',0,'','','{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"name\"}'),(12,'types','types','Type','Types','voyager-params',"App\\Type",'',1,'','',0,'','','{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` varchar(0) DEFAULT NULL,
  `connection` varchar(0) DEFAULT NULL,
  `queue` varchar(0) DEFAULT NULL,
  `payload` varchar(0) DEFAULT NULL,
  `exception` varchar(0) DEFAULT NULL,
  `failed_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` tinyint(4) DEFAULT NULL,
  `menu_id` tinyint(4) DEFAULT NULL,
  `title` varchar(12) DEFAULT NULL,
  `url` varchar(0) DEFAULT NULL,
  `target` varchar(5) DEFAULT NULL,
  `icon_class` varchar(18) DEFAULT NULL,
  `color` varchar(0) DEFAULT NULL,
  `parent_id` varchar(1) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `route` varchar(24) DEFAULT NULL,
  `parameters` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat','','',1,'','','voyager.dashboard',''),(2,1,'Media','','_self','voyager-images','','',7,'','','voyager.media.index',''),(3,1,'Users','','_self','voyager-person','','',6,'','','voyager.users.index',''),(4,1,'Roles','','_self','voyager-lock','','',5,'','','voyager.roles.index',''),(5,1,'Tools','','_self','voyager-tools','','',10,'','','',''),(6,1,'Menu Builder','','_self','voyager-list','','5',1,'','','voyager.menus.index',''),(7,1,'Database','','_self','voyager-data','','5',2,'','','voyager.database.index',''),(8,1,'Compass','','_self','voyager-compass','','5',3,'','','voyager.compass.index',''),(9,1,'BREAD','','_self','voyager-bread','','5',4,'','','voyager.bread.index',''),(10,1,'Settings','','_self','voyager-settings','','',11,'','','voyager.settings.index',''),(11,1,'Categories','','_self','voyager-categories','','',4,'','','voyager.categories.index',''),(12,1,'Posts','','_self','voyager-news','','',8,'','','voyager.posts.index',''),(13,1,'Pages','','_self','voyager-file-text','','',9,'','','voyager.pages.index',''),(14,1,'Hooks','','_self','voyager-hook','','5',5,'','','voyager.hooks',''),(15,1,'Products','','_self','voyager-bag','','',2,'','','voyager.products.index',''),(20,1,'Types','','_self','voyager-params','','',3,'','','voyager.types.index','');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(5) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','','');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `migration` varchar(63) DEFAULT NULL,
  `batch` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(17,'2017_03_06_000000_add_controller_to_data_types_table',1),(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),(19,'2017_04_21_000000_add_order_to_data_rows_table',1),(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),(21,'2017_08_05_000000_add_group_to_settings_table',1),(22,'2017_11_26_013050_add_user_role_relationship',1),(23,'2017_11_26_015000_create_user_roles_table',1),(24,'2018_03_11_000000_add_user_settings',1),(25,'2018_03_14_000000_add_details_to_data_types_table',1),(26,'2018_03_16_000000_make_settings_value_nullable',1),(27,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` tinyint(4) DEFAULT NULL,
  `author_id` tinyint(4) DEFAULT NULL,
  `title` varchar(11) DEFAULT NULL,
  `excerpt` text,
  `body` text,
  `image` varchar(15) DEFAULT NULL,
  `slug` varchar(11) DEFAULT NULL,
  `meta_description` varchar(20) DEFAULT NULL,
  `meta_keywords` varchar(18) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','','');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` tinyint(4) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(42,1),(43,1),(44,1),(45,1),(46,1),(57,1),(58,1),(59,1),(60,1),(61,1),(67,1),(68,1),(69,1),(70,1),(71,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` tinyint(4) DEFAULT NULL,
  `key` varchar(18) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `table_name` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin','','',''),(2,'browse_bread','','',''),(3,'browse_database','','',''),(4,'browse_media','','',''),(5,'browse_compass','','',''),(6,'browse_menus','','','menus'),(7,'read_menus','','','menus'),(8,'edit_menus','','','menus'),(9,'add_menus','','','menus'),(10,'delete_menus','','','menus'),(11,'browse_roles','','','roles'),(12,'read_roles','','','roles'),(13,'edit_roles','','','roles'),(14,'add_roles','','','roles'),(15,'delete_roles','','','roles'),(16,'browse_users','','','users'),(17,'read_users','','','users'),(18,'edit_users','','','users'),(19,'add_users','','','users'),(20,'delete_users','','','users'),(21,'browse_settings','','','settings'),(22,'read_settings','','','settings'),(23,'edit_settings','','','settings'),(24,'add_settings','','','settings'),(25,'delete_settings','','','settings'),(26,'browse_categories','','','categories'),(27,'read_categories','','','categories'),(28,'edit_categories','','','categories'),(29,'add_categories','','','categories'),(30,'delete_categories','','','categories'),(31,'browse_posts','','','posts'),(32,'read_posts','','','posts'),(33,'edit_posts','','','posts'),(34,'add_posts','','','posts'),(35,'delete_posts','','','posts'),(36,'browse_pages','','','pages'),(37,'read_pages','','','pages'),(38,'edit_pages','','','pages'),(39,'add_pages','','','pages'),(40,'delete_pages','','','pages'),(41,'browse_hooks','','',''),(42,'browse_products','','','products'),(43,'read_products','','','products'),(44,'edit_products','','','products'),(45,'add_products','','','products'),(46,'delete_products','','','products'),(57,'browse_ProductType','','','ProductType'),(58,'read_ProductType','','','ProductType'),(59,'edit_ProductType','','','ProductType'),(60,'add_ProductType','','','ProductType'),(61,'delete_ProductType','','','ProductType'),(67,'browse_types','','','types'),(68,'read_types','','','types'),(69,'edit_types','','','types'),(70,'add_types','','','types'),(71,'delete_types','','','types');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (7,1,1,'This is a dummy post',NULL,'THIS IS HISTORY BLOG. It is a long established fact that a reader will be distracted by the  when at its layout letters.','<p>Hello! This is a dummy text</p>','posts/July2020/MAIx0gSGRJrKa8BVJkfA.png','fak',NULL,NULL,'PUBLISHED',0,'2020-07-22 15:51:31','2020-07-22 20:37:35'),(8,1,1,'Shagai is gonna gevteh in this bitch',NULL,'THIS IS HISTORY BLOG. Can u gevteh Shagai?','<p>This is Shagaig gevtuuleh post</p>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at <strong>Hampden-Sydney</strong> College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numbered List</p>\r\n<ol>\r\n<li>Numbered list 1</li>\r\n<li>Numbered list 2</li>\r\n<li>Numbered list 3</li>\r\n</ol>\r\n<p>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (<em>The Extremes of Good and Evil</em>) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p><strong><img title=\"desc\" src=\"/storage/posts/July2020/58.png\" alt=\"desc\" />This is Bold Text</strong></p>\r\n<p><em>This is Italic</em></p>\r\n<p><strong><em>This is Bold and Italic</em></strong></p>\r\n<p>---------------------- More Lorem Text here -------------------------</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Bullet list 1</li>\r\n<li>Bullet list 2</li>\r\n<li>Bullet list 3</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','posts/July2020/eQOfMyu3KLKxyHvoCDr6.png','shagai-is-gonna-gevteh-in-this-bitch',NULL,NULL,'PUBLISHED',0,'2020-07-22 16:02:10','2020-07-22 20:37:46'),(30,1,1,'ergerg',NULL,NULL,'<p>erg</p>','[]','ergerg',NULL,NULL,'PUBLISHED',0,'2020-07-26 17:05:47','2020-07-26 17:05:47');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` smallint(6) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `unitPriceER` mediumint(9) DEFAULT NULL,
  `unitPriceUB` mediumint(9) DEFAULT NULL,
  `availableSize` varchar(14) DEFAULT NULL,
  `discount` varchar(1) DEFAULT NULL,
  `unitsInStock` smallint(6) DEFAULT NULL,
  `picture` text,
  `created_at` varchar(19) DEFAULT NULL,
  `updated_at` varchar(19) DEFAULT NULL,
  `categories_id` tinyint(4) DEFAULT NULL,
  `productType_id` varchar(0) DEFAULT NULL,
  `blyat` varchar(11) DEFAULT NULL,
  `size` varchar(14) DEFAULT NULL,
  `description` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (12,'B1-规格',30000,34000,'','',50,'[\"products/June2020/hxhzjsDI5Dh3lZ1wQPxp.jpg\"]','0','0',3,'','','360x230x320 CM','Outside playground for children'),(13,'B4-规格',48000,52000,'','',48,'[\"products/June2020/fRLh0QH3mgcA7y65BO9w.jpg\"]','0','2020-06-16 07:12:47',3,'','top','430×230×280cm','Outside playground for children 型号A004'),(14,'G180-6',8450,9750,'','',50,'[\"products/June2020/29a4GLsPHtMlJo7Xkq7g.jpg\",\"products/June2020/CmC0qBH3Al1bO37a6lwx.jpg\"]','0','2020-06-16 07:34:00',3,'','','Unavailable','Playground'),(15,'G098-2',14920,16260,'','',50,'[\"products/June2020/Qk9DYl92FElHpTZHCTYG.png\",\"products/June2020/TKdMX6Hqu04dToLJO3lw.png\"]','0','2020-06-16 07:34:00',3,'','','720*380*350CM','Playground'),(16,'B25-规格',120000,135010,'650×620×320cm','',50,'[\"products/June2020/arWIt4HTeaSfYqAmsqPB.jpg\"]','0','2020-06-16 09:48:25',3,'','','650×620×320cm','Outside playground for children'),(17,'B24-规格',138000,156000,'1350×370×320cm','',50,'[\"products/June2020/6FkkhYRUKFBKb1XNHX3E.jpg\"]','0','2020-06-16 07:12:21',3,'','sales','1350×370×320cm','Outside playground for children'),(18,'B23-规格',138000,156070,'720×580×320cm','',60,'[\"products/June2020/G3NlnrU502Y6CB0VCCDc.jpg\"]','0','2020-06-16 07:35:01',3,'','sales','720×580×320cm','Outside playground for children'),(19,'B22-规格',120000,135600,'580×620×320cm','',6,'[\"products/June2020/riv2BFRh9ClaFE4gBj8Y.jpg\"]','0','2020-06-16 07:13:12',3,'','top','580×620×320cm','Outside playground for children'),(20,'B21-规格',132000,156400,'1100×270×320cm','',16,'[\"products/June2020/m3p6sN5StryqmtP85E2u.jpg\"]','0','2020-06-16 09:48:33',3,'','','1100×270×320cm','Outside Playground for children'),(21,'B20-规格',108000,134300,'950×430×320cm','',4,'[\"products/June2020/vcUqyX0HdTCQKPJxLN8H.jpg\"]','0','2020-06-16 07:12:54',3,'','top','950×430×320cm','Outside Slider Playground for Children to Play'),(22,'B19-规格',82000,96400,'450×270×320cm','',5,'[\"products/June2020/EaP3Xu30aLK63f5c7pgp.jpg\"]','0','2020-06-16 07:12:34',3,'','sales','450×270×320cm','Slider for children'),(23,'B18-规格',42000,48000,'530×230×280cm','',6,'[\"products/June2020/8jMWS8PMTO11aNe8JtaE.jpg\"]','0','0',3,'','','530×230×280cm','Silder for children'),(24,'B17-规格',56000,59800,'550×270×280cm','',15,'[\"products/June2020/36RBE34s7mRqSn93cNgR.jpg\"]','0','0',3,'','','550×270×280cm','Slider for children'),(25,'B16-规格',48000,50560,'','',5,'[\"products/June2020/BZzYvK1ePxrN6aBlvfFM.jpg\"]','0','0',3,'','','620×230×280cm','Playground for children'),(26,'B15-规格',120000,136400,'1020×420×320cm','',54,'[\"products/June2020/w0GYujJDpXHKSo6ZnTBS.jpg\"]','0','0',3,'','','1020×420×320cm','Children for playground'),(27,'B14-规格',31000,33500,'380×230×280cm','',56,'[\"products/June2020/hEbjPOthDaq1OMusig7K.jpg\"]','0','0',3,'','','380×230×280cm','Children Slider Playground'),(28,'B13-规格',60000,61460,'620×300×320cm','',66,'[\"products/June2020/kbZEwb1eDC505IgXik74.jpg\"]','0','0',3,'','','620×300×320cm','Children slider'),(29,'B010',35,39,'9x8cm 45cm','',6,'[\"products/June2020/dqBSiRcIlMIVoHk3c8T7.JPG\"]','0','2020-06-16 09:48:42',3,'','','9x8cm 45cm','Стандарт хангасан сагсан бөмбөгийн шийд'),(30,'TC004',450,508,'','',100,'[\"products/June2020/clY0RgT7fnInFGliZfYv.JPG\",\"products/June2020/iq7g0RgXEDt0Pbc7sTVL.JPG\",\"products/June2020/JXySMLvPTR0CIS4G4mMS.JPG\"]','0','2020-06-23 07:11:08',4,'','maintenance','Unavailable','Ногоон дахин боловсруулдаг дахин боловсруулдаггүй хогийн сав'),(31,'TC003',300,347,'','',100,'[\"products/June2020/A3E21XVYjBTDnGhKmarL.JPG\",\"products/June2020/k3WOPP988IzTtMtXhCue.JPG\"]','0','2020-06-23 07:11:17',4,'','maintenance','Unavailable','Саарал дахин боловсруулдаг дахин боловсруулдаггүй хогийн сав'),(32,'TC002',280,317,'','',80,'[\"products/June2020/zGw3pjQ1bSycrrhud7Nq.JPG\",\"products/June2020/e8ByTfGgwHzLrQgkeIJx.JPG\",\"products/June2020/I5iEQ1bqAp1kXqQCGOD3.JPG\"]','0','2020-06-23 07:11:28',4,'','maintenance','Unavailable','Бор өнгөтэй дахин боловсруулалтийн тасагтай хогийн сав'),(33,'TC001',170,209,'','',100,'[\"products/June2020/t1Wk4LFq2ZHd01pYUFXD.JPG\",\"products/June2020/n0cWUIfStFiiSvtrlDLA.JPG\"]','2020-06-23 15:11:00','2020-06-23 15:11:00',4,'','maintenance','Unavailable','Бор өнгөтэй хогийн сав'),(34,'B014',300,327,'','',100,'[\"products/June2020/0lO8RTzyGLy70UBmVtyH.JPG\"]','0','2020-06-23 07:12:58',4,'','hoop','Unavailable','Стандарт хангасан сагсан бөмбөгийн шийд'),(35,'B013',400,435,'','',100,'[\"products/June2020/YrV1oqV2BKoBWWnsZnAN.JPG\"]','2020-06-23 15:13:00','2020-06-23 15:13:00',4,'','hoop','Unavailable','Стандарт хангасан сагсан бөмбөгийн шийд'),(36,'B009',80,85,'','',100,'[\"products/June2020/qfsGBYXwVxc1RSiAEtAG.JPG\"]','2020-06-23 15:13:00','2020-06-23 07:13:31',4,'','hoop','Unavailable','Стандарт хангасан сагсан бөмбөгийн шийд'),(37,'B004',1200,1340,'','',50,'[\"products/June2020/bFjEjo3xcdxTBRsOXPCh.JPG\"]','2020-06-23 15:13:00','2020-06-23 15:13:00',4,'','hoop','Unavailable','Стандарт хангасан сагсан бөмбөгийн бүтэн шийд'),(38,'B003',1650,1810,'','',65,'[\"products/June2020/TPHHwmJ7FCUfm8yQuI0M.JPG\"]','2020-06-23 15:13:00','2020-06-23 07:13:58',4,'','hoop','Unavailable','Стандарт хангасан сагсан бөмбөгийн бүтэн шийд'),(39,'G178-2',3430,3960,'','',50,'[\"products/June2020/nFLGoQWPB2td3epbtvRX.jpg\"]','0','0',3,'','fb','330*168*210','Outside Slider for Children'),(40,'G178-3',2500,3000,'','',10,'[\"products/June2020/ntOq6oXphx68LXeerN5l.jpg\"]','0','0',3,'','fb','250*70*210','Outside Slider for Children'),(41,'G178-4',4990,5760,'','',10,'[\"products/June2020/0wwDh1Mpm4MmLNeNdnei.jpg\"]','0','0',3,'','fb','490*290*310','Outside Slider for Children'),(42,'G178-5',3800,4600,'','',50,'[\"products/June2020/5uvluGLuzcbLpevOWIhU.jpg\"]','0','0',3,'','fb','370*235*390','Outside Slider for Children'),(43,'G178-6',8359,9650,'750*290*350','',50,'[\"products/June2020/hx6d0byqPqDHzjHfotVL.jpg\"]','0','0',3,'','fb','750*290*350','Outside Slider for Children'),(44,'G179-1',3360,4000,'','',50,'[\"products/June2020/qS6REGmZejvZAbHKwqTu.jpg\"]','0','0',3,'','fb','370*235*280','Outside Slider for Children'),(45,'G179-2',4992,5760,'','',50,'[\"products/June2020/HZgg0sdZE6CstJ2MN2GI.jpg\"]','0','0',3,'','fb','370*235*390','Outside Slider for Children'),(46,'G179-3',3800,4600,'370*235*290','',50,'[\"products/June2020/xgyBCuBbI6GE4so92vL5.jpg\"]','0','0',3,'','fb','370*235*290','Outside Slider for Children'),(47,'G179-4',4980,5750,'550*320*300','',50,'[\"products/June2020/5rtZhmaBWzXHBM8EjMgv.jpg\"]','0','0',3,'','fb','550*320*300','Outside Slider for Children'),(48,'G179-5',3600,4400,'435*200*235','',50,'[\"products/June2020/zlbTiN3Tec21yO0NMpaN.jpg\"]','0','0',3,'','fb','435*200*235','Outside Slider for Children'),(49,'G180-2',3200,4100,'330*130*290','',50,'[\"products/June2020/GuQQXpJ7D81JzRjL7h8V.jpg\"]','0','0',3,'','fb','330*130*290','Outside Slider for Children'),(50,'G180-4',3800,4600,'370*235*235','',50,'[\"products/June2020/YCNGfeRvewFDJd2dkI7v.jpg\"]','0','0',3,'','fb','370*235*235','Outside Slider for Children'),(51,'G180-3',7267,8385,'610*410*310','',50,'[\"products/June2020/jMFm7HvErO71bDdnbZpq.jpg\"]','0','0',3,'','fb','610*410*310','Outside Slider for Children'),(52,'G180-5',5317,6135,'500*290*260','',50,'[\"products/June2020/AOW2kc3TSsDRpB17Ex4g.jpg\"]','2020-06-18 13:33:00','2020-06-18 13:33:00',3,'','fb','500*290*260','Outside Slider for Children'),(53,'G178-1',5577,6435,'','',50,'[\"products/June2020/IJywqOwAOaNSTLFFzdP0.jpg\"]','0','0',3,'','fb','550*290*210','Slider for children'),(54,'G177-5',7527,8500,'570*510*310','',50,'[\"products/June2020/pvTiRt668OcchLE4Hwey.jpg\"]','0','0',3,'','fb','570*510*310','Slider'),(55,'G177-4',12090,13950,'','',50,'[\"products/June2020/CnoJYncB389xkszgDX0W.jpg\"]','0','0',3,'','fb','600*520*300CM','Slider'),(56,'G177-3',5369,6195,'','',50,'[\"products/June2020/35Qs5alu3dtV63Lle5PK.jpg\"]','0','0',3,'','fb','500*290*350CM','Slider'),(57,'G177-2',7200,8300,'750*290*350','',50,'[\"products/June2020/CkzG8ZTfoiwkvSiciepo.jpg\"]','2020-06-18 14:32:00','2020-06-18 14:32:00',3,'','fb','750*290*350','Slider'),(58,'G177-1',8600,9960,'750*290*350','',50,'[\"products/June2020/nDIzc8rLM7rqURILr8eA.jpg\"]','2020-06-18 14:32:00','2020-06-18 14:32:00',3,'','fb','750*290*350','Slider'),(59,'G176-6',5380,6214,'540*230*310','',50,'[\"products/June2020/4UGZTDTl0slF7fsGm6Rv.jpg\",\"products/June2020/o82Xv53gosyCC7KAyAh2.jpg\"]','2020-06-18 14:35:00','2020-06-18 14:35:00',3,'','fb','540*230*310','Slider'),(60,'G176-5',11778,13590,'780*260*380','',76,'[\"products/June2020/PShWi4XDrv74tpEzZZ8z.jpg\",\"products/June2020/yTo40778ASmIlby0IKPY.jpg\"]','2020-06-18 14:36:00','2020-06-18 14:36:00',3,'','fb','780*260*380','Slider'),(61,'G176-4',5700,6600,'400*380*330','',76,'[\"products/June2020/hM6VUZQK8QurS6oa4JwE.jpg\",\"products/June2020/9SJSffbSKALPXtYd2IRS.jpg\"]','2020-06-18 14:37:00','2020-06-18 14:37:00',3,'','fb','400*380*330','Slider'),(62,'G176-3',5300,6100,'550*160*310 CM','',50,'[\"products/June2020/xImX7waVCDyTFRsGy8Tu.jpg\",\"products/June2020/RQmb0AhHzWKkynlYyrC8.jpg\"]','2020-06-18 14:38:00','2020-06-18 14:38:00',3,'','fb','550*160*310 CM','Slider'),(63,'G176-2',5300,6099,'570 280*310','',76,'[\"products/June2020/N26FTzWk4Tp52w2KTai3.jpg\",\"products/June2020/652PBWKXUwFmVgrtBlX2.jpg\"]','2020-06-18 14:41:00','2020-06-18 14:41:00',3,'','fb','570 280*310','Slider'),(64,'G176-1',8177,9435,'640*240*350CM','',76,'[\"products/June2020/tbSCMn7RGIcp9VNGVCBf.jpg\"]','2020-06-18 14:42:00','2020-06-18 14:42:00',3,'','fb','640*240*350CM','Slider'),(65,'G175-6',7000,8160,'550*41*310CM','',76,'[\"products/June2020/3JyXL5IU7FjhJUb4O7KD.jpg\",\"products/June2020/jZHw2ox8F7hpAhNxLmm0.jpg\"]','2020-06-18 14:43:00','2020-06-18 14:43:00',3,'','fb','550*41*310CM','Slider'),(66,'G175-5',8177,9435,'550*400*350','',76,'[\"products/June2020/EsDc7c8SSnHxiRpHu8RZ.jpg\"]','2020-06-18 14:44:00','2020-06-18 14:44:00',3,'','fb','550*400*350','Slider'),(67,'G175-4',5000,6000,'380*260*380','',76,'[\"products/June2020/FRWdaRv4c1D4MSRaPG57.jpg\",\"products/June2020/efjHfnEmMyWXktkoXMDP.jpg\"]','2020-06-18 14:45:00','2020-06-18 14:46:00',3,'','fb','380*260*380','Slider'),(68,'G175-3',4083,4711,'360*240*350','',76,'[\"products/June2020/cHbGOcN7712NYb6r7wsy.jpg\",\"products/June2020/5iNyxAE7FpCPj9mmqm0G.jpg\"]','2020-06-18 14:46:00','2020-06-18 14:46:00',3,'','fb','360*240*350','Slider'),(69,'G175-2',4660,5385,'530*230*310','',76,'[\"products/June2020/XhPyOXhBdLbyZdtjWpez.jpg\",\"products/June2020/KMX8wyyHv1hG3AGgc2Cn.jpg\"]','2020-06-18 15:00:00','2020-06-18 15:00:00',3,'','fb','530*230*310','Slider'),(70,'G175-1',4990,5760,'540*230*350','',76,'[\"products/June2020/gn3m3tjoDhORAfrUwcIV.jpg\",\"products/June2020/En2VAnjQ5XuHwxJzslbH.jpg\"]','2020-06-18 15:05:00','2020-06-18 15:05:00',3,'','fb','540*230*350','Slider'),(71,'G174-6',8242,9510,'700*300*310','',76,'[\"products/June2020/uG985SMkii0vyzSTDM7y.jpg\",\"products/June2020/xtppTbfmB4q27642YpTj.jpg\"]','2020-06-18 15:06:00','2020-06-18 15:06:00',3,'','fb','700*300*310','Slider'),(72,'G174-5',4784,5520,'390*240*300','',76,'[\"products/June2020/2vdHIjGZrMWi0zvyN78u.jpg\",\"products/June2020/mGH5y8jx7eIkhz1Vqagj.jpg\"]','2020-06-18 15:08:00','2020-06-18 15:08:00',3,'','','390*240*300','Slider'),(73,'G174-4',10829,12495,'740*530*360','',76,'[\"products/June2020/oVzCn7a9CNcSu1CSdzhu.jpg\",\"products/June2020/9WfgClzaTtAn16gLZkuA.jpg\"]','2020-06-18 15:09:00','2020-06-18 15:09:00',3,'','','740*530*360','Slider'),(74,'G174-3',4400,5200,'520*300*360','',76,'[\"products/June2020/4U9VvG6AyBX28FcrWHI6.jpg\",\"products/June2020/JuEVYsjqTp6pxTFjbPHB.jpg\"]','2020-06-18 15:11:00','2020-06-18 15:11:00',3,'','','520*300*360','Slider'),(75,'G174-2',14417,16635,'740*530*360','',76,'[\"products/June2020/uaJQ8nCDDuAkiex7fIVT.jpg\",\"products/June2020/P5ROS9uJN9XAy3cQljBm.jpg\"]','2020-06-18 15:12:00','2020-06-18 15:12:00',3,'','','740*530*360','Slider'),(76,'G174-1',5900,6810,'540*240*310','',76,'[\"products/June2020/NrQXdesGhVR2dwa9ApD7.jpg\"]','2020-06-18 15:13:00','2020-06-18 15:13:00',3,'','','540*240*310','Slider'),(77,'G172-2',18330,21150,'600*300*380','',76,'[\"products/June2020/q5fJIGlNSmmNLZmRt5kb.jpg\",\"products/June2020/Mii7XNb4Pb6vZHqgjkbq.jpg\"]','2020-06-18 15:14:00','2020-06-18 15:14:00',3,'','','600*300*380','Slider'),(78,'G172-1',18720,21600,'600*330*380','',76,'[\"products/June2020/5XhnXtsl3c2g0bjZb4Fd.png\",\"products/June2020/SAk4od1aaA1aJHOWznoW.png\"]','2020-06-18 15:15:00','2020-06-18 15:15:00',3,'','','600*330*380','Slider'),(79,'G171-1',17433,20115,'600*300*380','',76,'[\"products/June2020/rm8PqbHujG3fZMKvQkHj.png\",\"products/June2020/nEQF1zdOP2TimkbXhOKi.png\"]','2020-06-18 15:17:00','2020-06-18 15:17:00',3,'','','600*300*380','Slider'),(80,'G170-2',19929,22995,'620*300*380','',76,'[\"products/June2020/yRmPJWROrpmJHZDAQJe3.jpg\",\"products/June2020/fYx4yUgh3FhCHDvdw6Ra.jpg\"]','2020-06-18 15:19:00','2020-06-18 15:19:00',3,'','','620*300*380','Slider'),(81,'G170-1',14729,16995,'620*300*380','',76,'[\"products/June2020/jMu42SSUzn6XxNT0IN0k.jpg\"]','2020-06-18 15:20:00','2020-06-18 15:20:00',3,'','','620*300*380','Slider'),(82,'RH-A26',6890,7685,'750*360*340cm','',50,'[\"products/June2020/B8Hyj6udmuYBd0lSPkmv.png\"]','2020-06-22 14:56:00','2020-06-23 14:06:00',3,'','featured','750*360*340cm','Slider'),(83,'RH-A27',6240,6960,'600*600*275cm','',60,'[\"products/June2020/s40aEvZd01zw0E7LsAHV.png\"]','2020-06-22 14:57:00','2020-06-22 07:30:00',3,'','','600*600*275cm','Slider'),(84,'RH-A28',5720,6400,'630*450*300cm','',50,'[\"products/June2020/fCOMBGI2Z6qFy4R2e5by.png\"]','2020-06-22 15:03:00','2020-06-23 14:06:00',3,'','featured','630*450*300cm','Slider'),(85,'RH-A29',4550,5100,'620*260*270cm','',50,'[\"products/June2020/f2R0CXDmeusdZfctfgOW.png\"]','2020-06-22 15:04:00','2020-06-23 14:05:00',3,'','featured','620*260*270cm','Slider'),(86,'RH-B37',3510,4100,'460*180*330cm','',50,'[\"products/June2020/o0kwMjyecT3Gefo8AHA3.png\"]','0','2020-06-22 07:30:00',3,'','','460*180*330cm','Slider'),(87,'RH-B38',3400,3900,'460*180*300cm','',50,'[\"products/June2020/liGyckVESnl35ACxAs1H.png\"]','2020-06-22 15:05:00','2020-06-22 07:30:00',3,'','','460*180*300cm','S'),(88,'RH-B39',3650,4200,'390*260*300cm','',50,'[\"products/June2020/WOaReJXIjRiOzX00vvv0.png\"]','2020-06-22 15:05:00','2020-06-22 07:30:00',3,'','','390*260*300cm','S'),(89,'RH-B40',3380,3900,'390*260*300cm','',50,'[\"products/June2020/EPrdK4hwUXvXYoIkAUux.png\"]','2020-06-22 15:06:00','2020-06-23 14:05:00',3,'','fea','390*260*300cm','S'),(90,'RH-B41',3380,3900,'390*260*340cm','',40,'[\"products/June2020/1ft2ODWL3X4iSKixmJJD.png\"]','2020-06-22 15:07:00','2020-06-23 14:04:00',3,'','fea','390*260*340cm','S'),(91,'RH-B42',4680,5500,'480*260*340cm','',50,'[\"products/June2020/GBMFcCEqYVGJtYFQaPbj.png\"]','2020-06-22 15:07:00','2020-06-23 14:04:00',3,'','fea','480*260*340cm','S'),(92,'RH-B43',4680,5500,'540*260*330cm','',50,'[\"products/June2020/SNr0gkh2i0ezShoWBmAo.png\"]','2020-06-22 15:08:00','2020-06-23 14:04:00',3,'','fea','540*260*330cm','S'),(93,'RH-B44',4680,5400,'540*260*300cm','',50,'[\"products/June2020/nCOIiULHceV4n8Js4Jnl.png\"]','2020-06-22 15:08:00','2020-06-23 14:04:00',3,'','fea','540*260*300cm','S'),(94,'RH-B45',4200,4800,'540*260*300cm','',50,'[\"products/June2020/5Z2AfzjNQLm2ofugnks8.png\"]','2020-06-22 15:09:00','2020-06-23 14:04:00',3,'','fea','540*260*300cm','S'),(95,'RH-B46',4200,4900,'540*260*300cm','',50,'[\"products/June2020/ayGSASLxn67BIoBVyGMG.png\"]','2020-06-22 15:09:00','2020-06-23 14:03:00',3,'','fea','540*260*300cm','S'),(96,'RH-B47',3900,4600,'390*300*330cm','',50,'[\"products/June2020/7tuIUbTGNTd0CQsQ6etf.png\"]','2020-06-22 15:09:00','2020-06-23 14:03:00',3,'','fea','390*300*330cm','S'),(97,'RH-B48',3800,4400,'510*260*300cm','',50,'[\"products/June2020/uM8s6T0TEGgaz5LAClIF.png\"]','2020-06-22 15:10:00','2020-06-23 14:03:00',3,'','fea','510*260*300cm','S'),(98,'RH-B49',5000,5800,'590*330*300cm','',50,'[\"products/June2020/nAhHKxOHfveFHa4c2M5J.png\"]','2020-06-22 15:10:00','2020-06-23 14:03:00',3,'','fea','590*330*300cm','S'),(99,'RH-B51',4500,5200,'390*530*300cm','',50,'[\"products/June2020/6Wkhu1BZpgKkxiXokz0y.png\"]','2020-06-22 15:11:00','2020-06-23 14:02:00',3,'','fea','390*530*300cm','S'),(100,'RH-B52',3900,4600,'390*280*300cm','',50,'[\"products/June2020/DZIlVF9PZ4sn7mWLMbBd.png\"]','2020-06-22 15:11:00','2020-06-23 14:02:00',3,'','fea','390*280*300cm','S'),(101,'RH-B53',4800,5600,'390*530*300cm','',50,'[\"products/June2020/XUYiCGcgh7BJr9bzL7tA.png\"]','2020-06-22 15:12:00','2020-06-23 14:02:00',3,'','fea','390*530*300cm','S'),(102,'RH-B54',4600,5300,'560*330*330cm','',50,'[\"products/June2020/GmviVnnS5Z3GbrnCjv7l.png\"]','2020-06-22 15:13:00','2020-06-23 14:01:00',3,'','fea','560*330*330cm','S'),(103,'RH-B56',2500,2900,'350*230*300cm','',51,'[\"products/June2020/slNw99xf7Jnip9SMt4Vb.png\"]','2020-06-22 15:13:00','2020-06-23 14:01:00',3,'','fea','350*230*300cm','S'),(104,'RH-B58',7700,8900,'660*330*300cm','',51,'[\"products/June2020/9BrNc6FyROGuDmKUQJNl.png\"]','2020-06-22 15:14:00','2020-06-23 14:01:00',3,'','fea','660*330*300cm','S'),(105,'RH-B59',4200,4800,'540*260*340cm','',41,'[\"products/June2020/VGC7fOLcdIY7fVXL7N25.png\"]','2020-06-22 15:14:00','2020-06-23 14:01:00',3,'','fea','540*260*340cm','S'),(106,'RH-B60',9100,10600,'790*260*340cm','',51,'[\"products/June2020/VQf6ZV4ruAeri9FvbAiZ.png\"]','2020-06-22 15:15:00','2020-06-23 14:00:00',3,'','fea','790*260*340cm','S'),(107,'RH-B61',8600,9800,'700*340*340cm','',51,'[\"products/June2020/AfhTEtpdZ1wla2inDuLi.png\"]','2020-06-22 15:16:00','2020-06-23 14:00:00',3,'','fea','700*340*340cm','S'),(108,'RH-B62',5500,6400,'460*370*340cm','',51,'[\"products/June2020/ae43PkMqTz7zicWEIIzl.png\"]','2020-06-22 15:16:00','2020-06-23 14:00:00',3,'','fea','460*370*340cm','S'),(109,'RH-B63',12800,15000,'880*380*460cm','',51,'[\"products/June2020/KYNkK4NuaaDGLE6in6if.png\"]','2020-06-22 15:17:00','2020-06-23 14:00:00',3,'','fee','880*380*460cm','S'),(110,'RH-B64',9700,11300,'770*440*330cm','',51,'[\"products/June2020/g96kv0eKfuud8GD1bMes.png\"]','2020-06-22 15:17:00','2020-06-23 14:00:00',3,'','fee','770*440*330cm','sS'),(111,'RH-B65',11000,12900,'660*620*460cm','',51,'[\"products/June2020/gQnnJuaTPRS23cwDGjIy.png\"]','2020-06-22 15:18:00','2020-06-23 13:59:00',3,'','fee','660*620*460cm','SS'),(112,'RH-B66',7200,8400,'580*490*300cm','',51,'[\"products/June2020/6HaBsPmbS0hz3BB659tg.png\"]','2020-06-22 15:18:00','2020-06-23 13:58:00',3,'','fee','580*490*300cm','S'),(113,'RH-B67',17000,19000,'1000*650*460cm','',51,'[\"products/June2020/8wZqIjeNBb9AkTd48SwR.png\"]','2020-06-22 15:19:00','2020-06-23 13:58:00',3,'','fee','1000*650*460cm','S'),(114,'RH-B68',7700,8900,'580*390*340cm','',51,'[\"products/June2020/V7TEdDv8xEo7sLwz1vW7.png\"]','2020-06-22 15:19:00','2020-06-23 13:58:00',3,'','fee','580*390*340cm','S'),(115,'RH-B70',2900,3400,'390*260*340cm','',51,'[\"products/June2020/m95Ru9abLmm9aweUSRrl.png\"]','2020-06-22 15:20:00','2020-06-23 13:58:00',3,'','fee','390*260*340cm','S'),(116,'RH-B71',4600,5300,'620*460*340cm','',51,'[\"products/June2020/urKIHQrJWnI85kiVnSRk.png\"]','2020-06-22 15:20:00','2020-06-23 13:58:00',3,'','fee','620*460*340cm','S'),(117,'RH-B72',5200,6100,'490*330*340cm','',51,'[\"products/June2020/UbuVCvwd2gPVbSTolh7r.png\"]','2020-06-22 15:21:00','2020-06-23 13:57:00',3,'','fee','490*330*340cm','S'),(118,'RH-B73',5850,6750,'640*260*340cm','',51,'[\"products/June2020/1Ua9bkNknhSFEMFqpE63.png\"]','2020-06-22 15:21:00','2020-06-23 13:57:00',3,'','faa','640*260*340cm','S'),(119,'RH-B74',14400,17000,'950*420*460cm','',51,'[\"products/June2020/Jw6PnNMaFsQMdnSUfw7k.png\"]','2020-06-22 15:22:00','2020-06-23 13:57:00',3,'','faa','950*420*460cm','S'),(120,'RH-B75',9500,11000,'820*260*340','',51,'[\"products/June2020/un7n88h9WIvrIBBTcLMW.png\"]','2020-06-22 15:22:00','2020-06-23 13:56:00',3,'','faa','820*260*340','S'),(121,'RH-B76',5500,6500,'660*260*340','',50,'[\"products/June2020/rg99QcBl6Q9O8YObzPvp.png\"]','2020-06-22 15:22:00','2020-06-23 13:56:00',3,'','faa','660*260*340','S'),(122,'RH-B77',11000,12100,'800*310*340cm','',51,'[\"products/June2020/Vxe9AjmOzKdJFV65RdbA.png\"]','2020-06-22 15:23:00','2020-06-23 13:56:00',3,'','faa','800*310*340cm','S'),(123,'RH-B78',4500,5200,'610*260*340','',51,'[\"products/June2020/GxEvW7WQHMwxxz6WFAKO.png\"]','2020-06-22 15:23:00','2020-06-23 13:56:00',3,'','faa','610*260*340','S'),(124,'RH-C12',8900,10000,'660*330*330cm','',51,'[\"products/June2020/vlFTw4QU9Y3STevSd9X6.png\"]','2020-06-22 15:24:00','2020-06-23 13:55:00',3,'','faa','660*330*330cm','S'),(125,'RH-C13',18300,21000,'900*420*460cm','',51,'[\"products/June2020/WFOs0YuCBoPTgwcEICrF.png\"]','2020-06-22 15:24:00','2020-06-23 13:55:00',3,'','faa','900*420*460cm','S'),(126,'RH-C14',19800,22500,'1000*670*460cm','',49,'[\"products/June2020/MT2b6GqptZwWqSVTno7G.png\"]','2020-06-22 15:25:00','2020-06-23 13:55:00',3,'','faa','1000*670*460cm','S'),(127,'RH-C15',8400,9600,'660*260*340cm','',51,'[\"products/June2020/fi1qILgRgxWcjgA0nSIG.png\"]','2020-06-22 15:25:00','2020-06-23 13:55:00',3,'','faa','660*260*340cm','S'),(128,'RH-C16',11500,13200,'800*310*340cm','',51,'[\"products/June2020/UQv6w6m2CFDHZSp8uxpM.png\"]','2020-06-22 15:25:00','2020-06-23 13:53:00',3,'','faa','800*310*340cm','S'),(129,'RH-C17',8100,9300,'640*330*340cm','',51,'[\"products/June2020/bGG9ojjewayUcmJDK95u.png\"]','2020-06-22 15:26:00','2020-06-23 13:53:00',3,'','faa','640*330*340cm','S'),(130,'RH-C18',14500,16500,'840*580*460cm','',51,'[\"products/June2020/kgTOOW1bfFn6D9ejnLh8.png\"]','2020-06-22 15:26:00','2020-06-23 13:52:00',3,'','faa','840*580*460cm','S'),(131,'RH-C19',13300,15000,'1150*430*340cm','',51,'[\"products/June2020/rquRE9tNW6bfa8InYpSR.png\"]','2020-06-22 15:27:00','2020-06-23 13:51:00',3,'','faa','1150*430*340cm','S'),(132,'RH-C20',26000,30000,'1200*700*460cm','',51,'[\"products/June2020/p3oGxC5kwzyEO15XTP1L.png\"]','2020-06-22 15:27:00','2020-06-23 13:50:00',3,'','faa','1200*700*460cm','S'),(133,'RH-21',18000,20400,'1100*680*460cm','',51,'[\"products/June2020/3ZsOqVRv3l9RfbWs4oar.png\"]','2020-06-22 15:27:00','2020-06-23 14:07:00',3,'','faa','1100*680*460cm','S'),(134,'Training Wheel',0,0,'','0',0,'[\"products/June2020/vcXedtuzWSLnSEtYz2bj.JPG\",\"products/June2020/7w8uHGI5N2wQA9MfF1Dm.JPG\",\"products/June2020/WYKPlVsJbH9tXrOv6Xvj.JPG\",\"products/June2020/9arFDQdfDhQR65FH9z8Z.JPG\",\"products/June2020/WMKjDMO711CN9gcwaQzz.JPG\"]','2020-06-23 15:33:00','2020-06-23 15:33:00',5,'','','0','Very goy wheel'),(135,'Training Wheel #2',0,0,'','',0,'[\"products/June2020/nFpU0JKFc9uqOWhp4Rlt.JPG\",\"products/June2020/PuWKrIxxErA97b1JGkJT.JPG\",\"products/June2020/jZRI2WWvfDIQPDN8ShOZ.JPG\",\"products/June2020/4CbvnIsJd1LigelebyqA.JPG\"]','2020-06-23 15:33:00','2020-06-23 15:33:00',5,'','','0','Wheel'),(136,'Swing',0,0,'','',0,'[\"products/June2020/NKc13YzvksT9YGEVe6Uc.jpg\",\"products/June2020/6e5M8qP6s46CLLpru4Wo.jpg\",\"products/June2020/EK87XRhXojzkTA0Xl2Wg.jpg\",\"products/June2020/M3QMgQxmOdjbbgjYDVQk.jpg\",\"products/June2020/j0d6YKLOyMgLtg3Omrvp.jpg\",\"products/June2020/63bHtWph3G2g75focV6N.jpg\",\"products/June2020/uf06dNm4qLGOkNy7sPTI.jpg\",\"products/June2020/BuOvQLuQkO4dr290S3mu.jpg\",\"products/June2020/adVbiUV714jpneo6ZOcR.jpg\",\"products/June2020/BtbHgekTabYMU9KF9q2K.jpg\",\"products/June2020/VU6JM9S7lgIFGRlp6aqk.jpg\"]','2020-06-23 15:34:00','2020-06-23 15:34:00',3,'','','0','Swing'),(137,'Swing #2',0,0,'','',0,'[\"products/June2020/rGmk9KHgvqxFlHBWhfMH.JPG\",\"products/June2020/U5UlVPyhz6DtazsATdhF.JPG\",\"products/June2020/xyhTtxcv3Ogvihlewojy.JPG\",\"products/June2020/GKjl20jWuuEATZxkPQ84.JPG\",\"products/June2020/GXEuvWJP5gOphtjnPOFX.JPG\"]','2020-06-23 15:35:00','2020-06-23 15:35:00',3,'','','0','2nd type of swing for outside decoration'),(138,'Swing #3',0,0,'','',0,'[\"products/June2020/rYFUYZGOqOPATGLGdh3C.JPG\",\"products/June2020/HGF31gNHBFsuQTqQhP8G.JPG\",\"products/June2020/3lOPteFdmBTkbWp9wc9y.JPG\",\"products/June2020/y4pZhR6qEjHrIpsC1fmR.JPG\",\"products/June2020/7dtB9caG3HQzTxnknK02.JPG\",\"products/June2020/z07gaVn0gabIJiw2Owjv.JPG\",\"products/June2020/OyEmXPTVKuCK1mwXjR2f.JPG\",\"products/June2020/DCanCFQMwuCusMqZqB40.JPG\"]','2020-06-23 15:36:00','2020-06-23 15:36:00',5,'','','0','3rd type of swing'),(139,'Pull-up bar',0,0,'','',0,'[\"products/June2020/V3YTBnJjrRlC0XMl5hqj.JPG\",\"products/June2020/BFfa06P5sS7LL82cwOmW.JPG\",\"products/June2020/wAecbv3Xykm8RdnkxFWp.JPG\",\"products/June2020/MNN6c0cjfh3GnOXSdBI6.JPG\",\"products/June2020/eQ4hIMHnQocKzAkxVxGi.JPG\",\"products/June2020/PToFJ5I1KW0SXroohsnN.JPG\",\"products/June2020/m6lQPWOQTDoMgn8wIUda.JPG\",\"products/June2020/IhGj1GFu0y3bU4l6hhVy.JPG\",\"products/June2020/NWxCHP0WJJ16IL0jEvZz.JPG\"]','2020-06-23 15:37:00','2020-06-23 15:37:00',5,'','','0','Outside Pull-up bar'),(140,'Pull-up Seat',0,0,'0','',0,'[\"products/June2020/KasDyloOOigB9AbmPm7T.jpg\",\"products/June2020/VxhYm8r0TEIZuWB3QnCC.jpg\",\"products/June2020/mq1Coqczce0A7nfQikAd.JPG\",\"products/June2020/FpzLB2zzCzJZYVOPNfpF.JPG\",\"products/June2020/4dDJWic8wBZsKMMOt9MS.JPG\"]','2020-06-23 15:39:00','2020-06-23 15:39:00',5,'','','0','Pull-up with a seat for training outside'),(141,'Running equipment',0,0,'','',0,'[\"products/June2020/epQvjURQjGuDVhasYrEY.jpg\",\"products/June2020/UQ0Nk3vZgjrRXq49ZzyL.jpg\",\"products/June2020/dMWPflgJHIxKiKF9mfgu.jpg\",\"products/June2020/IltVVYluq1FkEnEAjWa9.jpg\",\"products/June2020/unBAfIRnOVqsTs7jwyKT.jpg\"]','2020-06-23 15:41:00','2020-06-23 15:41:00',5,'','','0','Training'),(142,'Running equipment #2',0,0,'','',0,'[\"products/June2020/8A5sYZvDToRMIUSqh79p.JPG\",\"products/June2020/E6zQR8pME8lysYUeWJWT.JPG\",\"products/June2020/Pp6gjCDbAHS0auGV2AOi.JPG\",\"products/June2020/BLR8r0FWDIIyp9DiPfBp.JPG\",\"products/June2020/gOORHGHx5xzRru6o8nMW.JPG\"]','2020-06-23 15:42:00','2020-06-23 15:42:00',5,'','','0','Training'),(143,'Waistfat burner',0,0,'','',0,'[\"products/June2020/hqQOnKVivjmXPOkD76JK.jpg\",\"products/June2020/AXzFeyF3ANeFjMQ1746c.jpg\",\"products/June2020/0C5cvRIRLrY95x0kVLZx.jpg\",\"products/June2020/fpDNolu3P06gpm05BXdC.jpg\"]','2020-06-23 15:43:00','2020-06-23 15:43:00',5,'','','0','Training'),(144,'Waistfat burner #2',0,0,'','',0,'[\"products/June2020/ZwxZFQEY3pU5x3v8Hn1x.JPG\",\"products/June2020/jn6DfHlyybeD1lhkihnJ.JPG\",\"products/June2020/D98HpUr4IGoTp85bpjC1.JPG\",\"products/June2020/tBHk4KgnJHMSGpavjuOA.JPG\"]','2020-06-23 15:44:00','2020-06-23 15:44:00',5,'','','0','Training'),(145,'Waistfat burner #3',0,0,'','',0,'[\"products/June2020/O2MS9imnYJJvuu0ysz5F.JPG\",\"products/June2020/m1ZqmF9vVreuaEw1Ovf5.JPG\",\"products/June2020/73pglWhE2G9PY3vMLlo2.JPG\",\"products/June2020/P0o4gR7hvU8z2l9YMD8f.JPG\",\"products/June2020/uByo4t3ZyZxKf6VN4Xg5.JPG\"]','2020-06-23 15:44:00','2020-06-23 15:44:00',5,'','','0','Training'),(146,'Leg trainer',0,0,'','',0,'[\"products/June2020/0Q1676RbGnnbaZYnILu2.JPG\",\"products/June2020/Kq6fDA8urmm2CQzxlGsP.JPG\",\"products/June2020/CxiTonrccZvDitlz9DT2.JPG\",\"products/June2020/UlsJFd6AkQBOunvcn2t6.JPG\",\"products/June2020/k4zukiJvPZfrzlgN4qn1.JPG\"]','2020-06-23 15:45:00','2020-06-23 15:45:00',5,'','','0','Training'),(147,'Chess Table',0,0,'','',0,'[\"products/June2020/rOfV1Qtaa2oDT7kXHKIh.JPG\",\"products/June2020/oApxOePX0a1T3e1KmriP.JPG\",\"products/June2020/CuADXiE7GdBx1oMzMhk3.JPG\",\"products/June2020/pPRGTgoTBU3oUoMS8KKK.JPG\"]','2020-06-23 15:46:00','2020-06-23 15:46:00',4,'','','0','Outside decoration'),(148,'Chess Table #2',0,0,'','',0,'[\"products/June2020/zgYiRtBaxSyPB9TiSNbf.jpg\",\"products/June2020/Ew4r8IhWM5RCOXtgZ3Dm.jpg\",\"products/June2020/1KYivggKHx8ofhXjc4VC.jpg\"]','2020-06-23 15:47:00','2020-06-23 15:47:00',4,'','','0','Outside Decoration'),(149,'Seesaw',0,0,'','',0,'[\"products/June2020/jfD3mqwuZdKomUKH30cE.jpg\",\"products/June2020/6pr9x55RXTnt9bFdznli.jpg\",\"products/June2020/wmVm5Z2oh5jaPyVWLauG.jpg\",\"products/June2020/jzMnTWDx08xyeRUzw3K5.jpg\",\"products/June2020/OmQhad1kkDHZiZAOQUx3.jpg\",\"products/June2020/ClDWW9x4RRC5NfycdHV6.jpg\",\"products/June2020/BbpDBfiedHrIiqyl4VPI.jpg\"]','2020-06-23 15:52:00','2020-06-23 15:52:00',3,'','','0','Outside seesaw'),(150,'Weight Bar',0,0,'','',-1,'[\"products/June2020/HNNSkL61Hp47l3Vu9RCP.jpg\",\"products/June2020/oDB0t6TVQkRFpZKETxIB.jpg\",\"products/June2020/U2L4pgMtgq6o9kEYAyYj.jpg\",\"products/June2020/ncZ5LjpmY1pk8Ka7tsJF.jpg\",\"products/June2020/hOuophjyaBq5kVTbf33m.jpg\",\"products/June2020/UqPAgPj9vbg08vADGhwW.jpg\",\"products/June2020/qvfyFeqMNJnKbZClFWpC.jpg\"]','2020-06-23 15:54:00','2020-06-23 15:54:00',5,'','','0','Training'),(151,'Running equipment #3',0,0,'','',0,'[\"products/June2020/VsacmsupLBeXcDUlOhqE.jpg\",\"products/June2020/DJUQf0G8Kb8ZLuzElmSY.jpg\",\"products/June2020/9LzqqPwcysV670MG5HER.jpg\",\"products/June2020/cU64GXaSRLolmvWDufaC.jpg\",\"products/June2020/F8S6YEMqhAURFbA2xPkE.jpg\",\"products/June2020/3Z3Hia3jo4OjOrKjZG1G.jpg\",\"products/June2020/Xe1zwKc9KxgGJgTOc853.jpg\"]','2020-06-23 15:55:00','2020-06-23 15:55:00',5,'','','0','Training');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(5) DEFAULT NULL,
  `display_name` varchar(13) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','',''),(2,'user','Normal User','','');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(12) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('migrations',27),('permissions',71),('posts',4),('users',3),('settings',10),('data_types',12),('data_rows',83),('menus',1),('menu_items',20),('roles',2),('categories',5),('pages',1),('translations',30),('types',3),('products',152);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` tinyint(4) DEFAULT NULL,
  `table_name` varchar(10) DEFAULT NULL,
  `column_name` varchar(21) DEFAULT NULL,
  `foreign_key` tinyint(4) DEFAULT NULL,
  `locale` varchar(2) DEFAULT NULL,
  `value` text,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','',''),(2,'data_types','display_name_singular',6,'pt','Página','',''),(3,'data_types','display_name_singular',1,'pt','Utilizador','',''),(4,'data_types','display_name_singular',4,'pt','Categoria','',''),(5,'data_types','display_name_singular',2,'pt','Menu','',''),(6,'data_types','display_name_singular',3,'pt','Função','',''),(7,'data_types','display_name_plural',5,'pt','Posts','',''),(8,'data_types','display_name_plural',6,'pt','Páginas','',''),(9,'data_types','display_name_plural',1,'pt','Utilizadores','',''),(10,'data_types','display_name_plural',4,'pt','Categorias','',''),(11,'data_types','display_name_plural',2,'pt','Menus','',''),(12,'data_types','display_name_plural',3,'pt','Funções','',''),(13,'categories','slug',1,'pt','categoria-1','',''),(14,'categories','name',1,'pt','Categoria 1','',''),(15,'categories','slug',2,'pt','categoria-2','',''),(16,'categories','name',2,'pt','Categoria 2','',''),(17,'pages','title',1,'pt','Olá Mundo','',''),(18,'pages','slug',1,'pt','ola-mundo','',''),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','',''),(20,'menu_items','title',1,'pt','Painel de Controle','',''),(21,'menu_items','title',2,'pt','Media','',''),(22,'menu_items','title',12,'pt','Publicações','',''),(23,'menu_items','title',3,'pt','Utilizadores','',''),(24,'menu_items','title',11,'pt','Categorias','',''),(25,'menu_items','title',13,'pt','Páginas','',''),(26,'menu_items','title',4,'pt','Funções','',''),(27,'menu_items','title',5,'pt','Ferramentas','',''),(28,'menu_items','title',6,'pt','Menus','',''),(29,'menu_items','title',7,'pt','Base de dados','',''),(30,'menu_items','title',10,'pt','Configurações','','');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(8) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Featured','',''),(2,'Onsale','',''),(3,'Toprated','','');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` tinyint(4) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,1),(3,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL,
  `email` varchar(16) DEFAULT NULL,
  `email_verified_at` varchar(0) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `remember_token` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `avatar` varchar(17) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `settings` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Zaanaa','zaanaa@gmail.com','','$2y$10$0e7Vd/V2eNnb7zrvIbMSlesXQk/oz9Rq3xg/uR3IP0uM35Ai5lBje','','','','users/default.png',1,'{\"locale\":\"zh_CN\"}'),(3,'Amgaa','amgaa@gmail.com','','$2y$10$8NO4Tx7JbgjNNZF8UKRgMeS4OiYe0ju8bJGgQEh4sZxJQA.5rjIkS','','','','users/default.png',1,'{\"locale\":\"en\"}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-02 17:56:32
