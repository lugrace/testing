# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.18)
# Database: hatchapps_v2
# Generation Time: 2017-09-22 14:31:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table analytics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `analytics`;

CREATE TABLE `analytics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `app_id` int(11) DEFAULT '0',
  `object_id` int(11) DEFAULT '0',
  `for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `question_id` int(11) DEFAULT '0',
  `question_blueprint` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table app_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_users`;

CREATE TABLE `app_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;

INSERT INTO `app_users` (`id`, `app_id`, `user_id`, `role`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'1',1,'',1,'2017-06-26 19:24:27','2017-06-26 19:24:27'),
	(2,'2',1,'',1,'2017-07-24 17:32:55','2017-07-24 17:32:55'),
	(3,'3',2,'APP_ADMIN',1,'2017-07-31 13:48:35','2017-07-31 13:48:35'),
	(4,'4',4,'APP_ADMIN',1,'2017-08-02 13:41:40','2017-08-02 13:41:40'),
	(5,'5',2,'APP_ADMIN',1,'2017-08-02 21:21:56','2017-08-02 21:21:56'),
	(6,'6',2,'APP_ADMIN',1,'2017-08-02 21:22:14','2017-08-02 21:22:14'),
	(7,'7',3,'APP_ADMIN',1,'2017-08-03 16:32:43','2017-08-03 16:32:43'),
	(8,'8',3,'APP_ADMIN',1,'2017-08-04 14:56:15','2017-08-04 14:56:15'),
	(9,'9',3,'APP_ADMIN',1,'2017-08-04 16:39:19','2017-08-04 16:39:19'),
	(10,'10',2,'APP_ADMIN',1,'2017-08-07 18:28:38','2017-08-07 18:28:38'),
	(11,'11',3,'APP_ADMIN',1,'2017-08-08 13:28:14','2017-08-08 13:28:14'),
	(12,'12',5,'APP_ADMIN',1,'2017-08-08 20:32:16','2017-08-08 20:32:16'),
	(13,'13',5,'APP_ADMIN',1,'2017-08-10 13:50:26','2017-08-10 13:50:26'),
	(14,'12',6,'APP_USER',1,'2017-08-10 21:04:31','2017-08-10 21:04:31'),
	(15,'14',5,'APP_ADMIN',1,'2017-08-10 22:29:19','2017-08-10 22:29:19'),
	(16,'14',7,'APP_USER',1,'2017-08-10 22:30:11','2017-08-10 22:30:11'),
	(17,'15',3,'APP_ADMIN',1,'2017-09-13 19:44:58','2017-09-13 19:44:58');

