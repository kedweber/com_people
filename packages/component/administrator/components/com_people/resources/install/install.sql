-- ----------------------------
--  Table structure for `#__people_people`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `#__people_people` (
  `people_person_id` SERIAL,
  `uuid` char(36) NOT NULL,
  `cck_fieldset_id` int(11) NOT NULL DEFAULT '3000',
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'person',
  `fields` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`people_person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `#__cck_fieldsets`
-- ----------------------------
BEGIN;
INSERT IGNORE INTO `#__cck_fieldsets` VALUES
  ('3000', 'User', 'user', '1', '2015-07-03 09:46:19', '951', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
COMMIT;

-- ----------------------------
--  Records of `#__cck_fieldsets_elements`
-- ----------------------------
BEGIN;
INSERT IGNORE INTO `#__cck_fieldsets_elements` VALUES
  ('3000', '1', '', '', '', '0', '1', '1', '2015-07-03 09:46:19', '951', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
COMMIT;