DROP TABLE IF EXISTS `entrypoint`;

CREATE TABLE `entrypoint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `env_id` int(11) unsigned NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `deleted_at` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;

LOCK TABLES `entrypoint` WRITE;
/*!40000 ALTER TABLE `entrypoint` DISABLE KEYS */;

INSERT INTO `entrypoint` (`id`, `name`, `env_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'production',1,0,1513940976,NULL),
	(2,'staging',2,0,0,NULL),
	(3,'kclub',2,0,0,NULL),
	(4,'mih',2,0,0,NULL),
	(5,'test',3,0,0,NULL);

/*!40000 ALTER TABLE `entrypoint` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table entrypoint_property
# ------------------------------------------------------------

DROP TABLE IF EXISTS `entrypoint_property`;

CREATE TABLE `entrypoint_property` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entrypoint_id` int(11) unsigned NOT NULL,
  `property_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `deleted_at` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entrypoint_id` (`entrypoint_id`,`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;

LOCK TABLES `entrypoint_property` WRITE;
/*!40000 ALTER TABLE `entrypoint_property` DISABLE KEYS */;

INSERT INTO `entrypoint_property` (`id`, `entrypoint_id`, `property_id`, `value`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,'https://magiclogin.fake.com.tw',0,0,NULL),
	(2,1,2,'https://magicds.fake.com.tw',0,0,NULL),
	(3,1,3,'https://m.fake.com',0,0,NULL),
	(4,1,4,'https://portal.fake.com',0,0,NULL),
	(5,1,5,'https://magicmetering.fake.com.tw',0,0,NULL),
	(6,1,6,'https://magiccpl.fake.com.tw',0,0,NULL),
	(7,1,7,'https://dispatch.magicio.fake.com.tw',0,0,NULL),
	(8,1,8,'https://magicmember.fake.com.tw',0,0,NULL),
	(9,1,9,'https://bs.fake.com.tw',0,0,NULL),
	(10,1,10,'https://www.fake.com',0,0,NULL),
	(11,1,11,'https://image.io',0,0,NULL),
	(12,1,12,'https://cs.fake.com',0,0,NULL),
	(13,1,13,'https://ssl.fake.com',0,0,NULL),
	(14,1,14,'https://magicanalytics.fake.com.tw',0,0,NULL),
	(15,1,15,'https://magicad.fake.com.tw',0,0,NULL),
	(16,1,16,'https://magiccomm.fake.com.tw',0,0,NULL),
	(17,1,17,'https://account.fake.com',0,0,NULL),
	(18,1,18,'https://qrcode.fake.com.tw',0,0,NULL),
	(19,2,1,'https://magiclogin.fake-staging.com.tw',0,0,NULL),
	(20,2,2,'https://magicds.fake-staging.com.tw',0,0,NULL),
	(21,2,3,'https://m.fake-staging.com',0,0,NULL),
	(22,2,4,'https://portal.fake-staging.com',0,0,NULL),
	(23,2,5,'https://magicmetering.fake-staging.com.tw',0,0,NULL),
	(24,2,6,'https://magiccpl.fake-staging.com.tw',0,0,NULL),
	(25,2,7,'https://dispatch.magicio.fake-staging.com.tw',0,0,NULL),
	(26,2,8,'https://magicmember.fake-staging.com.tw',0,0,NULL),
	(27,2,9,'https://bs.fake.com.tw',0,0,NULL),
	(28,2,10,'https://www.fake.com',0,0,NULL),
	(29,2,11,'https://image.io',0,0,NULL),
	(30,2,12,'https://cs.fake.com',0,0,2017),
	(31,2,13,'https://ssl.fake.com',0,0,2017),
	(32,2,14,'https://magicanalytics.fake.com.tw',0,0,2017),
	(33,2,15,'https://magicad.fake.com.tw',0,0,2017),
	(34,2,16,'https://magiccomm.fake.com.tw',0,0,2017),
	(35,2,17,'https://account.fake.com',0,0,2017),
	(36,2,18,'https://qrcode.fake.com.tw',0,0,2017),
	(37,3,1,'https://iclub.magiclogin.fake-staging.com.tw',0,0,NULL),
	(38,3,2,'https://iclub.magicds.fake-staging.com.tw',0,0,NULL),
	(39,3,3,'https://m.fake-staging.com',0,0,NULL),
	(40,3,4,'https://portal.fake-staging.com',0,0,NULL),
	(41,3,5,'https://magicmetering.fake-staging.com.tw',0,0,NULL),
	(42,3,6,'https://magiccpl.fake-staging.com.tw',0,0,NULL),
	(43,3,7,'https://dispatch.magicio.fake-staging.com.tw',0,0,NULL),
	(44,3,8,'https://magicmember.fake-staging.com.tw',0,0,NULL),
	(45,3,9,'https://bs.fake.com.tw',0,0,NULL),
	(46,3,10,'https://www.fake.com',0,0,NULL),
	(47,3,11,'https://image.io',0,0,NULL),
	(48,3,12,'https://cs.fake.com',0,0,NULL),
	(49,3,13,'https://ssl.fake.com',0,0,NULL),
	(50,3,14,'https://magicanalytics.fake.com.tw',0,0,NULL),
	(51,3,15,'https://magicad.fake.com.tw',0,0,NULL),
	(52,3,16,'https://magiccomm.fake.com.tw',0,0,NULL),
	(53,3,17,'https://account.fake.com',0,0,NULL),
	(54,3,18,'https://qrcode.fake.com.tw',0,0,NULL),
	(55,4,1,'https://magiclogin.fake-staging.com.tw',0,0,NULL),
	(56,4,2,'https://mih.magicds.fake-staging.com.tw',0,0,NULL),
	(57,4,3,'https://m.fake-staging.com',0,0,NULL),
	(58,4,4,'https://portal.fake-staging.com',0,0,NULL),
	(59,4,5,'https://magicmetering.fake-staging.com.tw',0,0,NULL),
	(60,4,6,'https://magiccpl.fake-staging.com.tw',0,0,NULL),
	(61,4,7,'https://dispatch.magicio.fake-staging.com.tw',0,0,NULL),
	(62,4,8,'https://magicmember.fake-staging.com.tw',0,0,NULL),
	(63,4,9,'https://bs.fake.com.tw',0,0,NULL),
	(64,4,10,'https://www.fake.com',0,0,NULL),
	(65,4,11,'https://image.io',0,0,NULL),
	(66,4,12,'https://cs.fake.com',0,0,NULL),
	(67,4,13,'https://ssl.fake.com',0,0,NULL),
	(68,4,14,'https://magicanalytics.fake.com.tw',0,0,NULL),
	(69,4,15,'https://magicad.fake.com.tw',0,0,NULL),
	(70,4,16,'https://magiccomm.fake.com.tw',0,0,NULL),
	(71,4,17,'https://account.fake.com',0,0,NULL),
	(72,4,18,'https://qrcode.fake.com.tw',0,0,NULL),
	(73,5,1,'https://magiclogin.fake-test.com.tw',0,0,NULL),
	(74,5,2,'https://magicds.fake-test.com.tw',0,0,NULL),
	(75,5,3,'https://m.fake-test.com',0,0,NULL),
	(76,5,4,'https://portal.fake-test.com',0,0,NULL),
	(77,5,5,'https://magicmetering.fake-test.com.tw',0,0,NULL),
	(78,5,6,'https://magiccpl.fake-test.com.tw',0,0,NULL),
	(79,5,7,'https://dispatch.magicio.fake-test.com.tw',0,0,NULL),
	(80,5,8,'https://magicmember.fake-test.com.tw',0,0,NULL),
	(81,5,9,'https://bs.fake.com.tw',0,0,NULL),
	(82,5,10,'https://www.fake.com',0,0,NULL),
	(83,5,11,'https://image.io',0,0,NULL),
	(84,5,12,'https://cs.fake.com',0,0,NULL),
	(85,5,13,'https://ssl.fake.com',0,0,NULL),
	(86,5,14,'https://magicanalytics.fake.com.tw',0,0,NULL),
	(87,5,15,'https://magicad.fake.com.tw',0,0,NULL),
	(88,5,16,'https://magiccomm.fake.com.tw',0,0,NULL),
	(89,5,17,'https://account.fake.com',0,0,NULL),
	(90,5,18,'https://qrcode.fake.com.tw',0,0,NULL);