/*!40000 ALTER TABLE `app_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table apps
# ------------------------------------------------------------

DROP TABLE IF EXISTS `apps`;

CREATE TABLE `apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_id` int(11) NOT NULL DEFAULT '0',
  `app_category_id` int(11) NOT NULL DEFAULT '0',
  `design` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_id` int(11) NOT NULL DEFAULT '0',
  `style_id` int(11) NOT NULL DEFAULT '0',
  `app_name_official` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `app_name_short` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `app_description` text COLLATE utf8mb4_unicode_ci,
  `terms_and_conditions` text COLLATE utf8mb4_unicode_ci,
  `primary_cateogry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `app_owner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `web_app_status` tinyint(1) NOT NULL DEFAULT '0',
  `app_store_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `app_store_status` tinyint(1) NOT NULL DEFAULT '0',
  `play_store_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `play_store_status` tinyint(1) NOT NULL DEFAULT '0',
  `web_app_updated_at` datetime DEFAULT NULL,
  `ios_app_updated_at` datetime DEFAULT NULL,
  `android_app_updated_at` datetime DEFAULT NULL,
  `is_auto_approved_submissions` int(11) DEFAULT '0',
  `is_auto_disabled_submissions` int(11) DEFAULT '0',
  `number_of_flags_to_disable_submissions` int(11) DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;

INSERT INTO `apps` (`id`, `name`, `sub_domain`, `template_id`, `app_category_id`, `design`, `status`, `created_at`, `updated_at`, `color_id`, `style_id`, `app_name_official`, `app_name_short`, `app_description`, `terms_and_conditions`, `primary_cateogry`, `keywords`, `website`, `app_owner`, `web_app_status`, `app_store_url`, `app_store_status`, `play_store_url`, `play_store_status`, `web_app_updated_at`, `ios_app_updated_at`, `android_app_updated_at`, `is_auto_approved_submissions`, `is_auto_disabled_submissions`, `number_of_flags_to_disable_submissions`)
VALUES
	(10,'Grace \'s App','grace',1,1,'{\"global_settings\":{\"logo\":\"\",\"button\":{\"radius\":\"9\",\"height\":\"55\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"primary_button\":{\"background_color\":\"#15BDC1\",\"text_color\":\"#ffffff\"},\"secondary_button\":{\"background_color\":\"#34CE8B\",\"text_color\":\"#ffffff\"},\"label\":{\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"icon\":{\"foreground_color\":\"#c3c2c2\",\"background_color\":\"#34ce8b\",\"icon_set\":\"outlined\",\"size\":\"medium\"},\"background_color\":\"#FFFFFF\",\"header\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#0031ff\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"text\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}},\"login\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\",\"icon_color\":\"#bc0b0b\",\"icon_background_color\":\"#1616da\",\"sub_header_status\":true,\"sub_header\":\"hjhhjhjasdhhaasdasdasdasdasdasd<\",\"sub_header_color\":\"#02bd00\",\"sub_header_background_color\":\"#FFFFFF\",\"header_foreground_color\":\"#ff0000\",\"header_background_color\":\"#8d74d0\"},\"input\":{\"email\":{\"status\":true,\"type\":\"email\",\"label\":\"Email address\",\"placeholder\":\"abc@xyz.comaadsfasdf\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"password\":{\"status\":true,\"type\":\"password\",\"label\":\"Password\",\"placeholder\":\"\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"buttons\":{\"login\":{\"status\":true,\"label\":\"hhjhjhjhjhjjljj=hkj\",\"background_color\":\"#250e62\",\"text_color\":\"#d40000\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"signup\":{\"status\":true,\"type\":\"password\",\"label\":\"Register\",\"background_color\":\"#ce34b5\",\"text_color\":\"#002ba1\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"link\":{\"status\":true,\"text\":\"Forgot Password?\",\"text_color\":\"#515152\",\"hyperlink\":\"\",\"text_size\":12,\"font_style\":\"arial\"}},\"explore\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\",\"video\":{\"favorite_icon\":\"\",\"not_favorite_icon\":\"\",\"filter_icon\":\"\",\"video_upload_icon\":\"\",\"number_of_videos_per_row\":\"2\",\"spacing_between_videos\":5,\"favorite_text_style\":{\"font_size\":15,\"text_color\":\"#eeeeee\",\"font_weight\":\"bold\",\"underline\":false,\"italic\":false}}},\"input\":{\"search\":{\"status\":true,\"type\":\"text\",\"placeholder\":\"Search...\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"play_button\":{\"size\":\"80\"},\"tabs\":{\"tab1\":{\"status\":true,\"label\":\"All Videos\",\"text_color\":\"#34CE8B\"},\"tab2\":{\"status\":true,\"label\":\"My Favorites\",\"text_color\":\"#34CE8B\"},\"tab3\":{\"status\":true,\"label\":\"My Videos\",\"text_color\":\"#34CE8B\"}}},\"menu\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"list_selected_color\":\"#979797\",\"list_unselected_color\":\"#FFFFFF\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"list_items\":{\"item1\":{\"status\":true,\"label\":\"Explore\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item2\":{\"status\":true,\"label\":\"Record your story\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item3\":{\"status\":true,\"label\":\"My profile\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item4\":{\"status\":true,\"label\":\"About\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"}}},\"record\":{\"config\":{\"background_color\":\"#FFFFFF\",\"prompt_opacity\":\"0.65\"},\"icons\":{\"close\":\"\",\"select_gallery\":\"\",\"camera_swipe\":\"\"},\"timer\":{\"status\":false},\"plugins\":{\"video_prompt\":{\"status\":false,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[\"Question 1\",\"Question 2\",\"Question 3\",\"Question 4\",\"Question 5\",\"Question 6....\"]}}},\"event_hashtag\":{\"status\":true,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[]}}}}},\"play\":{\"config\":{\"background_color\":\"#FFFFFF\"},\"icons\":{\"flag\":\"\",\"not_flag\":\"\",\"info\":\"\",\"favorite\":\"\",\"not_favorite\":\"\",\"close\":\"\",\"replay\":\"\"},\"seekbar\":{\"color\":\"\",\"thickness\":\"\"},\"footer\":{\"background_color\":\"#FFFFFF\",\"background_opacity\":\"0.8\"}},\"review\":[],\"submit\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"keyword\":{\"status\":false,\"background_color\":\"#34ce8b\",\"text_color\":\"#ffffff\"},\"header_status\":true,\"header_text\":\"Header text goes here...fhg\",\"video_title\":{\"label\":\"Video title\"},\"description\":{\"label\":\"Description of video\"},\"tags\":{\"status\":true,\"label\":\"Tags\",\"tags\":[\"Tag 1\",\"Tag 2\",\"Longer tag\",\"Longer tag 2\",\"Longer tag 3\"]},\"buttons\":{\"submit\":{\"label\":\"Submit\"}}},\"about\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"description_text\":\"Text goes here...\",\"buttons\":{\"contact\":{\"label\":\"Contact Us\"}}},\"profile\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"videos_label\":\"Videos\",\"favorites_label\":\"Favorites\",\"info_label\":\"Info\",\"logout_label\":\"Log Out\"}}',1,'2017-08-07 18:28:38','2017-08-07 20:22:43',4,1,'grace-test','grace','yikes','idk man','Lifestyle','grace, rip, app, ahhhh','www.gracelu.me','',1,'',0,'',0,'2017-08-07 06:08:38',NULL,NULL,0,0,5),
	(11,'grace \'s App','grace11',1,1,'{\"global_settings\":{\"logo\":\"\",\"button\":{\"radius\":\"9\",\"height\":\"55\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"primary_button\":{\"background_color\":\"#15BDC1\",\"text_color\":\"#ffffff\"},\"secondary_button\":{\"background_color\":\"#34CE8B\",\"text_color\":\"#ffffff\"},\"label\":{\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"icon\":{\"foreground_color\":\"#c3c2c2\",\"background_color\":\"#34ce8b\",\"icon_set\":\"outlined\",\"size\":\"medium\"},\"background_color\":\"#FFFFFF\",\"header\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#0031ff\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"text\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}},\"login\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\",\"icon_color\":\"#bc0b0b\",\"icon_background_color\":\"#1616da\",\"sub_header_status\":true,\"sub_header\":\"hhjhjhjlkjkljklkjlkhh<bhhjhj\",\"sub_header_color\":\"#02bd00\",\"sub_header_background_color\":\"#FFFFFF\",\"header_foreground_color\":\"#ff0000\",\"header_background_color\":\"#8d74d0\"},\"input\":{\"email\":{\"status\":true,\"type\":\"email\",\"label\":\"Email address\",\"placeholder\":\"abc@xyz.com\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"password\":{\"status\":true,\"type\":\"password\",\"label\":\"Password\",\"placeholder\":\"\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"buttons\":{\"login\":{\"status\":true,\"label\":\"adfasdfasdfasdfasdf\",\"background_color\":\"#250e62\",\"text_color\":\"#d40000\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"signup\":{\"status\":true,\"type\":\"password\",\"label\":\"Register\",\"background_color\":\"#ce34b5\",\"text_color\":\"#002ba1\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"link\":{\"status\":true,\"text\":\"Forgot Password?\",\"text_color\":\"#515152\",\"hyperlink\":\"\",\"text_size\":12,\"font_style\":\"arial\"}},\"explore\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\",\"video\":{\"favorite_icon\":\"\",\"not_favorite_icon\":\"\",\"filter_icon\":\"\",\"video_upload_icon\":\"\",\"number_of_videos_per_row\":\"2\",\"spacing_between_videos\":5,\"favorite_text_style\":{\"font_size\":15,\"text_color\":\"#eeeeee\",\"font_weight\":\"bold\",\"underline\":false,\"italic\":false}}},\"input\":{\"search\":{\"status\":true,\"type\":\"text\",\"placeholder\":\"Search...\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"play_button\":{\"size\":\"80\"},\"tabs\":{\"tab1\":{\"status\":true,\"label\":\"All Videos\",\"text_color\":\"#34CE8B\"},\"tab2\":{\"status\":true,\"label\":\"My Favorites\",\"text_color\":\"#34CE8B\"},\"tab3\":{\"status\":true,\"label\":\"My Videos\",\"text_color\":\"#34CE8B\"}}},\"menu\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"list_selected_color\":\"#979797\",\"list_unselected_color\":\"#FFFFFF\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"list_items\":{\"item1\":{\"status\":true,\"label\":\"Explore\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item2\":{\"status\":true,\"label\":\"Record your story\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item3\":{\"status\":true,\"label\":\"My profile\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item4\":{\"status\":true,\"label\":\"About\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"}}},\"record\":{\"config\":{\"background_color\":\"#FFFFFF\",\"prompt_opacity\":\"0.65\"},\"icons\":{\"close\":\"\",\"select_gallery\":\"\",\"camera_swipe\":\"\"},\"timer\":{\"status\":false},\"plugins\":{\"video_prompt\":{\"status\":false,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[\"Question 1\",\"Question 2\",\"Question 3\",\"Question 4\",\"Question 5\",\"Question 6....\"]}}},\"event_hashtag\":{\"status\":true,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[]}}}}},\"play\":{\"config\":{\"background_color\":\"#FFFFFF\"},\"icons\":{\"flag\":\"\",\"not_flag\":\"\",\"info\":\"\",\"favorite\":\"\",\"not_favorite\":\"\",\"close\":\"\",\"replay\":\"\"},\"seekbar\":{\"color\":\"\",\"thickness\":\"\"},\"footer\":{\"background_color\":\"#FFFFFF\",\"background_opacity\":\"0.8\"}},\"review\":[],\"submit\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"keyword\":{\"status\":false,\"background_color\":\"#34ce8b\",\"text_color\":\"#ffffff\"},\"header_status\":true,\"header_text\":\"Header text goes here...fhg\",\"video_title\":{\"label\":\"Video title\"},\"description\":{\"label\":\"Description of video\"},\"tags\":{\"status\":true,\"label\":\"Tags\",\"tags\":[\"Tag 1\",\"Tag 2\",\"Longer tag\",\"Longer tag 2\",\"Longer tag 3\"]},\"buttons\":{\"submit\":{\"label\":\"Submit\"}}},\"about\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"description_text\":\"Text goes here...\",\"buttons\":{\"contact\":{\"label\":\"Contact Us\"}},\"logo_status\":false},\"profile\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"videos_label\":\"Videos\",\"favorites_label\":\"Favorites\",\"info_label\":\"Info\",\"logout_label\":\"Log Out\"}}',1,'2017-08-08 13:28:14','2017-09-13 19:44:10',1,1,'','',NULL,NULL,'',NULL,'','',1,'',0,'',0,'2017-08-08 01:08:14',NULL,NULL,0,0,5),
	(12,'Ben \'s App','ben',1,1,'{\"global_settings\":{\"logo\":\"\",\"button\":{\"radius\":\"9\",\"height\":\"55\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"primary_button\":{\"background_color\":\"#15BDC1\",\"text_color\":\"#ffffff\"},\"secondary_button\":{\"background_color\":\"#34CE8B\",\"text_color\":\"#ffffff\"},\"label\":{\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"icon\":{\"foreground_color\":\"#c3c2c2\",\"background_color\":\"#34ce8b\",\"icon_set\":\"circular\",\"size\":\"medium\"},\"background_color\":\"#FFFFFF\",\"header\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#0031ff\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"text\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}},\"login\":{\"config\":{\"logo_status\":true,\"background_color_status\":false,\"background_color\":\"#b5e3c9\",\"icon_color\":\"#bc0b0b\",\"icon_background_color\":\"#1616da\",\"sub_header_status\":true,\"sub_header\":\"mmmmmmmmmmjjjkjasdfhjj\",\"sub_header_color\":\"#02bd00\",\"sub_header_background_color\":\"#FFFFFF\",\"header_foreground_color\":\"#ff0000\",\"header_background_color\":\"#8d74d0\"},\"input\":{\"email\":{\"status\":true,\"type\":\"email\",\"label\":\"Email address\",\"placeholder\":\"email@example.com\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"password\":{\"status\":true,\"type\":\"password\",\"label\":\"Password\",\"placeholder\":\"\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"buttons\":{\"login\":{\"status\":true,\"label\":\"Login\",\"background_color\":\"#250e62\",\"text_color\":\"#d40000\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"signup\":{\"status\":true,\"type\":\"password\",\"label\":\"Register\",\"background_color\":\"#ce34b5\",\"text_color\":\"#002ba1\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"link\":{\"status\":true,\"text\":\"Forgot Password?\",\"text_color\":\"#515152\",\"hyperlink\":\"\",\"text_size\":12,\"font_style\":\"arial\"}},\"explore\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#e5f0f7\",\"video\":{\"favorite_icon\":\"\",\"not_favorite_icon\":\"\",\"filter_icon\":\"\",\"video_upload_icon\":\"\",\"number_of_videos_per_row\":\"2\",\"spacing_between_videos\":5,\"favorite_text_style\":{\"font_size\":15,\"text_color\":\"#eeeeee\",\"font_weight\":\"bold\",\"underline\":false,\"italic\":false}}},\"input\":{\"search\":{\"status\":true,\"type\":\"text\",\"placeholder\":\"Search...\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"play_button\":{\"size\":\"80\"},\"tabs\":{\"tab1\":{\"status\":true,\"label\":\"All Videos\",\"text_color\":\"#34CE8B\"},\"tab2\":{\"status\":true,\"label\":\"My Favorites\",\"text_color\":\"#34CE8B\"},\"tab3\":{\"status\":true,\"label\":\"My Videos\",\"text_color\":\"#34CE8B\"}}},\"menu\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"list_selected_color\":\"#979797\",\"list_unselected_color\":\"#FFFFFF\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"list_items\":{\"item1\":{\"status\":true,\"label\":\"Explore\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item2\":{\"status\":true,\"label\":\"Record your story\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item3\":{\"status\":true,\"label\":\"My profile\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item4\":{\"status\":true,\"label\":\"About\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"}}},\"record\":{\"config\":{\"background_color\":\"#FFFFFF\",\"prompt_opacity\":\"0.65\"},\"icons\":{\"close\":\"\",\"select_gallery\":\"\",\"camera_swipe\":\"\"},\"timer\":{\"status\":false},\"plugins\":{\"video_prompt\":{\"status\":false,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[\"Question 1\",\"Question 2\",\"Question 3\",\"Question 4\",\"Question 5\",\"Question 6....\"]}}},\"event_hashtag\":{\"status\":true,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[]}}}}},\"play\":{\"config\":{\"background_color\":\"#FFFFFF\"},\"icons\":{\"flag\":\"\",\"not_flag\":\"\",\"info\":\"\",\"favorite\":\"\",\"not_favorite\":\"\",\"close\":\"\",\"replay\":\"\"},\"seekbar\":{\"color\":\"\",\"thickness\":\"\"},\"footer\":{\"background_color\":\"#FFFFFF\",\"background_opacity\":\"0.8\"}},\"review\":[],\"submit\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#f6d4b5\"},\"keyword\":{\"status\":false,\"background_color\":\"#34ce8b\",\"text_color\":\"#ffffff\"},\"header_status\":true,\"header_text\":\"Tell us about your video.\",\"video_title\":{\"label\":\"Video title\"},\"description\":{\"label\":\"Description of video\"},\"tags\":{\"status\":true,\"label\":\"Tags\",\"tags\":[\"Tag 1\",\"Tag 2\",\"Longer tag\",\"Longer tag 2\",\"Longer tag 3\"]},\"buttons\":{\"submit\":{\"label\":\"Submit\"}}},\"about\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"hyperlink\":{\"status\":true,\"link\":\"http:\\\\\\/\\\\\\/www.hatchapps.com\",\"text\":\"powered by hatchapps.com\"},\"description_text\":\"Information about you, your company, or your initiative.\",\"buttons\":{\"contact\":{\"label\":\"Contact Us\"}}},\"profile\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"labels\":{\"videos_label\":\"Uploads\",\"favorites_label\":\"Favorites\",\"info_label\":\"Info\",\"logout_label\":\"Log Out\"}}}',1,'2017-08-08 20:32:16','2017-08-15 15:25:59',1,1,'','',NULL,NULL,'',NULL,'','',1,'',0,'',0,'2017-08-08 08:08:16',NULL,NULL,0,0,5),
	(13,'Ben \'s App','ben0',2,2,'',1,'2017-08-10 13:50:26','2017-08-10 13:50:26',2,1,'','',NULL,NULL,'',NULL,'','',1,'',0,'',0,'2017-08-10 01:08:26',NULL,NULL,0,0,5),
	(14,'Ben \'s App','ben1',1,1,'{\"global_settings\":{\"logo\":\"\",\"button\":{\"radius\":\"9\",\"height\":\"55\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"primary_button\":{\"background_color\":\"#15BDC1\",\"text_color\":\"#ffffff\"},\"secondary_button\":{\"background_color\":\"#34CE8B\",\"text_color\":\"#ffffff\"},\"label\":{\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"icon\":{\"foreground_color\":\"#c3c2c2\",\"background_color\":\"#34ce8b\",\"icon_set\":\"circular\",\"size\":\"medium\"},\"background_color\":\"#FFFFFF\",\"header\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#0031ff\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"text\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}},\"login\":{\"config\":{\"logo_status\":true,\"background_color_status\":false,\"background_color\":\"#ffffff\",\"icon_color\":\"#bc0b0b\",\"icon_background_color\":\"#1616da\",\"sub_header_status\":true,\"sub_header\":\"Subheader text goes here...\",\"sub_header_color\":\"#02bd00\",\"sub_header_background_color\":\"#FFFFFF\",\"header_foreground_color\":\"#ff0000\",\"header_background_color\":\"#8d74d0\"},\"input\":{\"email\":{\"status\":true,\"type\":\"email\",\"label\":\"Email address\",\"placeholder\":\"email@example.com\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"password\":{\"status\":true,\"type\":\"password\",\"label\":\"Password\",\"placeholder\":\"\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"buttons\":{\"login\":{\"status\":true,\"label\":\"Login\",\"background_color\":\"#250e62\",\"text_color\":\"#d40000\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"signup\":{\"status\":true,\"type\":\"password\",\"label\":\"Register\",\"background_color\":\"#ce34b5\",\"text_color\":\"#002ba1\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"link\":{\"status\":true,\"text\":\"Forgot Password?\",\"text_color\":\"#515152\",\"hyperlink\":\"\",\"text_size\":12,\"font_style\":\"arial\"}},\"explore\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\",\"video\":{\"favorite_icon\":\"\",\"not_favorite_icon\":\"\",\"filter_icon\":\"\",\"video_upload_icon\":\"\",\"number_of_videos_per_row\":\"2\",\"spacing_between_videos\":5,\"favorite_text_style\":{\"font_size\":15,\"text_color\":\"#eeeeee\",\"font_weight\":\"bold\",\"underline\":false,\"italic\":false}}},\"input\":{\"search\":{\"status\":true,\"type\":\"text\",\"placeholder\":\"Search...\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"play_button\":{\"size\":\"80\"},\"tabs\":{\"tab1\":{\"status\":true,\"label\":\"All Videos\",\"text_color\":\"#34CE8B\"},\"tab2\":{\"status\":true,\"label\":\"My Favorites\",\"text_color\":\"#34CE8B\"},\"tab3\":{\"status\":true,\"label\":\"My Videos\",\"text_color\":\"#34CE8B\"}}},\"menu\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"list_selected_color\":\"#979797\",\"list_unselected_color\":\"#FFFFFF\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"list_items\":{\"item1\":{\"status\":true,\"label\":\"Explore\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item2\":{\"status\":true,\"label\":\"Record your story\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item3\":{\"status\":true,\"label\":\"My profile\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item4\":{\"status\":true,\"label\":\"About\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"}}},\"record\":{\"config\":{\"background_color\":\"#FFFFFF\",\"prompt_opacity\":\"0.65\"},\"icons\":{\"close\":\"\",\"select_gallery\":\"\",\"camera_swipe\":\"\"},\"timer\":{\"status\":false},\"plugins\":{\"video_prompt\":{\"status\":false,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[\"Question 1\",\"Question 2\",\"Question 3\",\"Question 4\",\"Question 5\",\"Question 6....\"]}}},\"event_hashtag\":{\"status\":true,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[]}}}}},\"play\":{\"config\":{\"background_color\":\"#FFFFFF\"},\"icons\":{\"flag\":\"\",\"not_flag\":\"\",\"info\":\"\",\"favorite\":\"\",\"not_favorite\":\"\",\"close\":\"\",\"replay\":\"\"},\"seekbar\":{\"color\":\"\",\"thickness\":\"\"},\"footer\":{\"background_color\":\"#FFFFFF\",\"background_opacity\":\"0.8\"}},\"review\":[],\"submit\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"keyword\":{\"status\":false,\"background_color\":\"#34ce8b\",\"text_color\":\"#ffffff\"},\"header_status\":true,\"header_text\":\"Tell us about your video.\",\"video_title\":{\"label\":\"Video title\"},\"description\":{\"label\":\"Description of video\"},\"tags\":{\"status\":true,\"label\":\"Tags\",\"tags\":[\"Tag 1\",\"Tag 2\",\"Longer tag\",\"Longer tag 2\",\"Longer tag 3\"]},\"buttons\":{\"submit\":{\"label\":\"Submit\"}}},\"about\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"hyperlink\":{\"status\":true,\"link\":\"http:\\\\\\/\\\\\\/www.hatchapps.com\",\"text\":\"powered by hatchapps.com\"},\"description_text\":\"Information about you, your company, or your initiative.\",\"buttons\":{\"contact\":{\"label\":\"Contact Us\"}}},\"profile\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"labels\":{\"videos_label\":\"Uploads\",\"favorites_label\":\"Favorites\",\"info_label\":\"Info\",\"logout_label\":\"Log Out\"}}}',1,'2017-08-10 22:29:19','2017-08-10 22:29:19',6,1,'','',NULL,NULL,'',NULL,'','',1,'',0,'',0,'2017-08-10 10:08:19',NULL,NULL,0,0,5),
	(15,'grace \'s App','grace0',2,2,'',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',4,1,'','',NULL,NULL,'',NULL,'','',1,'',0,'',0,'2017-09-13 07:09:58',NULL,NULL,0,0,5);

/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table block_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `block_users`;

CREATE TABLE `block_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT '0',
  `blocked_by_user_id` int(11) DEFAULT '0',
  `blocked_user_id` int(11) DEFAULT '0',
  `object_id` int(11) DEFAULT '0',
  `blocked_for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table colors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `colors`;

CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;

INSERT INTO `colors` (`id`, `colors`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'[\"#FFFFFF\",\"#515152\",\"#34CE8B\",\"#15BDC1\",\"#FFFFFF\"]',1,NULL,NULL),
	(2,'[\"#FFFFFF\",\"#515152\",\"#f44336\",\"#dd2656\",\"#FFFFFF\"]',1,NULL,NULL),
	(3,'[\"#FFFFFF\",\"#7b7b7b\",\"#ffd038\",\"#4ad564\",\"#FFFFFF\"]',1,NULL,NULL),
	(4,'[\"#FFFFFF\",\"#05054d\",\"#2196f3\",\"#8cfaf0\",\"#FFFFFF\"]',1,NULL,NULL),
	(5,'[\"#FFFFFF\",\"#212121\",\"#77e48b\",\"#e3e3e3\",\"#FFFFFF\"]',1,NULL,NULL),
	(6,'[\"#FFFFFF\",\"#000000\",\"#ffb6bf\",\"#f5f5f5\",\"#FFFFFF\"]',1,NULL,NULL);

/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `app_id`, `title`, `cover_image`, `description`, `keywords`, `sort_order`, `status`, `created_at`, `updated_at`)
VALUES
	(2,13,'sdfasdfadfasdjkfasdjflkasdjfl;asjdflkajsdlkfjasl;d','','asdfasdfasdfasdfajdkjklasfdjdksafl;asdjkasdjljkladjkasdjfal;ksdjflk;asjdflk;ajsdkfljasldkfja;lsdjflaskjdfla;sdjflaksjdfl;asdjfl;kasjdflaksjdf;lasdjflaksdjfl;asdkjflaksdjfla;ksdjf;laskdjf;lasdjf;laskdj','asdfasdf,asdfa,asdf,as,df,a,sdf,sdfas,f,afas,d,fas,fa,we,c,x,z,cv,zv,cx,vx,xv',1,1,'2017-08-10 15:51:41','2017-08-10 15:51:41');

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table favorites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `favorites`;

CREATE TABLE `favorites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table features
# ------------------------------------------------------------

DROP TABLE IF EXISTS `features`;

CREATE TABLE `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;

INSERT INTO `features` (`id`, `name`, `icon`, `is_active`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Chat','',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(2,'Maps','',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(3,'Add Friends','',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(4,'Post Content','',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(5,'Video','',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(6,'Lessons','',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(7,'Questions','',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37');

/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table feedbacks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `app_id` int(11) DEFAULT '0',
  `object_id` int(11) DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci,
  `send_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table filters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filters`;

CREATE TABLE `filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `filter_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table flags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `flags`;

CREATE TABLE `flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table lessons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lessons`;

CREATE TABLE `lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT '0',
  `course_id` int(11) DEFAULT '0',
  `intro` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro_description` text COLLATE utf8mb4_unicode_ci,
  `attachment_type` text COLLATE utf8mb4_unicode_ci,
  `attachment_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_intro_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;

INSERT INTO `lessons` (`id`, `app_id`, `course_id`, `intro`, `title`, `cover_image`, `attachment`, `points`, `description`, `sort_order`, `status`, `created_at`, `updated_at`, `intro_description`, `attachment_type`, `attachment_thumbnail`, `is_intro_enabled`)
VALUES
	(2,13,2,'','asdfas','','','0','fasdfasdfasdfasdfasfda',1,1,'2017-08-11 00:26:06','2017-08-11 00:26:06','',NULL,'',0),
	(3,13,2,'','adfasdfasdfasdfasdf','','','0','asdfasdfasdfasdf',2,1,'2017-08-17 20:36:27','2017-08-17 20:36:27','',NULL,'',0),
	(4,13,2,'adsjf;lasdjflk;asjdflkasjdfl;kajsdlfkjals;djfl;asdjf;alskdjflk;asdjfl;asjdfl;asjdfl;asjdlkfjal;sdjf;lasdjflasjdf;lasjdfl;jasdl;fjas;dlkfja;sldjfl;asdjfl;askdjf;lasdjfl;asjdf;lasjdfl;asjdklfjlas;kdjfla;ksdjf;laskdjfl;asdjf;laskdjf;lasdjf;lajs;aklsdjfasdlfkjas;dlfjal;sdkjfl;asjdfl;jasl;kdfjl;asdjf;lsadjfl;aksdjfl;kasjdfl;aksdjfl;aksdjf;lasjdfl;kasdjf;laksdjf;laksdjf;lasdjf;alskdjfa;lksdjf;laksjdfl;kajsdfas;kdjf;alsjdfl;asjdf;laksdfa;sldkfja;lksdjfa;lskjdf;alsdlk;f;asldkfja;sldjfa;lsdjf;asdjfa;lksd','kj;lkjl;kj;lkajds;lkfja;lsdjfl;asjdf;lasdf','','','0','asdfjaskdfa;lsdjfasdfasdfasldkjflasdjlflasdfjlasdlfl;',3,1,'2017-08-17 20:50:09','2017-08-17 20:50:09','',NULL,'',1),
	(5,13,2,'','asdfasdfasdfasdf','','','0','asdfasdfasdfasdfasdfasdfasdf',4,1,'2017-08-17 21:32:30','2017-08-17 21:32:30','',NULL,'',0),
	(6,13,2,'','adfasdfadfasdf','','','0','asdfasdfasdfasdfasdf',5,1,'2017-08-17 21:32:38','2017-08-17 21:32:38','',NULL,'',0),
	(7,13,2,'','asdfasdfasdfasdfasdf','','','0','asdfasdfasdfasdfasdf',6,1,'2017-08-17 21:32:43','2017-08-17 21:32:43','',NULL,'',0),
	(8,13,2,'','adsfasdfasdfasdfasdf','','','0','asdfasdfasdfasdfasdf',7,1,'2017-08-17 21:32:48','2017-08-17 21:32:48','',NULL,'',0),
	(9,13,2,'','asdfasdfasdfasdfasdf','','','0','asdfasdfasdfasdfasdf',8,1,'2017-08-17 21:32:56','2017-08-17 21:32:56','',NULL,'',0),
	(10,13,2,'','asdfasdfasdfasdf','','','0','asdfasdfasdfasdfasdfasdfasdfasdfasdf',9,1,'2017-08-17 21:45:13','2017-08-17 21:45:13','',NULL,'',0),
	(11,13,2,'','asdfasdfasdf','','','0','asdfasdfasdfasdfasdfasdf',10,1,'2017-08-17 21:45:48','2017-08-17 21:45:48','',NULL,'',0),
	(12,13,2,'','asdfasdfasdfasdf','','','0','asdfasdfasdfasdfasdf',11,1,'2017-08-17 21:46:45','2017-08-17 21:46:45','',NULL,'',0),
	(13,13,2,'','asdfasdfasdfasdfa','','','0','asdfasdfasdfasdfasdfasf',12,1,'2017-08-17 21:47:40','2017-08-17 21:47:40','',NULL,'',0),
	(14,13,2,'','asdfasdfasdfasdfasdf','','','0','asdfasdfasdfasdfasdf',13,1,'2017-08-17 21:50:29','2017-08-17 21:50:29','',NULL,'',0);

/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table levels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `levels`;

CREATE TABLE `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point_limits` int(11) NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;

INSERT INTO `levels` (`id`, `app_id`, `name`, `point_limits`, `icon`, `status`, `created_at`, `updated_at`, `sort_order`)
VALUES
	(1,'15','Level 1',0,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(2,'15','Level 2',1000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(3,'15','Level 3',2000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(4,'15','Level 4',3000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(5,'15','Level 5',4000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(6,'15','Level 6',5000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(7,'15','Level 7',6000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(8,'15','Level 8',7000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(9,'15','Level 9',8000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0),
	(10,'15','Level 10',9000,'/assets/curr-assets/trophy.svg',1,'2017-09-13 19:44:58','2017-09-13 19:44:58',0);

/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2017_04_12_100027_create_templates_table',1),
	(4,'2017_04_12_101438_create_features_table',1),
	(5,'2017_04_12_101611_create_template_features_table',1),
	(6,'2017_04_12_102025_add_icon_column_in_templates_table',1),
	(7,'2017_04_12_103054_add_icon_column_in_features_table',1),
	(8,'2017_05_05_115515_add_split_name_column_in_users_table',1),
	(9,'2017_05_10_092758_create_apps_table',1),
	(10,'2017_05_10_113544_create_app_users_table',1),
	(11,'2017_05_11_084454_create_themes_table',1),
	(12,'2017_05_16_110250_add_design_column_in_themes_table',1),
	(13,'2017_05_16_125301_add_slug_and_description_columns_in_templates_table',1),
	(14,'2017_05_19_124120_add_master_json_column_in_template_table',1),
	(15,'2017_06_05_072822_create_colors_table',1),
	(16,'2017_06_05_093011_add_color_id_column_in_apps_table',1),
	(17,'2017_06_07_090352_create_styles_table',1),
	(18,'2017_06_07_094727_add_style_id_column_in_apps_table',1),
	(19,'2017_06_15_093036_add_username_column_in_users_table',1),
	(20,'2017_06_15_124317_add_api_token_column_in_uses_table',1),
	(21,'2017_06_23_055240_create_submissions_table',1),
	(22,'2017_06_23_062202_add_app_id_column_in_submissions_table',1),
	(23,'2017_07_01_091923_create_favorites_table',2),
	(24,'2017_07_01_120153_add_profile_picture_column_in_users_table',2),
	(25,'2017_07_04_060528_add_sub_domain_column_in_apps_table',2),
	(26,'2017_07_05_070549_create_flags_table',2),
	(27,'2017_07_05_143208_add_last_visit_column_in_users_table',2),
	(28,'2017_07_12_123032_add_device_type_column_in_submissions_table',3),
	(29,'2017_07_17_074345_update_submissions_table_to_accept_null_values_for_optional_fields_to_update',3),
	(30,'2017_07_20_101245_create_analytics_table',3),
	(31,'2017_07_20_102051_create_feedbacks_table',3),
	(32,'2017_07_21_123353_add_fcm_token_column_in_users_table',3),
	(33,'2017_07_21_123410_create_notifications_table',3),
	(34,'2017_07_25_064925_update_app_tables',4),
	(35,'2017_07_25_100601_drop_columns_AppTable',4),
	(36,'2017_07_26_080100_add_column_app_table',5),
	(37,'2017_07_26_125027_add_device_type_column_in_users_table',5),
	(38,'2017_07_27_111909_add_role_column_in_app_users_table',5),
	(39,'2017_07_28_094641_create_block_users_table',5),
	(40,'2017_07_31_124101_create_courses_table',6),
	(41,'2017_07_31_124458_create_lessons_table',6),
	(42,'2017_07_31_125325_create_questions_table',6),
	(43,'2017_08_01_062250_add_columns_AppTable',6),
	(44,'2017_08_01_133259_create_answers_table',6),
	(45,'2017_08_02_075409_add_app_status_url_updatedAt_columns_app_table',6),
	(46,'2017_08_02_120339_add_intro_column_in_lessons_table',6),
	(47,'2017_08_03_142935_add_keywords_column_in_course_table',7),
	(48,'2017_08_04_075453_create_levels_table',7),
	(49,'2017_08_04_143441_create_resources_table',7),
	(50,'2017_08_07_130438_update_lesson_table',7),
	(51,'2017_08_07_135710_add_attachment_col_lesson_table',7),
	(52,'2017_08_07_141305_add_attachment_type_question_table',7),
	(53,'2017_08_08_073717_add_attachment_description',7),
	(54,'2017_08_08_105430_add_attachment_thumbnail_column_lessons_table',7),
	(55,'2017_08_08_113204_add_is_intro_enabled_column_lessons_table',7),
	(56,'2017_08_08_121410_add_is_correct_field_in_answers_table',7),
	(57,'2017_08_08_131953_add_attachment_thumbnail_column_questions_table',7),
	(58,'2017_08_09_054551_add_file_type_column_resources_table',8),
	(59,'2017_08_09_153550_add_thumbnail_url_column_resources_table',8),
	(60,'2017_08_10_131711_create_filters_table',8),
	(61,'2017_08_10_133226_add_sort_order_column_levels_table',8),
	(62,'2017_08_10_133926_change_point_limit_column_type_levels_table',8),
	(63,'2017_08_18_145710_LessonUpdate',8),
	(64,'2017_08_28_075024_add_is_auto_approve_submission_and_number_of_flags_to_disable_submission_columns_in_apps_table',8),
	(65,'2017_08_29_080952_add_terms_and_conditions_column_in_apps_table',8);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `app_id` int(11) DEFAULT '0',
  `notification` text COLLATE utf8mb4_unicode_ci,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `age_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

INSERT INTO `password_resets` (`email`, `token`, `created_at`)
VALUES
	('grace@hatchapps.com','$2y$10$LVL7Ft8gVZltDwHg6ebiqeNUDCdujHfzx.bHQs8/k7wDhHLI3oyzC','2017-08-01 13:41:03');

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT '0',
  `lesson_id` int(11) DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment_type` text COLLATE utf8mb4_unicode_ci,
  `attachment_description` text COLLATE utf8mb4_unicode_ci,
  `attachment_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `app_id`, `lesson_id`, `title`, `question`, `description`, `options`, `cover_image`, `attachment`, `points`, `type`, `sort_order`, `status`, `created_at`, `updated_at`, `attachment_type`, `attachment_description`, `attachment_thumbnail`)
VALUES
	(1,13,3,'','asdfasdfasdfasdf','','[{\"option\":\"asdfasd\",\"is_correct\":\"true\"},{\"option\":\"asdfasdf\",\"is_correct\":\"false\"},{\"option\":\"asdf\",\"is_correct\":\"false\"},{\"option\":\"asdfasdfasdf\",\"is_correct\":\"false\"}]','','','212','MULTIPLE_CHOICE',1,1,'2017-08-17 20:50:41','2017-08-17 20:50:41',NULL,'',''),
	(2,13,3,'','asdfasdfasdf','','[{\"option\":\"asdfasdfasdfasdf\",\"is_correct\":\"true\"},{\"option\":\"asdfasdfasdf\",\"is_correct\":\"false\"},{\"option\":\"asdfasdfasdfasdf\",\"is_correct\":\"false\"},{\"option\":\"asdfasdfasdf\",\"is_correct\":\"false\"}]','','','1212','MULTIPLE_SELECT',2,1,'2017-08-17 20:52:23','2017-08-17 20:52:23',NULL,'','');

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `media_description` text COLLATE utf8mb4_unicode_ci,
  `hyperlink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `thumbnail_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table styles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `styles`;

CREATE TABLE `styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `styles` WRITE;
/*!40000 ALTER TABLE `styles` DISABLE KEYS */;

