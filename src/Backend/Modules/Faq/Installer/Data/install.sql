CREATE TABLE IF NOT EXISTS `faq_categories` (
 `id` int(11) NOT NULL auto_increment,
 `meta_id` int(11) NOT NULL,
 `extra_id` int(11) NOT NULL,
 `language` varchar(5) NOT NULL,
 `title` varchar(255) NOT NULL,
 `sequence` int(11) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;


CREATE TABLE IF NOT EXISTS `faq_questions` (
  `id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `language` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `num_views` int(11) NOT NULL default '0',
  `num_usefull_yes` int(11) NOT NULL default '0',
  `num_usefull_no` int(11) NOT NULL default '0',
  `hidden` enum('N','Y') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL default 'N',
  `sequence` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_faq_questions_faq_categories` (`hidden`,`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `faq_feedback` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `question_id` int(11) unsigned NOT NULL,
  `text` text NOT NULL,
  `processed` VARCHAR(1) NOT NULL default 'N',
  `created_on` datetime NOT NULL,
  `edited_on` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