/*!40000 ALTER TABLE `entrypoint_property` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table env
# ------------------------------------------------------------

DROP TABLE IF EXISTS `env`;

CREATE TABLE `env` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `deleted_at` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;

LOCK TABLES `env` WRITE;
/*!40000 ALTER TABLE `env` DISABLE KEYS */;

INSERT INTO `env` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'production',0,0,NULL),
	(2,'staging',0,0,NULL),
	(3,'test',0,0,NULL);

/*!40000 ALTER TABLE `env` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table property
# ------------------------------------------------------------

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `deleted_at` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;

INSERT INTO `property` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'login_url',0,0,NULL),
	(2,'ds_url',0,0,NULL),
	(3,'ps_mobile_url',0,0,NULL),
	(4,'ps_desktop_url',0,0,NULL),
	(5,'tdls_url',0,0,NULL),
	(6,'cpl_url',0,0,NULL),
	(7,'io_url',0,0,NULL),
	(8,'member_url',0,0,NULL),
	(9,'bs_url',0,0,NULL),
	(10,'ws_url',0,0,NULL),
	(11,'img_host_url',0,0,NULL),
	(12,'cs_url',0,0,NULL),
	(13,'ssl_url',0,0,NULL),
	(14,'analytics_url',0,0,NULL),
	(15,'ad_url',0,0,NULL),
	(16,'listenwith_url',0,0,NULL),
	(17,'account_url',0,0,NULL),
	(18,'qrcode_url',0,0,NULL);

/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