INSERT INTO `styles` (`id`, `style`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'{\"header\":{\"font_style\":\"Arial\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"font_style\":\"Arial\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Arial\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"input\":{\"font_style\":\"Arial\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"label\":{\"font_style\":\"Arial\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"button\":{\"font_style\":\"Arial\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}}',1,NULL,NULL),
	(2,'{\"header\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"input\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"label\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"button\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}}',1,NULL,NULL),
	(3,'{\"header\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"bold\"},\"subheader\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"bold\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"bold\"},\"input\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"bold\"},\"label\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"bold\"},\"button\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"bold\"}}',1,NULL,NULL),
	(4,'{\"header\":{\"font_style\":\"Roboto\",\"font_size\":\"large\",\"font_weight\":\"bold\"},\"subheader\":{\"font_style\":\"Roboto\",\"font_size\":\"large\",\"font_weight\":\"bold\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"large\",\"font_weight\":\"bold\"},\"input\":{\"font_style\":\"Roboto\",\"font_size\":\"large\",\"font_weight\":\"bold\"},\"label\":{\"font_style\":\"Roboto\",\"font_size\":\"large\",\"font_weight\":\"bold\"},\"button\":{\"font_style\":\"Roboto\",\"font_size\":\"large\",\"font_weight\":\"bold\"}}',1,NULL,NULL);

/*!40000 ALTER TABLE `styles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table submissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `submissions`;

CREATE TABLE `submissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `app_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;

INSERT INTO `submissions` (`id`, `user_id`, `app_id`, `title`, `caption`, `description`, `tags`, `file_url`, `thumbnail_url`, `type`, `device_type`, `status`, `created_at`, `updated_at`)
VALUES
	(1,0,0,'hello','hajlsdfjasdf','asdfasdfja',NULL,'asdfasdf',NULL,'',NULL,1,'2017-08-10 17:28:16','2017-08-10 17:28:19');

/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table template_features
# ------------------------------------------------------------

DROP TABLE IF EXISTS `template_features`;

CREATE TABLE `template_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL DEFAULT '0',
  `feature_id` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;

INSERT INTO `templates` (`id`, `name`, `description`, `master_json`, `slug`, `icon`, `is_active`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Video Library','','{\"global_settings\":{\"logo\":\"\",\"button\":{\"radius\":\"9\",\"height\":\"55\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"primary_button\":{\"background_color\":\"#15BDC1\",\"text_color\":\"#ffffff\"},\"secondary_button\":{\"background_color\":\"#34CE8B\",\"text_color\":\"#ffffff\"},\"label\":{\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"icon\":{\"foreground_color\":\"#c3c2c2\",\"background_color\":\"#34ce8b\",\"icon_set\":\"circular\",\"size\":\"medium\"},\"background_color\":\"#FFFFFF\",\"header\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#0031ff\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"text\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}},\"login\":{\"config\":{\"logo_status\":true,\"background_color_status\":false,\"background_color\":\"#ffffff\",\"icon_color\":\"#bc0b0b\",\"icon_background_color\":\"#1616da\",\"sub_header_status\":true,\"sub_header\":\"Subheader text goes here...\",\"sub_header_color\":\"#02bd00\",\"sub_header_background_color\":\"#FFFFFF\",\"header_foreground_color\":\"#ff0000\",\"header_background_color\":\"#8d74d0\"},\"input\":{\"email\":{\"status\":true,\"type\":\"email\",\"label\":\"Email address\",\"placeholder\":\"email@example.com\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"password\":{\"status\":true,\"type\":\"password\",\"label\":\"Password\",\"placeholder\":\"\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"buttons\":{\"login\":{\"status\":true,\"label\":\"Login\",\"background_color\":\"#250e62\",\"text_color\":\"#d40000\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"signup\":{\"status\":true,\"type\":\"password\",\"label\":\"Register\",\"background_color\":\"#ce34b5\",\"text_color\":\"#002ba1\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"link\":{\"status\":true,\"text\":\"Forgot Password?\",\"text_color\":\"#515152\",\"hyperlink\":\"\",\"text_size\":12,\"font_style\":\"arial\"}},\"explore\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\",\"video\":{\"favorite_icon\":\"\",\"not_favorite_icon\":\"\",\"filter_icon\":\"\",\"video_upload_icon\":\"\",\"number_of_videos_per_row\":\"2\",\"spacing_between_videos\":5,\"favorite_text_style\":{\"font_size\":15,\"text_color\":\"#eeeeee\",\"font_weight\":\"bold\",\"underline\":false,\"italic\":false}}},\"input\":{\"search\":{\"status\":true,\"type\":\"text\",\"placeholder\":\"Search...\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"play_button\":{\"size\":\"80\"},\"tabs\":{\"tab1\":{\"status\":true,\"label\":\"All Videos\",\"text_color\":\"#34CE8B\"},\"tab2\":{\"status\":true,\"label\":\"My Favorites\",\"text_color\":\"#34CE8B\"},\"tab3\":{\"status\":true,\"label\":\"My Videos\",\"text_color\":\"#34CE8B\"}}},\"menu\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"list_selected_color\":\"#979797\",\"list_unselected_color\":\"#FFFFFF\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"list_items\":{\"item1\":{\"status\":true,\"label\":\"Explore\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item2\":{\"status\":true,\"label\":\"Record your story\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item3\":{\"status\":true,\"label\":\"My profile\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item4\":{\"status\":true,\"label\":\"About\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"}}},\"record\":{\"config\":{\"background_color\":\"#FFFFFF\",\"prompt_opacity\":\"0.65\"},\"icons\":{\"close\":\"\",\"select_gallery\":\"\",\"camera_swipe\":\"\"},\"timer\":{\"status\":false},\"plugins\":{\"video_prompt\":{\"status\":false,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[\"Question 1\",\"Question 2\",\"Question 3\",\"Question 4\",\"Question 5\",\"Question 6....\"]}}},\"event_hashtag\":{\"status\":true,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[]}}}}},\"play\":{\"config\":{\"background_color\":\"#FFFFFF\"},\"icons\":{\"flag\":\"\",\"not_flag\":\"\",\"info\":\"\",\"favorite\":\"\",\"not_favorite\":\"\",\"close\":\"\",\"replay\":\"\"},\"seekbar\":{\"color\":\"\",\"thickness\":\"\"},\"footer\":{\"background_color\":\"#FFFFFF\",\"background_opacity\":\"0.8\"}},\"review\":[],\"submit\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"keyword\":{\"status\":false,\"background_color\":\"#34ce8b\",\"text_color\":\"#ffffff\"},\"header_status\":true,\"header_text\":\"Tell us about your video.\",\"video_title\":{\"label\":\"Video title\"},\"description\":{\"label\":\"Description of video\"},\"tags\":{\"status\":true,\"label\":\"Tags\",\"tags\":[\"Tag 1\",\"Tag 2\",\"Longer tag\",\"Longer tag 2\",\"Longer tag 3\"]},\"buttons\":{\"submit\":{\"label\":\"Submit\"}}},\"about\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"hyperlink\":{\"status\":true,\"link\":\"http:\\\\\\/\\\\\\/www.hatchapps.com\",\"text\":\"powered by hatchapps.com\"},\"description_text\":\"Information about you, your company, or your initiative.\",\"buttons\":{\"contact\":{\"label\":\"Contact Us\"}}},\"profile\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"labels\":{\"videos_label\":\"Uploads\",\"favorites_label\":\"Favorites\",\"info_label\":\"Info\",\"logout_label\":\"Log Out\"}}}','video-library','video-library.svg',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(2,'Curriculum','','','curriculum','curriculum.svg',1,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(3,'E-Commerce Platform','','','e-commerce-platform','e-commerce-platform.svg',0,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(4,'Peer to Peer Marketplace','','','peer-to-peer-marketplace','peer-to-peer-marketplace.svg',0,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(5,'Content Wiki & Chat','','','content-wiki-&-chat','content-wiki-chat.svg',0,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(6,'Social Network','','','social-network','social-network.svg',0,'','2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(7,'Survey Form','','','survey-form','survey-form.svg',0,'','2017-08-08 20:30:37','2017-08-08 20:30:37');

/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table themes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `themes`;

CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL DEFAULT '0',
  `feature_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `screens` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `design` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;

INSERT INTO `themes` (`id`, `template_id`, `feature_ids`, `name`, `screens`, `design`, `description`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,'5','Hatch','[\"vl-main.png\",\"vl-login.png\",\"vl-explore.png\",\"vl-menu.png\",\"vl-record.png\",\"vl-play.png\",\"vl-submit.png\",\"vl-about.png\"]','{\"global_settings\":{\"logo\":\"\",\"button\":{\"radius\":\"9\",\"height\":\"55\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"primary_button\":{\"background_color\":\"#15BDC1\",\"text_color\":\"#ffffff\"},\"secondary_button\":{\"background_color\":\"#34CE8B\",\"text_color\":\"#ffffff\"},\"label\":{\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"icon\":{\"foreground_color\":\"#c3c2c2\",\"background_color\":\"#34ce8b\",\"icon_set\":\"circular\",\"size\":\"medium\"},\"background_color\":\"#FFFFFF\",\"header\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#0031ff\",\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"},\"subheader\":{\"background_color\":\"#FFFFFF\",\"text_color\":\"#515152\",\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"body\":{\"font_style\":\"Roboto\",\"font_size\":\"small\",\"font_weight\":\"regular\"},\"text\":{\"font_style\":\"Roboto\",\"font_size\":\"medium\",\"font_weight\":\"regular\"}},\"login\":{\"config\":{\"logo_status\":true,\"background_color_status\":false,\"background_color\":\"#ffffff\",\"icon_color\":\"#bc0b0b\",\"icon_background_color\":\"#1616da\",\"sub_header_status\":true,\"sub_header\":\"Subheader text goes here...\",\"sub_header_color\":\"#02bd00\",\"sub_header_background_color\":\"#FFFFFF\",\"header_foreground_color\":\"#ff0000\",\"header_background_color\":\"#8d74d0\"},\"input\":{\"email\":{\"status\":true,\"type\":\"email\",\"label\":\"Email address\",\"placeholder\":\"email@example.com\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"password\":{\"status\":true,\"type\":\"password\",\"label\":\"Password\",\"placeholder\":\"\",\"value\":\"\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"buttons\":{\"login\":{\"status\":true,\"label\":\"Login\",\"background_color\":\"#250e62\",\"text_color\":\"#d40000\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}},\"signup\":{\"status\":true,\"type\":\"password\",\"label\":\"Register\",\"background_color\":\"#ce34b5\",\"text_color\":\"#002ba1\",\"border_radius\":5,\"border_color\":\"#eeeeee\",\"border_shadow\":5,\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"link\":{\"status\":true,\"text\":\"Forgot Password?\",\"text_color\":\"#515152\",\"hyperlink\":\"\",\"text_size\":12,\"font_style\":\"arial\"}},\"explore\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\",\"video\":{\"favorite_icon\":\"\",\"not_favorite_icon\":\"\",\"filter_icon\":\"\",\"video_upload_icon\":\"\",\"number_of_videos_per_row\":\"2\",\"spacing_between_videos\":5,\"favorite_text_style\":{\"font_size\":15,\"text_color\":\"#eeeeee\",\"font_weight\":\"bold\",\"underline\":false,\"italic\":false}}},\"input\":{\"search\":{\"status\":true,\"type\":\"text\",\"placeholder\":\"Search...\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"border_radius\":\"5\",\"text_size\":\"15\",\"text_color\":\"#000000\",\"font_style\":\"arial\",\"style\":{\"font_weight\":\"bold\",\"underline\":false,\"italic\":false,\"alignment\":\"center\"}}},\"play_button\":{\"size\":\"80\"},\"tabs\":{\"tab1\":{\"status\":true,\"label\":\"All Videos\",\"text_color\":\"#34CE8B\"},\"tab2\":{\"status\":true,\"label\":\"My Favorites\",\"text_color\":\"#34CE8B\"},\"tab3\":{\"status\":true,\"label\":\"My Videos\",\"text_color\":\"#34CE8B\"}}},\"menu\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"list_selected_color\":\"#979797\",\"list_unselected_color\":\"#FFFFFF\",\"border_color\":\"#979797\",\"border_width\":\"1\",\"list_items\":{\"item1\":{\"status\":true,\"label\":\"Explore\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item2\":{\"status\":true,\"label\":\"Record your story\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item3\":{\"status\":true,\"label\":\"My profile\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"},\"item4\":{\"status\":true,\"label\":\"About\",\"icon\":\"\",\"text_color\":\"#979797\",\"text_size\":\"15\"}}},\"record\":{\"config\":{\"background_color\":\"#FFFFFF\",\"prompt_opacity\":\"0.65\"},\"icons\":{\"close\":\"\",\"select_gallery\":\"\",\"camera_swipe\":\"\"},\"timer\":{\"status\":false},\"plugins\":{\"video_prompt\":{\"status\":false,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[\"Question 1\",\"Question 2\",\"Question 3\",\"Question 4\",\"Question 5\",\"Question 6....\"]}}},\"event_hashtag\":{\"status\":true,\"features\":{\"caption\":{\"close_icon\":\"\",\"change_question_icon\":\"\",\"questions\":[]}}}}},\"play\":{\"config\":{\"background_color\":\"#FFFFFF\"},\"icons\":{\"flag\":\"\",\"not_flag\":\"\",\"info\":\"\",\"favorite\":\"\",\"not_favorite\":\"\",\"close\":\"\",\"replay\":\"\"},\"seekbar\":{\"color\":\"\",\"thickness\":\"\"},\"footer\":{\"background_color\":\"#FFFFFF\",\"background_opacity\":\"0.8\"}},\"review\":[],\"submit\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"keyword\":{\"status\":false,\"background_color\":\"#34ce8b\",\"text_color\":\"#ffffff\"},\"header_status\":true,\"header_text\":\"Tell us about your video.\",\"video_title\":{\"label\":\"Video title\"},\"description\":{\"label\":\"Description of video\"},\"tags\":{\"status\":true,\"label\":\"Tags\",\"tags\":[\"Tag 1\",\"Tag 2\",\"Longer tag\",\"Longer tag 2\",\"Longer tag 3\"]},\"buttons\":{\"submit\":{\"label\":\"Submit\"}}},\"about\":{\"logo_status\":true,\"logo_path\":\"public\\\\\\/uploads\\\\\\/logos\\\\\\/MbVmD3cKqEL9CUjziItCLsQ0hFP9RXsaKiLtSQr5.jpeg\",\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"hyperlink\":{\"status\":true,\"link\":\"http:\\\\\\/\\\\\\/www.hatchapps.com\",\"text\":\"powered by hatchapps.com\"},\"description_text\":\"Information about you, your company, or your initiative.\",\"buttons\":{\"contact\":{\"label\":\"Contact Us\"}}},\"profile\":{\"config\":{\"background_color_status\":false,\"background_color\":\"#ffffff\"},\"labels\":{\"videos_label\":\"Uploads\",\"favorites_label\":\"Favorites\",\"info_label\":\"Info\",\"logout_label\":\"Log Out\"}}}','Perfect for building a social network forum where users can post their own topics and chat with each other, this beautiful template can also be used for almost anything.',1,'2017-08-08 20:30:37','2017-08-08 20:30:37'),
	(2,2,'6,7','Hatch -  Curriculum','[\"curriculum-template\\/c-chapters.png\",\"curriculum-template\\/c-lessons.png\",\"curriculum-template\\/c-lesson-detail.png\",\"curriculum-template\\/c-question.png\",\"curriculum-template\\/c-login.png\"]','','Helping people of all ages connect the dots between education and employment.',1,'2017-08-08 20:30:37','2017-08-08 20:30:37');

/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'APP_ADMIN',
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `first_name`, `email`, `profile_picture`, `password`, `user_type`, `device_type`, `is_active`, `remember_token`, `fcm_token`, `last_login_at`, `created_at`, `updated_at`, `last_name`, `username`, `api_token`)
VALUES
	(1,'Grace','grace@hatchapps.com',NULL,'$2y$10$qNZrAxFclV37M3jcVofggOQxrbO6wcXId0G7e9D6Tf/kEa1nNXQVe','APP_ADMIN','',1,'fDoS1kgdokCkPqOZT5IuBSy7icSFhqm72HuuqpvRoW5yEnagh55IufsZM8qa','','2017-07-28 13:30:06','2017-06-26 19:22:43','2017-07-28 13:30:06','Lu','','2dFGHKRTXsbzL1VWv2byhAlBktAaIJ2W5FkOg1qQHUnKTF7AsURQkDM3uE5e'),
	(2,'Grace','g.race@hatchapps.com',NULL,'$2y$10$dTRNrlnQAH95mfNTmaaRbO13cxpqWY5E1OC8Hu4GbvEP//nVmpAO.','APP_ADMIN','',1,NULL,'','2017-08-07 16:41:43','2017-07-31 13:47:05','2017-08-07 16:41:43','Lu','gracelu','5UisroVcPCeBLlPeUn57aunSzsg4ZJ6NWLMYhx4Y12Dt4eNpEdIkf9ZuaOFs'),
	(3,'grace','gr.ace@hatchapps.com',NULL,'$2y$10$jeCy1/RtULEcAQ77DS5.5ur75u7Uf7IvInkk2cdO0Gj9I7Gem7uQa','APP_ADMIN','',1,'tGI47NKGSsCpH3YTlCkL3K14lQSJVz1Q3cptPUqIStEqX6jmV2ps3gfOpvpI','','2017-09-13 19:43:37','2017-08-01 13:42:55','2017-09-13 19:43:37','lu','gracelu845','dsaqkBY7gsI9XM4ZqL44wk4hZaG1nowY7U4IwrpF5B76ufCBZNdf3Ulm8KEe'),
	(4,'grace','g.r.ace@hatchapps.com',NULL,'$2y$10$RGeBjYbPeIFT.2md6vwMy.24md4YmkYNmgvnm2ie7G2LKaLcCT.F2','APP_ADMIN','',1,NULL,'','2017-08-02 13:41:28','2017-08-02 13:41:28','2017-08-02 13:41:28','lu','gracelu667','yp32Vpf3tPLMxxQupYmqwHSS9dOzZO1lUMgoRzZcyILvT8uXMGT499dwQopZ'),
	(5,'Ben','ben@123.com',NULL,'$2y$10$l/RcH8MkDBrvSU/yfW.j.u8mTih0YvAxPQ1IWcA2eybWB1ojFytDS','APP_ADMIN','',1,NULL,'','2017-08-18 13:57:02','2017-08-08 20:32:07','2017-08-18 13:57:02','Price','benprice','MybcWJoDI0H3zolfnA7xU7b21hS9g7C7A523iSZZwO5DSUGiiWpzQ6tOO7aZ'),
	(6,'grace','grace@123.com',NULL,'$2y$10$NnV.858GiArfz2oJMeTefu.ZiEOxt1CQNVuAobdpzy.oDVoHSGibW','','web',1,NULL,'','2017-08-10 21:04:31','2017-08-10 21:04:31','2017-08-10 21:04:31','lu','gracelu',''),
	(7,'grace','grace@grace.com',NULL,'$2y$10$7eVqUqFY7JZZUHlrGLnsf.8fyP5AzsXypW2pNKoyXB72QHxJDJwke','','web',1,NULL,'','2017-08-10 22:30:11','2017-08-10 22:30:11','2017-08-10 22:30:11','grace','gracegrace','');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
