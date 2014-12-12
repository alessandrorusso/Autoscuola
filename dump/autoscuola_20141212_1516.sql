-- phpMyAdmin SQL Dump
-- version 4.2.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dic 12, 2014 alle 06:15
-- Versione del server: 5.5.40
-- PHP Version: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `autoscuola`
--
DROP DATABASE `autoscuola`;
CREATE DATABASE IF NOT EXISTS `autoscuola` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `autoscuola`;

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_assets`
--

DROP TABLE IF EXISTS `bak_e3xea_assets`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_assets`
--

TRUNCATE TABLE `bak_e3xea_assets`;
--
-- Dump dei dati per la tabella `bak_e3xea_assets`
--

INSERT INTO `bak_e3xea_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 105, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 70, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 71, 74, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 75, 76, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 77, 78, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 79, 80, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 81, 82, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 83, 86, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 87, 90, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 91, 92, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 72, 73, 2, 'com_newsfeeds.category.5', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 88, 89, 2, 'com_weblinks.category.6', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 84, 85, 1, 'com_users.category.7', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 93, 94, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 95, 96, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 97, 98, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 99, 100, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 101, 102, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 103, 104, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 40, 41, 2, 'com_modules.module.1', 'Menu Principale', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 44, 45, 2, 'com_modules.module.3', 'I più letti', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 46, 47, 2, 'com_modules.module.4', 'Articoli recenti', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 52, 53, 2, 'com_modules.module.10', 'Utenti connessi', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 60, 61, 2, 'com_modules.module.15', 'Titolo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 62, 63, 2, 'com_modules.module.16', 'Accesso Utenti', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 64, 65, 2, 'com_modules.module.17', 'Percorso', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 66, 67, 2, 'com_modules.module.79', 'Stato multilingua', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_associations`
--

DROP TABLE IF EXISTS `bak_e3xea_associations`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_associations`
--

TRUNCATE TABLE `bak_e3xea_associations`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_banner_clients`
--

DROP TABLE IF EXISTS `bak_e3xea_banner_clients`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_banner_clients`
--

TRUNCATE TABLE `bak_e3xea_banner_clients`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_banner_tracks`
--

DROP TABLE IF EXISTS `bak_e3xea_banner_tracks`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_banner_tracks`
--

TRUNCATE TABLE `bak_e3xea_banner_tracks`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_banners`
--

DROP TABLE IF EXISTS `bak_e3xea_banners`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_banners`
--

TRUNCATE TABLE `bak_e3xea_banners`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_categories`
--

DROP TABLE IF EXISTS `bak_e3xea_categories`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_categories`
--

TRUNCATE TABLE `bak_e3xea_categories`;
--
-- Dump dei dati per la tabella `bak_e3xea_categories`
--

INSERT INTO `bak_e3xea_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'non-categorizzato', 'com_content', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'non-categorizzato', 'com_banners', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'non-categorizzato', 'com_contact', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'non-categorizzato', 'com_newsfeeds', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'non-categorizzato', 'com_weblinks', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'non-categorizzato', 'com_users', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_contact_details`
--

DROP TABLE IF EXISTS `bak_e3xea_contact_details`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_contact_details`
--

TRUNCATE TABLE `bak_e3xea_contact_details`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_content`
--

DROP TABLE IF EXISTS `bak_e3xea_content`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_content`
--

TRUNCATE TABLE `bak_e3xea_content`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_content_frontpage`
--

DROP TABLE IF EXISTS `bak_e3xea_content_frontpage`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_content_frontpage`
--

TRUNCATE TABLE `bak_e3xea_content_frontpage`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_content_rating`
--

DROP TABLE IF EXISTS `bak_e3xea_content_rating`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_content_rating`
--

TRUNCATE TABLE `bak_e3xea_content_rating`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_content_types`
--

DROP TABLE IF EXISTS `bak_e3xea_content_types`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_content_types`
--

TRUNCATE TABLE `bak_e3xea_content_types`;
--
-- Dump dei dati per la tabella `bak_e3xea_content_types`
--

INSERT INTO `bak_e3xea_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_contentitem_tag_map`
--

DROP TABLE IF EXISTS `bak_e3xea_contentitem_tag_map`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_contentitem_tag_map`
--

TRUNCATE TABLE `bak_e3xea_contentitem_tag_map`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_core_log_searches`
--

DROP TABLE IF EXISTS `bak_e3xea_core_log_searches`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_core_log_searches`
--

TRUNCATE TABLE `bak_e3xea_core_log_searches`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_extensions`
--

DROP TABLE IF EXISTS `bak_e3xea_extensions`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_extensions`
--

TRUNCATE TABLE `bak_e3xea_extensions`;
--
-- Dump dei dati per la tabella `bak_e3xea_extensions`
--

INSERT INTO `bak_e3xea_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"it-IT","site":"it-IT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '', '{"mode":"2","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'ItalianItaly', 'language', 'it-IT', '', 0, 1, 0, 0, '{"name":"Italian (Italy)","type":"language","creationDate":"2014-09-30","author":"Italian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved","authorEmail":"","authorUrl":"","version":"3.3.6.1","description":"Italian site language pack for Joomla! 3.3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'ItalianItaly', 'language', 'it-IT', '', 1, 1, 0, 0, '{"name":"Italian (Italy)","type":"language","creationDate":"2014-09-30","author":"Italian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved","authorEmail":"","authorUrl":"","version":"3.3.6.1","description":"Italian administration language pack for Joomla! 3.3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'it-IT', 'package', 'pkg_it-IT', '', 0, 1, 1, 0, '{"name":"Italian Language Pack","type":"package","creationDate":"30 settembre 2014","author":"Italian translation team : joomla.it","copyright":"Copyright (C) 2005 - 2014 joomla.it e Open Source Matters. Tutti i diritti riservati","authorEmail":"info@joomla.it","authorUrl":"www.joomla.it","version":"3.3.6.1","description":"Joomla! 3.3 Full Italian (it-IT) Language Package - Version 3.3.6v1","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_filters`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_filters`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_filters`
--

TRUNCATE TABLE `bak_e3xea_finder_filters`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links`
--

TRUNCATE TABLE `bak_e3xea_finder_links`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms0`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms0`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms0`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms1`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms1`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms1`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms2`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms2`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms2`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms3`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms3`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms3`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms4`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms4`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms4`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms5`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms5`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms5`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms6`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms6`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms6`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms7`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms7`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms7`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms8`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms8`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms8`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_terms9`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_terms9`
--

TRUNCATE TABLE `bak_e3xea_finder_links_terms9`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_termsa`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_termsa`
--

TRUNCATE TABLE `bak_e3xea_finder_links_termsa`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_termsb`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_termsb`
--

TRUNCATE TABLE `bak_e3xea_finder_links_termsb`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_termsc`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_termsc`
--

TRUNCATE TABLE `bak_e3xea_finder_links_termsc`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_termsd`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_termsd`
--

TRUNCATE TABLE `bak_e3xea_finder_links_termsd`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_termse`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_termse`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_termse`
--

TRUNCATE TABLE `bak_e3xea_finder_links_termse`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_links_termsf`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_links_termsf`
--

TRUNCATE TABLE `bak_e3xea_finder_links_termsf`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_taxonomy`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_taxonomy`
--

TRUNCATE TABLE `bak_e3xea_finder_taxonomy`;
--
-- Dump dei dati per la tabella `bak_e3xea_finder_taxonomy`
--

INSERT INTO `bak_e3xea_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_taxonomy_map`
--

TRUNCATE TABLE `bak_e3xea_finder_taxonomy_map`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_terms`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_terms`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_terms`
--

TRUNCATE TABLE `bak_e3xea_finder_terms`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_terms_common`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_terms_common`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_terms_common`
--

TRUNCATE TABLE `bak_e3xea_finder_terms_common`;
--
-- Dump dei dati per la tabella `bak_e3xea_finder_terms_common`
--

INSERT INTO `bak_e3xea_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_tokens`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_tokens`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_tokens`
--

TRUNCATE TABLE `bak_e3xea_finder_tokens`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_tokens_aggregate`
--

TRUNCATE TABLE `bak_e3xea_finder_tokens_aggregate`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_finder_types`
--

DROP TABLE IF EXISTS `bak_e3xea_finder_types`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_finder_types`
--

TRUNCATE TABLE `bak_e3xea_finder_types`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_languages`
--

DROP TABLE IF EXISTS `bak_e3xea_languages`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_languages`
--

TRUNCATE TABLE `bak_e3xea_languages`;
--
-- Dump dei dati per la tabella `bak_e3xea_languages`
--

INSERT INTO `bak_e3xea_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'it-IT', 'Italiano (IT)', 'Italian (IT)', 'it', 'it', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_menu`
--

DROP TABLE IF EXISTS `bak_e3xea_menu`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_menu`
--

TRUNCATE TABLE `bak_e3xea_menu`;
--
-- Dump dei dati per la tabella `bak_e3xea_menu`
--

INSERT INTO `bak_e3xea_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 49, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 1, '*', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_menu_types`
--

DROP TABLE IF EXISTS `bak_e3xea_menu_types`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_menu_types`
--

TRUNCATE TABLE `bak_e3xea_menu_types`;
--
-- Dump dei dati per la tabella `bak_e3xea_menu_types`
--

INSERT INTO `bak_e3xea_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Menu Principale', 'Menu Principale del sito');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_messages`
--

DROP TABLE IF EXISTS `bak_e3xea_messages`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_messages`
--

TRUNCATE TABLE `bak_e3xea_messages`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_messages_cfg`
--

DROP TABLE IF EXISTS `bak_e3xea_messages_cfg`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_messages_cfg`
--

TRUNCATE TABLE `bak_e3xea_messages_cfg`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_modules`
--

DROP TABLE IF EXISTS `bak_e3xea_modules`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_modules`
--

TRUNCATE TABLE `bak_e3xea_modules`;
--
-- Dump dei dati per la tabella `bak_e3xea_modules`
--

INSERT INTO `bak_e3xea_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu Principale', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'I più letti', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Articoli recenti', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Utenti connessi', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Titolo', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Accesso Utenti', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Percorso', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Stato multilingua', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_modules_menu`
--

DROP TABLE IF EXISTS `bak_e3xea_modules_menu`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_modules_menu`
--

TRUNCATE TABLE `bak_e3xea_modules_menu`;
--
-- Dump dei dati per la tabella `bak_e3xea_modules_menu`
--

INSERT INTO `bak_e3xea_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_newsfeeds`
--

DROP TABLE IF EXISTS `bak_e3xea_newsfeeds`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_newsfeeds`
--

TRUNCATE TABLE `bak_e3xea_newsfeeds`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_overrider`
--

DROP TABLE IF EXISTS `bak_e3xea_overrider`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_overrider`
--

TRUNCATE TABLE `bak_e3xea_overrider`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_postinstall_messages`
--

DROP TABLE IF EXISTS `bak_e3xea_postinstall_messages`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_postinstall_messages`
--

TRUNCATE TABLE `bak_e3xea_postinstall_messages`;
--
-- Dump dei dati per la tabella `bak_e3xea_postinstall_messages`
--

INSERT INTO `bak_e3xea_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_redirect_links`
--

DROP TABLE IF EXISTS `bak_e3xea_redirect_links`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_redirect_links`
--

TRUNCATE TABLE `bak_e3xea_redirect_links`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_schemas`
--

DROP TABLE IF EXISTS `bak_e3xea_schemas`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_schemas`
--

TRUNCATE TABLE `bak_e3xea_schemas`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_session`
--

DROP TABLE IF EXISTS `bak_e3xea_session`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_session`
--

TRUNCATE TABLE `bak_e3xea_session`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_tags`
--

DROP TABLE IF EXISTS `bak_e3xea_tags`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_tags`
--

TRUNCATE TABLE `bak_e3xea_tags`;
--
-- Dump dei dati per la tabella `bak_e3xea_tags`
--

INSERT INTO `bak_e3xea_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_template_styles`
--

DROP TABLE IF EXISTS `bak_e3xea_template_styles`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_template_styles`
--

TRUNCATE TABLE `bak_e3xea_template_styles`;
--
-- Dump dei dati per la tabella `bak_e3xea_template_styles`
--

INSERT INTO `bak_e3xea_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_ucm_base`
--

DROP TABLE IF EXISTS `bak_e3xea_ucm_base`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_ucm_base`
--

TRUNCATE TABLE `bak_e3xea_ucm_base`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_ucm_content`
--

DROP TABLE IF EXISTS `bak_e3xea_ucm_content`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_ucm_content`
--

TRUNCATE TABLE `bak_e3xea_ucm_content`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_ucm_history`
--

DROP TABLE IF EXISTS `bak_e3xea_ucm_history`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_ucm_history`
--

TRUNCATE TABLE `bak_e3xea_ucm_history`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_update_sites`
--

DROP TABLE IF EXISTS `bak_e3xea_update_sites`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_update_sites`
--

TRUNCATE TABLE `bak_e3xea_update_sites`;
--
-- Dump dei dati per la tabella `bak_e3xea_update_sites`
--

INSERT INTO `bak_e3xea_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_update_sites_extensions`
--

DROP TABLE IF EXISTS `bak_e3xea_update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_update_sites_extensions`
--

TRUNCATE TABLE `bak_e3xea_update_sites_extensions`;
--
-- Dump dei dati per la tabella `bak_e3xea_update_sites_extensions`
--

INSERT INTO `bak_e3xea_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10002);

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_updates`
--

DROP TABLE IF EXISTS `bak_e3xea_updates`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_updates`
--

TRUNCATE TABLE `bak_e3xea_updates`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_user_keys`
--

DROP TABLE IF EXISTS `bak_e3xea_user_keys`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_user_keys`
--

TRUNCATE TABLE `bak_e3xea_user_keys`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_user_notes`
--

DROP TABLE IF EXISTS `bak_e3xea_user_notes`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_user_notes`
--

TRUNCATE TABLE `bak_e3xea_user_notes`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_user_profiles`
--

DROP TABLE IF EXISTS `bak_e3xea_user_profiles`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_user_profiles`
--

TRUNCATE TABLE `bak_e3xea_user_profiles`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_user_usergroup_map`
--

DROP TABLE IF EXISTS `bak_e3xea_user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_user_usergroup_map`
--

TRUNCATE TABLE `bak_e3xea_user_usergroup_map`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_users`
--

DROP TABLE IF EXISTS `bak_e3xea_users`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_users`
--

TRUNCATE TABLE `bak_e3xea_users`;
-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_viewlevels`
--

DROP TABLE IF EXISTS `bak_e3xea_viewlevels`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_viewlevels`
--

TRUNCATE TABLE `bak_e3xea_viewlevels`;
--
-- Dump dei dati per la tabella `bak_e3xea_viewlevels`
--

INSERT INTO `bak_e3xea_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Struttura della tabella `bak_e3xea_weblinks`
--

DROP TABLE IF EXISTS `bak_e3xea_weblinks`;
CREATE TABLE IF NOT EXISTS `bak_e3xea_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `bak_e3xea_weblinks`
--

TRUNCATE TABLE `bak_e3xea_weblinks`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_assets`
--

DROP TABLE IF EXISTS `e3xea_assets`;
CREATE TABLE IF NOT EXISTS `e3xea_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_assets`
--

TRUNCATE TABLE `e3xea_assets`;
--
-- Dump dei dati per la tabella `e3xea_assets`
--

INSERT INTO `e3xea_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 159, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 40, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 41, 42, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 43, 44, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 45, 46, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 47, 48, 1, 'com_login', 'com_login', '{}'),
(13, 1, 49, 50, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 51, 52, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 53, 54, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 55, 56, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 57, 58, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 59, 118, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 119, 122, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 123, 124, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 125, 126, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 127, 128, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 129, 130, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 131, 134, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 135, 138, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 139, 140, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 39, 2, 'com_content.category.2', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 120, 121, 2, 'com_newsfeeds.category.5', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 136, 137, 2, 'com_weblinks.category.6', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 132, 133, 1, 'com_users.category.7', 'Non categorizzato', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 141, 142, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 143, 144, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 145, 146, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 147, 148, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 149, 150, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 151, 152, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 60, 61, 2, 'com_modules.module.1', 'Menu Principale', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 62, 63, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 64, 65, 2, 'com_modules.module.3', 'I più letti', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 66, 67, 2, 'com_modules.module.4', 'Articoli recenti', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 68, 69, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 70, 71, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 72, 73, 2, 'com_modules.module.10', 'Utenti connessi', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 74, 75, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 76, 77, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 78, 79, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 80, 81, 2, 'com_modules.module.15', 'Titolo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 82, 83, 2, 'com_modules.module.16', 'Accesso Utenti', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 84, 85, 2, 'com_modules.module.17', 'Percorso', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 86, 87, 2, 'com_modules.module.79', 'Stato multilingua', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 88, 89, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 90, 91, 2, 'com_modules.module.87', 'Argomenti Popolari', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 18, 92, 93, 2, 'com_modules.module.88', 'Informazioni del sito', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 94, 95, 2, 'com_modules.module.89', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 96, 97, 2, 'com_modules.module.90', 'Ultimi Articoli', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 98, 99, 2, 'com_modules.module.91', 'Menu Utente', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 100, 101, 2, 'com_modules.module.92', 'Immagine di testata', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 18, 102, 103, 2, 'com_modules.module.93', 'Cerca', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', '-', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 1, 153, 154, 1, 'com_pbbooking', 'com_pbbooking', '{}'),
(64, 27, 21, 22, 3, 'com_content.article.2', 'ppp', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 27, 23, 24, 3, 'com_content.article.3', 'Pratiche Veicoli', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 27, 25, 26, 3, 'com_content.article.4', 'Pratiche Patenti', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 27, 27, 28, 3, 'com_content.article.5', 'Assicurazioni', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 27, 29, 30, 3, 'com_content.article.6', 'SERVIZI', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 27, 31, 32, 3, 'com_content.article.7', 'Benvenuto in Conti Autoscuole & Delegazione Aci', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 27, 33, 34, 3, 'com_content.article.8', 'cirs orovva', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 27, 35, 36, 3, 'com_content.article.9', 'Recupero punti', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 27, 37, 38, 3, 'com_content.article.10', 'C.Q.C.', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 18, 104, 105, 2, 'com_modules.module.94', 'Menu Utente (2)', ''),
(74, 18, 106, 107, 2, 'com_modules.module.95', 'Benvenuto in Conti Autoscuole & Delegazione Aci', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 1, 155, 156, 1, 'com_gallery_wd', 'com_gallery_wd', '{}'),
(76, 18, 108, 109, 2, 'com_modules.module.96', 'Gallery WD Lite', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 18, 110, 111, 2, 'com_modules.module.97', 'Gallery WD SlideShow Lite', ''),
(78, 1, 157, 158, 1, 'com_oziogallery3', 'com_oziogallery3', '{}'),
(79, 18, 112, 113, 2, 'com_modules.module.98', 'ARI Ext Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 18, 114, 115, 2, 'com_modules.module.99', 'mod_jux_carousel', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 18, 116, 117, 2, 'com_modules.module.100', 'Cinch Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_associations`
--

DROP TABLE IF EXISTS `e3xea_associations`;
CREATE TABLE IF NOT EXISTS `e3xea_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_associations`
--

TRUNCATE TABLE `e3xea_associations`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_banner_clients`
--

DROP TABLE IF EXISTS `e3xea_banner_clients`;
CREATE TABLE IF NOT EXISTS `e3xea_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_banner_clients`
--

TRUNCATE TABLE `e3xea_banner_clients`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_banner_tracks`
--

DROP TABLE IF EXISTS `e3xea_banner_tracks`;
CREATE TABLE IF NOT EXISTS `e3xea_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_banner_tracks`
--

TRUNCATE TABLE `e3xea_banner_tracks`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_banners`
--

DROP TABLE IF EXISTS `e3xea_banners`;
CREATE TABLE IF NOT EXISTS `e3xea_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_banners`
--

TRUNCATE TABLE `e3xea_banners`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_album`
--

DROP TABLE IF EXISTS `e3xea_bwg_album`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_album` (
`id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_album`
--

TRUNCATE TABLE `e3xea_bwg_album`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_album_gallery`
--

DROP TABLE IF EXISTS `e3xea_bwg_album_gallery`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_album_gallery` (
`id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_album_gallery`
--

TRUNCATE TABLE `e3xea_bwg_album_gallery`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_gallery`
--

DROP TABLE IF EXISTS `e3xea_bwg_gallery`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_gallery` (
`id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_gallery`
--

TRUNCATE TABLE `e3xea_bwg_gallery`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_image`
--

DROP TABLE IF EXISTS `e3xea_bwg_image`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_image` (
`id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_image`
--

TRUNCATE TABLE `e3xea_bwg_image`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_image_comment`
--

DROP TABLE IF EXISTS `e3xea_bwg_image_comment`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_image_comment` (
`id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_image_comment`
--

TRUNCATE TABLE `e3xea_bwg_image_comment`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_image_rate`
--

DROP TABLE IF EXISTS `e3xea_bwg_image_rate`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_image_rate` (
`id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_image_rate`
--

TRUNCATE TABLE `e3xea_bwg_image_rate`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_image_tag`
--

DROP TABLE IF EXISTS `e3xea_bwg_image_tag`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_image_tag` (
`id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_image_tag`
--

TRUNCATE TABLE `e3xea_bwg_image_tag`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_option`
--

DROP TABLE IF EXISTS `e3xea_bwg_option`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_option` (
`id` bigint(20) NOT NULL,
  `images_directory` mediumtext NOT NULL,
  `masonry` varchar(255) NOT NULL,
  `image_column_number` int(4) NOT NULL,
  `images_per_page` int(4) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `upload_thumb_width` int(4) NOT NULL,
  `upload_thumb_height` int(4) NOT NULL,
  `image_enable_page` tinyint(1) NOT NULL,
  `image_title_show_hover` varchar(20) NOT NULL,
  `album_column_number` int(4) NOT NULL,
  `albums_per_page` int(4) NOT NULL,
  `album_title_show_hover` varchar(255) NOT NULL,
  `album_thumb_width` int(4) NOT NULL,
  `album_thumb_height` int(4) NOT NULL,
  `album_enable_page` tinyint(1) NOT NULL,
  `extended_album_height` int(4) NOT NULL,
  `extended_album_description_enable` tinyint(1) NOT NULL,
  `image_browser_width` int(4) NOT NULL,
  `image_browser_title_enable` tinyint(1) NOT NULL,
  `image_browser_description_enable` tinyint(1) NOT NULL,
  `blog_style_width` int(4) NOT NULL,
  `blog_style_title_enable` tinyint(1) NOT NULL,
  `blog_style_images_per_page` int(4) NOT NULL,
  `blog_style_enable_page` tinyint(1) NOT NULL,
  `slideshow_type` varchar(255) NOT NULL,
  `slideshow_interval` int(4) NOT NULL,
  `slideshow_width` int(4) NOT NULL,
  `slideshow_height` int(4) NOT NULL,
  `slideshow_enable_autoplay` tinyint(1) NOT NULL,
  `slideshow_enable_shuffle` tinyint(1) NOT NULL,
  `slideshow_enable_ctrl` tinyint(1) NOT NULL,
  `slideshow_enable_filmstrip` tinyint(1) NOT NULL,
  `slideshow_filmstrip_height` int(4) NOT NULL,
  `slideshow_enable_title` tinyint(1) NOT NULL,
  `slideshow_title_position` varchar(255) NOT NULL,
  `slideshow_enable_description` tinyint(1) NOT NULL,
  `slideshow_description_position` varchar(255) NOT NULL,
  `slideshow_enable_music` tinyint(1) NOT NULL,
  `slideshow_audio_url` varchar(255) NOT NULL,
  `popup_width` int(4) NOT NULL,
  `popup_height` int(4) NOT NULL,
  `popup_type` varchar(255) NOT NULL,
  `popup_interval` int(4) NOT NULL,
  `popup_enable_filmstrip` tinyint(1) NOT NULL,
  `popup_filmstrip_height` int(4) NOT NULL,
  `popup_enable_ctrl_btn` tinyint(1) NOT NULL,
  `popup_enable_fullscreen` tinyint(1) NOT NULL,
  `popup_enable_info` tinyint(1) NOT NULL,
  `popup_info_always_show` tinyint(1) NOT NULL,
  `popup_enable_rate` tinyint(1) NOT NULL,
  `popup_enable_comment` tinyint(1) NOT NULL,
  `popup_enable_email` tinyint(1) NOT NULL,
  `popup_enable_captcha` tinyint(1) NOT NULL,
  `popup_enable_download` tinyint(1) NOT NULL,
  `popup_enable_fullsize_image` tinyint(1) NOT NULL,
  `popup_enable_facebook` tinyint(1) NOT NULL,
  `popup_enable_twitter` tinyint(1) NOT NULL,
  `popup_enable_google` tinyint(1) NOT NULL,
  `watermark_type` varchar(255) NOT NULL,
  `watermark_position` varchar(255) NOT NULL,
  `watermark_width` int(4) NOT NULL,
  `watermark_height` int(4) NOT NULL,
  `watermark_url` mediumtext NOT NULL,
  `watermark_text` mediumtext NOT NULL,
  `watermark_link` mediumtext NOT NULL,
  `watermark_font_size` int(4) NOT NULL,
  `watermark_font` varchar(255) NOT NULL,
  `watermark_color` varchar(255) NOT NULL,
  `watermark_opacity` int(4) NOT NULL,
  `built_in_watermark_type` varchar(255) NOT NULL,
  `built_in_watermark_position` varchar(255) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(255) NOT NULL,
  `built_in_watermark_color` varchar(255) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `popup_fullscreen` tinyint(1) NOT NULL,
  `gallery_role` tinyint(1) NOT NULL,
  `album_role` tinyint(1) NOT NULL,
  `image_role` tinyint(1) NOT NULL,
  `popup_autoplay` tinyint(1) NOT NULL,
  `album_view_type` varchar(16) NOT NULL,
  `popup_enable_pinterest` tinyint(1) NOT NULL,
  `popup_enable_tumblr` tinyint(1) NOT NULL,
  `show_search_box` tinyint(1) NOT NULL,
  `search_box_width` int(4) NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `preload_images_count` int(11) NOT NULL,
  `thumb_click_action` varchar(16) NOT NULL,
  `thumb_link_target` tinyint(1) NOT NULL,
  `comment_moderation` tinyint(1) NOT NULL,
  `popup_hit_counter` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_option`
--

TRUNCATE TABLE `e3xea_bwg_option`;
--
-- Dump dei dati per la tabella `e3xea_bwg_option`
--

INSERT INTO `e3xea_bwg_option` (`id`, `images_directory`, `masonry`, `image_column_number`, `images_per_page`, `thumb_width`, `thumb_height`, `upload_thumb_width`, `upload_thumb_height`, `image_enable_page`, `image_title_show_hover`, `album_column_number`, `albums_per_page`, `album_title_show_hover`, `album_thumb_width`, `album_thumb_height`, `album_enable_page`, `extended_album_height`, `extended_album_description_enable`, `image_browser_width`, `image_browser_title_enable`, `image_browser_description_enable`, `blog_style_width`, `blog_style_title_enable`, `blog_style_images_per_page`, `blog_style_enable_page`, `slideshow_type`, `slideshow_interval`, `slideshow_width`, `slideshow_height`, `slideshow_enable_autoplay`, `slideshow_enable_shuffle`, `slideshow_enable_ctrl`, `slideshow_enable_filmstrip`, `slideshow_filmstrip_height`, `slideshow_enable_title`, `slideshow_title_position`, `slideshow_enable_description`, `slideshow_description_position`, `slideshow_enable_music`, `slideshow_audio_url`, `popup_width`, `popup_height`, `popup_type`, `popup_interval`, `popup_enable_filmstrip`, `popup_filmstrip_height`, `popup_enable_ctrl_btn`, `popup_enable_fullscreen`, `popup_enable_info`, `popup_info_always_show`, `popup_enable_rate`, `popup_enable_comment`, `popup_enable_email`, `popup_enable_captcha`, `popup_enable_download`, `popup_enable_fullsize_image`, `popup_enable_facebook`, `popup_enable_twitter`, `popup_enable_google`, `watermark_type`, `watermark_position`, `watermark_width`, `watermark_height`, `watermark_url`, `watermark_text`, `watermark_link`, `watermark_font_size`, `watermark_font`, `watermark_color`, `watermark_opacity`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `image_right_click`, `popup_fullscreen`, `gallery_role`, `album_role`, `image_role`, `popup_autoplay`, `album_view_type`, `popup_enable_pinterest`, `popup_enable_tumblr`, `show_search_box`, `search_box_width`, `preload_images`, `preload_images_count`, `thumb_click_action`, `thumb_link_target`, `comment_moderation`, `popup_hit_counter`) VALUES
(1, 'media', 'vertical', 5, 30, 180, 90, 300, 300, 1, 'none', 5, 30, 'hover', 120, 90, 1, 150, 1, 800, 1, 1, 800, 1, 5, 1, 'fade', 5, 800, 500, 0, 0, 1, 1, 90, 0, 'top-right', 0, 'bottom-right', 0, '', 800, 500, 'fade', 5, 1, 70, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 'none', 'bottom-left', 90, 90, 'components/com_gallery_wd/images/watermark.png', 'web-dorado.com', 'http://web-dorado.com', 20, 'Arial', 'FFFFFF', 30, 'none', 'middle-center', 15, 'components/com_gallery_wd/images/watermark.png', 'web-dorado.com', 20, 'arial.ttf', 'FFFFFF', 30, 0, 0, 0, 0, 0, 0, 'thumbnail', 0, 0, 0, 180, 1, 10, 'open_lightbox', 1, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_tags`
--

DROP TABLE IF EXISTS `e3xea_bwg_tags`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_tags` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_tags`
--

TRUNCATE TABLE `e3xea_bwg_tags`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_bwg_theme`
--

DROP TABLE IF EXISTS `e3xea_bwg_theme`;
CREATE TABLE IF NOT EXISTS `e3xea_bwg_theme` (
`id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumb_margin` int(4) NOT NULL,
  `thumb_padding` int(4) NOT NULL,
  `thumb_border_radius` varchar(128) NOT NULL,
  `thumb_border_width` int(4) NOT NULL,
  `thumb_border_style` varchar(128) NOT NULL,
  `thumb_border_color` varchar(128) NOT NULL,
  `thumb_bg_color` varchar(128) NOT NULL,
  `thumbs_bg_color` varchar(128) NOT NULL,
  `thumb_bg_transparent` int(4) NOT NULL,
  `thumb_box_shadow` varchar(128) NOT NULL,
  `thumb_transparent` int(4) NOT NULL,
  `thumb_align` varchar(128) NOT NULL,
  `thumb_hover_effect` varchar(128) NOT NULL,
  `thumb_hover_effect_value` varchar(128) NOT NULL,
  `thumb_transition` tinyint(1) NOT NULL,
  `thumb_title_font_color` varchar(64) NOT NULL,
  `thumb_title_font_style` varchar(64) NOT NULL,
  `thumb_title_pos` varchar(8) NOT NULL,
  `thumb_title_font_size` int(4) NOT NULL,
  `thumb_title_font_weight` varchar(64) NOT NULL,
  `thumb_title_margin` varchar(64) NOT NULL,
  `thumb_title_shadow` varchar(64) NOT NULL,
  `page_nav_position` varchar(64) NOT NULL,
  `page_nav_align` varchar(64) NOT NULL,
  `page_nav_number` tinyint(1) NOT NULL,
  `page_nav_font_size` int(4) NOT NULL,
  `page_nav_font_style` varchar(64) NOT NULL,
  `page_nav_font_color` varchar(64) NOT NULL,
  `page_nav_font_weight` varchar(64) NOT NULL,
  `page_nav_border_width` int(4) NOT NULL,
  `page_nav_border_style` varchar(64) NOT NULL,
  `page_nav_border_color` varchar(64) NOT NULL,
  `page_nav_border_radius` varchar(128) NOT NULL,
  `page_nav_margin` varchar(128) NOT NULL,
  `page_nav_padding` varchar(128) NOT NULL,
  `page_nav_button_bg_color` varchar(64) NOT NULL,
  `page_nav_button_bg_transparent` int(4) NOT NULL,
  `page_nav_box_shadow` varchar(128) NOT NULL,
  `page_nav_button_transition` tinyint(1) NOT NULL,
  `page_nav_button_text` tinyint(1) NOT NULL,
  `lightbox_overlay_bg_color` varchar(64) NOT NULL,
  `lightbox_overlay_bg_transparent` int(4) NOT NULL,
  `lightbox_bg_color` varchar(64) NOT NULL,
  `lightbox_ctrl_btn_pos` varchar(64) NOT NULL,
  `lightbox_ctrl_btn_align` varchar(64) NOT NULL,
  `lightbox_ctrl_btn_height` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_top` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_left` int(4) NOT NULL,
  `lightbox_ctrl_btn_transparent` int(4) NOT NULL,
  `lightbox_ctrl_btn_color` varchar(64) NOT NULL,
  `lightbox_toggle_btn_height` int(4) NOT NULL,
  `lightbox_toggle_btn_width` int(4) NOT NULL,
  `lightbox_ctrl_cont_bg_color` varchar(64) NOT NULL,
  `lightbox_ctrl_cont_transparent` int(4) NOT NULL,
  `lightbox_ctrl_cont_border_radius` int(4) NOT NULL,
  `lightbox_close_btn_transparent` int(4) NOT NULL,
  `lightbox_close_btn_bg_color` varchar(64) NOT NULL,
  `lightbox_close_btn_border_width` int(4) NOT NULL,
  `lightbox_close_btn_border_radius` varchar(128) NOT NULL,
  `lightbox_close_btn_border_style` varchar(128) NOT NULL,
  `lightbox_close_btn_border_color` varchar(64) NOT NULL,
  `lightbox_close_btn_box_shadow` varchar(128) NOT NULL,
  `lightbox_close_btn_color` varchar(64) NOT NULL,
  `lightbox_close_btn_size` int(4) NOT NULL,
  `lightbox_close_btn_width` int(4) NOT NULL,
  `lightbox_close_btn_height` int(4) NOT NULL,
  `lightbox_close_btn_top` varchar(64) NOT NULL,
  `lightbox_close_btn_right` varchar(64) NOT NULL,
  `lightbox_close_btn_full_color` varchar(64) NOT NULL,
  `lightbox_rl_btn_bg_color` varchar(64) NOT NULL,
  `lightbox_rl_btn_transparent` int(4) NOT NULL,
  `lightbox_rl_btn_border_radius` varchar(64) NOT NULL,
  `lightbox_rl_btn_border_width` int(4) NOT NULL,
  `lightbox_rl_btn_border_style` varchar(64) NOT NULL,
  `lightbox_rl_btn_border_color` varchar(64) NOT NULL,
  `lightbox_rl_btn_box_shadow` varchar(128) NOT NULL,
  `lightbox_rl_btn_color` varchar(64) NOT NULL,
  `lightbox_rl_btn_height` int(4) NOT NULL,
  `lightbox_rl_btn_width` int(4) NOT NULL,
  `lightbox_rl_btn_size` int(4) NOT NULL,
  `lightbox_close_rl_btn_hover_color` varchar(64) NOT NULL,
  `lightbox_comment_pos` varchar(64) NOT NULL,
  `lightbox_comment_width` int(4) NOT NULL,
  `lightbox_comment_bg_color` varchar(64) NOT NULL,
  `lightbox_comment_font_color` varchar(64) NOT NULL,
  `lightbox_comment_font_style` varchar(64) NOT NULL,
  `lightbox_comment_font_size` int(4) NOT NULL,
  `lightbox_comment_button_bg_color` varchar(64) NOT NULL,
  `lightbox_comment_button_border_color` varchar(64) NOT NULL,
  `lightbox_comment_button_border_width` int(4) NOT NULL,
  `lightbox_comment_button_border_style` varchar(64) NOT NULL,
  `lightbox_comment_button_border_radius` varchar(64) NOT NULL,
  `lightbox_comment_button_padding` varchar(64) NOT NULL,
  `lightbox_comment_input_bg_color` varchar(64) NOT NULL,
  `lightbox_comment_input_border_color` varchar(64) NOT NULL,
  `lightbox_comment_input_border_width` int(4) NOT NULL,
  `lightbox_comment_input_border_style` varchar(64) NOT NULL,
  `lightbox_comment_input_border_radius` varchar(64) NOT NULL,
  `lightbox_comment_input_padding` varchar(64) NOT NULL,
  `lightbox_comment_separator_width` int(4) NOT NULL,
  `lightbox_comment_separator_style` varchar(64) NOT NULL,
  `lightbox_comment_separator_color` varchar(64) NOT NULL,
  `lightbox_comment_author_font_size` int(4) NOT NULL,
  `lightbox_comment_date_font_size` int(4) NOT NULL,
  `lightbox_comment_body_font_size` int(4) NOT NULL,
  `lightbox_comment_share_button_color` varchar(64) NOT NULL,
  `lightbox_filmstrip_pos` varchar(64) NOT NULL,
  `lightbox_filmstrip_rl_bg_color` varchar(64) NOT NULL,
  `lightbox_filmstrip_rl_btn_size` int(4) NOT NULL,
  `lightbox_filmstrip_rl_btn_color` varchar(64) NOT NULL,
  `lightbox_filmstrip_thumb_margin` varchar(64) NOT NULL,
  `lightbox_filmstrip_thumb_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_border_style` varchar(64) NOT NULL,
  `lightbox_filmstrip_thumb_border_color` varchar(64) NOT NULL,
  `lightbox_filmstrip_thumb_border_radius` varchar(64) NOT NULL,
  `lightbox_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_color` varchar(64) NOT NULL,
  `lightbox_rl_btn_style` varchar(64) NOT NULL,
  `album_compact_back_font_color` varchar(64) NOT NULL,
  `album_compact_back_font_style` varchar(64) NOT NULL,
  `album_compact_back_font_size` int(4) NOT NULL,
  `album_compact_back_font_weight` varchar(64) NOT NULL,
  `album_compact_back_padding` varchar(64) NOT NULL,
  `album_compact_title_font_color` varchar(64) NOT NULL,
  `album_compact_title_font_style` varchar(64) NOT NULL,
  `album_compact_thumb_title_pos` varchar(8) NOT NULL,
  `album_compact_title_font_size` int(4) NOT NULL,
  `album_compact_title_font_weight` varchar(64) NOT NULL,
  `album_compact_title_margin` varchar(64) NOT NULL,
  `album_compact_title_shadow` varchar(64) NOT NULL,
  `album_compact_thumb_margin` int(4) NOT NULL,
  `album_compact_thumb_padding` int(4) NOT NULL,
  `album_compact_thumb_border_radius` varchar(128) NOT NULL,
  `album_compact_thumb_border_width` int(4) NOT NULL,
  `album_compact_thumb_border_style` varchar(128) NOT NULL,
  `album_compact_thumb_border_color` varchar(128) NOT NULL,
  `album_compact_thumb_bg_color` varchar(128) NOT NULL,
  `album_compact_thumbs_bg_color` varchar(128) NOT NULL,
  `album_compact_thumb_bg_transparent` int(4) NOT NULL,
  `album_compact_thumb_box_shadow` varchar(128) NOT NULL,
  `album_compact_thumb_transparent` int(4) NOT NULL,
  `album_compact_thumb_align` varchar(128) NOT NULL,
  `album_compact_thumb_hover_effect` varchar(128) NOT NULL,
  `album_compact_thumb_hover_effect_value` varchar(128) NOT NULL,
  `album_compact_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_thumb_margin` int(4) NOT NULL,
  `album_extended_thumb_padding` int(4) NOT NULL,
  `album_extended_thumb_border_radius` varchar(128) NOT NULL,
  `album_extended_thumb_border_width` int(4) NOT NULL,
  `album_extended_thumb_border_style` varchar(128) NOT NULL,
  `album_extended_thumb_border_color` varchar(128) NOT NULL,
  `album_extended_thumb_bg_color` varchar(128) NOT NULL,
  `album_extended_thumbs_bg_color` varchar(128) NOT NULL,
  `album_extended_thumb_bg_transparent` int(4) NOT NULL,
  `album_extended_thumb_box_shadow` varchar(128) NOT NULL,
  `album_extended_thumb_transparent` int(4) NOT NULL,
  `album_extended_thumb_align` varchar(128) NOT NULL,
  `album_extended_thumb_hover_effect` varchar(128) NOT NULL,
  `album_extended_thumb_hover_effect_value` varchar(128) NOT NULL,
  `album_extended_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_back_font_color` varchar(64) NOT NULL,
  `album_extended_back_font_style` varchar(64) NOT NULL,
  `album_extended_back_font_size` int(4) NOT NULL,
  `album_extended_back_font_weight` varchar(64) NOT NULL,
  `album_extended_back_padding` varchar(64) NOT NULL,
  `album_extended_div_bg_color` varchar(64) NOT NULL,
  `album_extended_div_bg_transparent` int(4) NOT NULL,
  `album_extended_div_border_radius` varchar(64) NOT NULL,
  `album_extended_div_margin` varchar(64) NOT NULL,
  `album_extended_div_padding` int(4) NOT NULL,
  `album_extended_div_separator_width` int(4) NOT NULL,
  `album_extended_div_separator_style` varchar(64) NOT NULL,
  `album_extended_div_separator_color` varchar(64) NOT NULL,
  `album_extended_thumb_div_bg_color` varchar(64) NOT NULL,
  `album_extended_thumb_div_border_radius` varchar(64) NOT NULL,
  `album_extended_thumb_div_border_width` int(4) NOT NULL,
  `album_extended_thumb_div_border_style` varchar(64) NOT NULL,
  `album_extended_thumb_div_border_color` varchar(64) NOT NULL,
  `album_extended_thumb_div_padding` varchar(64) NOT NULL,
  `album_extended_text_div_bg_color` varchar(64) NOT NULL,
  `album_extended_text_div_border_radius` varchar(64) NOT NULL,
  `album_extended_text_div_border_width` int(4) NOT NULL,
  `album_extended_text_div_border_style` varchar(64) NOT NULL,
  `album_extended_text_div_border_color` varchar(64) NOT NULL,
  `album_extended_text_div_padding` varchar(64) NOT NULL,
  `album_extended_title_span_border_width` int(4) NOT NULL,
  `album_extended_title_span_border_style` varchar(64) NOT NULL,
  `album_extended_title_span_border_color` varchar(64) NOT NULL,
  `album_extended_title_font_color` varchar(64) NOT NULL,
  `album_extended_title_font_style` varchar(64) NOT NULL,
  `album_extended_title_font_size` int(4) NOT NULL,
  `album_extended_title_font_weight` varchar(64) NOT NULL,
  `album_extended_title_margin_bottom` int(4) NOT NULL,
  `album_extended_title_padding` varchar(64) NOT NULL,
  `album_extended_desc_span_border_width` int(4) NOT NULL,
  `album_extended_desc_span_border_style` varchar(64) NOT NULL,
  `album_extended_desc_span_border_color` varchar(64) NOT NULL,
  `album_extended_desc_font_color` varchar(64) NOT NULL,
  `album_extended_desc_font_style` varchar(64) NOT NULL,
  `album_extended_desc_font_size` int(4) NOT NULL,
  `album_extended_desc_font_weight` varchar(64) NOT NULL,
  `album_extended_desc_padding` varchar(64) NOT NULL,
  `album_extended_desc_more_color` varchar(64) NOT NULL,
  `album_extended_desc_more_size` int(4) NOT NULL,
  `masonry_thumb_padding` int(4) NOT NULL,
  `masonry_thumb_border_radius` varchar(128) NOT NULL,
  `masonry_thumb_border_width` int(4) NOT NULL,
  `masonry_thumb_border_style` varchar(128) NOT NULL,
  `masonry_thumb_border_color` varchar(128) NOT NULL,
  `masonry_thumbs_bg_color` varchar(128) NOT NULL,
  `masonry_thumb_bg_transparent` int(4) NOT NULL,
  `masonry_thumb_transparent` int(4) NOT NULL,
  `masonry_thumb_align` varchar(128) NOT NULL,
  `masonry_thumb_hover_effect` varchar(128) NOT NULL,
  `masonry_thumb_hover_effect_value` varchar(128) NOT NULL,
  `masonry_thumb_transition` tinyint(1) NOT NULL,
  `slideshow_cont_bg_color` varchar(64) NOT NULL,
  `slideshow_close_btn_transparent` int(4) NOT NULL,
  `slideshow_rl_btn_bg_color` varchar(64) NOT NULL,
  `slideshow_rl_btn_border_radius` varchar(64) NOT NULL,
  `slideshow_rl_btn_border_width` int(4) NOT NULL,
  `slideshow_rl_btn_border_style` varchar(64) NOT NULL,
  `slideshow_rl_btn_border_color` varchar(64) NOT NULL,
  `slideshow_rl_btn_box_shadow` varchar(128) NOT NULL,
  `slideshow_rl_btn_color` varchar(64) NOT NULL,
  `slideshow_rl_btn_height` int(4) NOT NULL,
  `slideshow_rl_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_width` int(4) NOT NULL,
  `slideshow_close_rl_btn_hover_color` varchar(64) NOT NULL,
  `slideshow_filmstrip_pos` varchar(64) NOT NULL,
  `slideshow_filmstrip_thumb_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_border_style` varchar(64) NOT NULL,
  `slideshow_filmstrip_thumb_border_color` varchar(64) NOT NULL,
  `slideshow_filmstrip_thumb_border_radius` varchar(64) NOT NULL,
  `slideshow_filmstrip_thumb_margin` varchar(64) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_color` varchar(64) NOT NULL,
  `slideshow_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `slideshow_filmstrip_rl_bg_color` varchar(64) NOT NULL,
  `slideshow_filmstrip_rl_btn_color` varchar(64) NOT NULL,
  `slideshow_filmstrip_rl_btn_size` int(4) NOT NULL,
  `slideshow_title_font_size` int(4) NOT NULL,
  `slideshow_title_font` varchar(64) NOT NULL,
  `slideshow_title_color` varchar(64) NOT NULL,
  `slideshow_title_opacity` int(4) NOT NULL,
  `slideshow_title_border_radius` varchar(64) NOT NULL,
  `slideshow_title_background_color` varchar(64) NOT NULL,
  `slideshow_title_padding` varchar(64) NOT NULL,
  `slideshow_description_font_size` int(4) NOT NULL,
  `slideshow_description_font` varchar(64) NOT NULL,
  `slideshow_description_color` varchar(64) NOT NULL,
  `slideshow_description_opacity` int(4) NOT NULL,
  `slideshow_description_border_radius` varchar(64) NOT NULL,
  `slideshow_description_background_color` varchar(64) NOT NULL,
  `slideshow_description_padding` varchar(64) NOT NULL,
  `slideshow_dots_width` int(4) NOT NULL,
  `slideshow_dots_height` int(4) NOT NULL,
  `slideshow_dots_border_radius` varchar(64) NOT NULL,
  `slideshow_dots_background_color` varchar(64) NOT NULL,
  `slideshow_dots_margin` int(4) NOT NULL,
  `slideshow_dots_active_background_color` varchar(64) NOT NULL,
  `slideshow_dots_active_border_width` int(4) NOT NULL,
  `slideshow_dots_active_border_color` varchar(64) NOT NULL,
  `slideshow_play_pause_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_style` varchar(64) NOT NULL,
  `blog_style_margin` varchar(128) NOT NULL,
  `blog_style_padding` varchar(128) NOT NULL,
  `blog_style_border_radius` varchar(128) NOT NULL,
  `blog_style_border_width` int(4) NOT NULL,
  `blog_style_border_style` varchar(128) NOT NULL,
  `blog_style_border_color` varchar(128) NOT NULL,
  `blog_style_bg_color` varchar(128) NOT NULL,
  `blog_style_box_shadow` varchar(128) NOT NULL,
  `blog_style_transparent` int(4) NOT NULL,
  `blog_style_align` varchar(128) NOT NULL,
  `blog_style_share_buttons_bg_color` varchar(128) NOT NULL,
  `blog_style_share_buttons_margin` varchar(128) NOT NULL,
  `blog_style_share_buttons_border_radius` varchar(128) NOT NULL,
  `blog_style_share_buttons_border_width` int(4) NOT NULL,
  `blog_style_share_buttons_border_style` varchar(128) NOT NULL,
  `blog_style_share_buttons_border_color` varchar(128) NOT NULL,
  `blog_style_share_buttons_align` varchar(128) NOT NULL,
  `blog_style_img_font_size` int(4) NOT NULL,
  `blog_style_img_font_family` varchar(128) NOT NULL,
  `blog_style_img_font_color` varchar(128) NOT NULL,
  `blog_style_share_buttons_color` varchar(128) NOT NULL,
  `blog_style_share_buttons_bg_transparent` int(4) NOT NULL,
  `blog_style_share_buttons_font_size` int(4) NOT NULL,
  `image_browser_margin` varchar(128) NOT NULL,
  `image_browser_padding` varchar(128) NOT NULL,
  `image_browser_border_radius` varchar(128) NOT NULL,
  `image_browser_border_width` int(4) NOT NULL,
  `image_browser_border_style` varchar(128) NOT NULL,
  `image_browser_border_color` varchar(128) NOT NULL,
  `image_browser_bg_color` varchar(128) NOT NULL,
  `image_browser_box_shadow` varchar(128) NOT NULL,
  `image_browser_transparent` int(4) NOT NULL,
  `image_browser_align` varchar(128) NOT NULL,
  `image_browser_image_description_margin` varchar(128) NOT NULL,
  `image_browser_image_description_padding` varchar(128) NOT NULL,
  `image_browser_image_description_border_radius` varchar(128) NOT NULL,
  `image_browser_image_description_border_width` int(4) NOT NULL,
  `image_browser_image_description_border_style` varchar(128) NOT NULL,
  `image_browser_image_description_border_color` varchar(128) NOT NULL,
  `image_browser_image_description_bg_color` varchar(128) NOT NULL,
  `image_browser_image_description_align` varchar(128) NOT NULL,
  `image_browser_img_font_size` int(4) NOT NULL,
  `image_browser_img_font_family` varchar(128) NOT NULL,
  `image_browser_img_font_color` varchar(128) NOT NULL,
  `image_browser_full_padding` varchar(128) NOT NULL,
  `image_browser_full_border_radius` varchar(128) NOT NULL,
  `image_browser_full_border_width` int(4) NOT NULL,
  `image_browser_full_border_style` varchar(128) NOT NULL,
  `image_browser_full_border_color` varchar(128) NOT NULL,
  `image_browser_full_bg_color` varchar(128) NOT NULL,
  `image_browser_full_transparent` int(4) NOT NULL,
  `lightbox_info_pos` varchar(8) NOT NULL,
  `lightbox_info_align` varchar(8) NOT NULL,
  `lightbox_info_bg_color` varchar(8) NOT NULL,
  `lightbox_info_bg_transparent` int(4) NOT NULL,
  `lightbox_info_border_width` int(4) NOT NULL,
  `lightbox_info_border_style` varchar(32) NOT NULL,
  `lightbox_info_border_color` varchar(8) NOT NULL,
  `lightbox_info_border_radius` varchar(32) NOT NULL,
  `lightbox_info_padding` varchar(32) NOT NULL,
  `lightbox_info_margin` varchar(32) NOT NULL,
  `lightbox_title_color` varchar(8) NOT NULL,
  `lightbox_title_font_style` varchar(16) NOT NULL,
  `lightbox_title_font_weight` varchar(16) NOT NULL,
  `lightbox_title_font_size` int(4) NOT NULL,
  `lightbox_description_color` varchar(8) NOT NULL,
  `lightbox_description_font_style` varchar(16) NOT NULL,
  `lightbox_description_font_weight` varchar(8) NOT NULL,
  `lightbox_description_font_size` int(4) NOT NULL,
  `lightbox_rate_pos` varchar(8) NOT NULL,
  `lightbox_rate_align` varchar(32) NOT NULL,
  `lightbox_rate_icon` varchar(16) NOT NULL,
  `lightbox_rate_color` varchar(8) NOT NULL,
  `lightbox_rate_size` int(4) NOT NULL,
  `lightbox_rate_stars_count` int(4) NOT NULL,
  `lightbox_rate_padding` varchar(32) NOT NULL,
  `lightbox_rate_hover_color` varchar(8) NOT NULL,
  `lightbox_hit_pos` varchar(8) NOT NULL,
  `lightbox_hit_align` varchar(8) NOT NULL,
  `lightbox_hit_bg_color` varchar(8) NOT NULL,
  `lightbox_hit_bg_transparent` int(4) NOT NULL,
  `lightbox_hit_border_width` int(4) NOT NULL,
  `lightbox_hit_border_style` varchar(16) NOT NULL,
  `lightbox_hit_border_color` varchar(8) NOT NULL,
  `lightbox_hit_border_radius` varchar(32) NOT NULL,
  `lightbox_hit_padding` varchar(32) NOT NULL,
  `lightbox_hit_margin` varchar(32) NOT NULL,
  `lightbox_hit_color` varchar(8) NOT NULL,
  `lightbox_hit_font_style` varchar(16) NOT NULL,
  `lightbox_hit_font_weight` varchar(8) NOT NULL,
  `lightbox_hit_font_size` int(4) NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_bwg_theme`
--

TRUNCATE TABLE `e3xea_bwg_theme`;
--
-- Dump dei dati per la tabella `e3xea_bwg_theme`
--

INSERT INTO `e3xea_bwg_theme` (`id`, `name`, `thumb_margin`, `thumb_padding`, `thumb_border_radius`, `thumb_border_width`, `thumb_border_style`, `thumb_border_color`, `thumb_bg_color`, `thumbs_bg_color`, `thumb_bg_transparent`, `thumb_box_shadow`, `thumb_transparent`, `thumb_align`, `thumb_hover_effect`, `thumb_hover_effect_value`, `thumb_transition`, `thumb_title_font_color`, `thumb_title_font_style`, `thumb_title_pos`, `thumb_title_font_size`, `thumb_title_font_weight`, `thumb_title_margin`, `thumb_title_shadow`, `page_nav_position`, `page_nav_align`, `page_nav_number`, `page_nav_font_size`, `page_nav_font_style`, `page_nav_font_color`, `page_nav_font_weight`, `page_nav_border_width`, `page_nav_border_style`, `page_nav_border_color`, `page_nav_border_radius`, `page_nav_margin`, `page_nav_padding`, `page_nav_button_bg_color`, `page_nav_button_bg_transparent`, `page_nav_box_shadow`, `page_nav_button_transition`, `page_nav_button_text`, `lightbox_overlay_bg_color`, `lightbox_overlay_bg_transparent`, `lightbox_bg_color`, `lightbox_ctrl_btn_pos`, `lightbox_ctrl_btn_align`, `lightbox_ctrl_btn_height`, `lightbox_ctrl_btn_margin_top`, `lightbox_ctrl_btn_margin_left`, `lightbox_ctrl_btn_transparent`, `lightbox_ctrl_btn_color`, `lightbox_toggle_btn_height`, `lightbox_toggle_btn_width`, `lightbox_ctrl_cont_bg_color`, `lightbox_ctrl_cont_transparent`, `lightbox_ctrl_cont_border_radius`, `lightbox_close_btn_transparent`, `lightbox_close_btn_bg_color`, `lightbox_close_btn_border_width`, `lightbox_close_btn_border_radius`, `lightbox_close_btn_border_style`, `lightbox_close_btn_border_color`, `lightbox_close_btn_box_shadow`, `lightbox_close_btn_color`, `lightbox_close_btn_size`, `lightbox_close_btn_width`, `lightbox_close_btn_height`, `lightbox_close_btn_top`, `lightbox_close_btn_right`, `lightbox_close_btn_full_color`, `lightbox_rl_btn_bg_color`, `lightbox_rl_btn_transparent`, `lightbox_rl_btn_border_radius`, `lightbox_rl_btn_border_width`, `lightbox_rl_btn_border_style`, `lightbox_rl_btn_border_color`, `lightbox_rl_btn_box_shadow`, `lightbox_rl_btn_color`, `lightbox_rl_btn_height`, `lightbox_rl_btn_width`, `lightbox_rl_btn_size`, `lightbox_close_rl_btn_hover_color`, `lightbox_comment_pos`, `lightbox_comment_width`, `lightbox_comment_bg_color`, `lightbox_comment_font_color`, `lightbox_comment_font_style`, `lightbox_comment_font_size`, `lightbox_comment_button_bg_color`, `lightbox_comment_button_border_color`, `lightbox_comment_button_border_width`, `lightbox_comment_button_border_style`, `lightbox_comment_button_border_radius`, `lightbox_comment_button_padding`, `lightbox_comment_input_bg_color`, `lightbox_comment_input_border_color`, `lightbox_comment_input_border_width`, `lightbox_comment_input_border_style`, `lightbox_comment_input_border_radius`, `lightbox_comment_input_padding`, `lightbox_comment_separator_width`, `lightbox_comment_separator_style`, `lightbox_comment_separator_color`, `lightbox_comment_author_font_size`, `lightbox_comment_date_font_size`, `lightbox_comment_body_font_size`, `lightbox_comment_share_button_color`, `lightbox_filmstrip_pos`, `lightbox_filmstrip_rl_bg_color`, `lightbox_filmstrip_rl_btn_size`, `lightbox_filmstrip_rl_btn_color`, `lightbox_filmstrip_thumb_margin`, `lightbox_filmstrip_thumb_border_width`, `lightbox_filmstrip_thumb_border_style`, `lightbox_filmstrip_thumb_border_color`, `lightbox_filmstrip_thumb_border_radius`, `lightbox_filmstrip_thumb_deactive_transparent`, `lightbox_filmstrip_thumb_active_border_width`, `lightbox_filmstrip_thumb_active_border_color`, `lightbox_rl_btn_style`, `album_compact_back_font_color`, `album_compact_back_font_style`, `album_compact_back_font_size`, `album_compact_back_font_weight`, `album_compact_back_padding`, `album_compact_title_font_color`, `album_compact_title_font_style`, `album_compact_thumb_title_pos`, `album_compact_title_font_size`, `album_compact_title_font_weight`, `album_compact_title_margin`, `album_compact_title_shadow`, `album_compact_thumb_margin`, `album_compact_thumb_padding`, `album_compact_thumb_border_radius`, `album_compact_thumb_border_width`, `album_compact_thumb_border_style`, `album_compact_thumb_border_color`, `album_compact_thumb_bg_color`, `album_compact_thumbs_bg_color`, `album_compact_thumb_bg_transparent`, `album_compact_thumb_box_shadow`, `album_compact_thumb_transparent`, `album_compact_thumb_align`, `album_compact_thumb_hover_effect`, `album_compact_thumb_hover_effect_value`, `album_compact_thumb_transition`, `album_extended_thumb_margin`, `album_extended_thumb_padding`, `album_extended_thumb_border_radius`, `album_extended_thumb_border_width`, `album_extended_thumb_border_style`, `album_extended_thumb_border_color`, `album_extended_thumb_bg_color`, `album_extended_thumbs_bg_color`, `album_extended_thumb_bg_transparent`, `album_extended_thumb_box_shadow`, `album_extended_thumb_transparent`, `album_extended_thumb_align`, `album_extended_thumb_hover_effect`, `album_extended_thumb_hover_effect_value`, `album_extended_thumb_transition`, `album_extended_back_font_color`, `album_extended_back_font_style`, `album_extended_back_font_size`, `album_extended_back_font_weight`, `album_extended_back_padding`, `album_extended_div_bg_color`, `album_extended_div_bg_transparent`, `album_extended_div_border_radius`, `album_extended_div_margin`, `album_extended_div_padding`, `album_extended_div_separator_width`, `album_extended_div_separator_style`, `album_extended_div_separator_color`, `album_extended_thumb_div_bg_color`, `album_extended_thumb_div_border_radius`, `album_extended_thumb_div_border_width`, `album_extended_thumb_div_border_style`, `album_extended_thumb_div_border_color`, `album_extended_thumb_div_padding`, `album_extended_text_div_bg_color`, `album_extended_text_div_border_radius`, `album_extended_text_div_border_width`, `album_extended_text_div_border_style`, `album_extended_text_div_border_color`, `album_extended_text_div_padding`, `album_extended_title_span_border_width`, `album_extended_title_span_border_style`, `album_extended_title_span_border_color`, `album_extended_title_font_color`, `album_extended_title_font_style`, `album_extended_title_font_size`, `album_extended_title_font_weight`, `album_extended_title_margin_bottom`, `album_extended_title_padding`, `album_extended_desc_span_border_width`, `album_extended_desc_span_border_style`, `album_extended_desc_span_border_color`, `album_extended_desc_font_color`, `album_extended_desc_font_style`, `album_extended_desc_font_size`, `album_extended_desc_font_weight`, `album_extended_desc_padding`, `album_extended_desc_more_color`, `album_extended_desc_more_size`, `masonry_thumb_padding`, `masonry_thumb_border_radius`, `masonry_thumb_border_width`, `masonry_thumb_border_style`, `masonry_thumb_border_color`, `masonry_thumbs_bg_color`, `masonry_thumb_bg_transparent`, `masonry_thumb_transparent`, `masonry_thumb_align`, `masonry_thumb_hover_effect`, `masonry_thumb_hover_effect_value`, `masonry_thumb_transition`, `slideshow_cont_bg_color`, `slideshow_close_btn_transparent`, `slideshow_rl_btn_bg_color`, `slideshow_rl_btn_border_radius`, `slideshow_rl_btn_border_width`, `slideshow_rl_btn_border_style`, `slideshow_rl_btn_border_color`, `slideshow_rl_btn_box_shadow`, `slideshow_rl_btn_color`, `slideshow_rl_btn_height`, `slideshow_rl_btn_size`, `slideshow_rl_btn_width`, `slideshow_close_rl_btn_hover_color`, `slideshow_filmstrip_pos`, `slideshow_filmstrip_thumb_border_width`, `slideshow_filmstrip_thumb_border_style`, `slideshow_filmstrip_thumb_border_color`, `slideshow_filmstrip_thumb_border_radius`, `slideshow_filmstrip_thumb_margin`, `slideshow_filmstrip_thumb_active_border_width`, `slideshow_filmstrip_thumb_active_border_color`, `slideshow_filmstrip_thumb_deactive_transparent`, `slideshow_filmstrip_rl_bg_color`, `slideshow_filmstrip_rl_btn_color`, `slideshow_filmstrip_rl_btn_size`, `slideshow_title_font_size`, `slideshow_title_font`, `slideshow_title_color`, `slideshow_title_opacity`, `slideshow_title_border_radius`, `slideshow_title_background_color`, `slideshow_title_padding`, `slideshow_description_font_size`, `slideshow_description_font`, `slideshow_description_color`, `slideshow_description_opacity`, `slideshow_description_border_radius`, `slideshow_description_background_color`, `slideshow_description_padding`, `slideshow_dots_width`, `slideshow_dots_height`, `slideshow_dots_border_radius`, `slideshow_dots_background_color`, `slideshow_dots_margin`, `slideshow_dots_active_background_color`, `slideshow_dots_active_border_width`, `slideshow_dots_active_border_color`, `slideshow_play_pause_btn_size`, `slideshow_rl_btn_style`, `blog_style_margin`, `blog_style_padding`, `blog_style_border_radius`, `blog_style_border_width`, `blog_style_border_style`, `blog_style_border_color`, `blog_style_bg_color`, `blog_style_box_shadow`, `blog_style_transparent`, `blog_style_align`, `blog_style_share_buttons_bg_color`, `blog_style_share_buttons_margin`, `blog_style_share_buttons_border_radius`, `blog_style_share_buttons_border_width`, `blog_style_share_buttons_border_style`, `blog_style_share_buttons_border_color`, `blog_style_share_buttons_align`, `blog_style_img_font_size`, `blog_style_img_font_family`, `blog_style_img_font_color`, `blog_style_share_buttons_color`, `blog_style_share_buttons_bg_transparent`, `blog_style_share_buttons_font_size`, `image_browser_margin`, `image_browser_padding`, `image_browser_border_radius`, `image_browser_border_width`, `image_browser_border_style`, `image_browser_border_color`, `image_browser_bg_color`, `image_browser_box_shadow`, `image_browser_transparent`, `image_browser_align`, `image_browser_image_description_margin`, `image_browser_image_description_padding`, `image_browser_image_description_border_radius`, `image_browser_image_description_border_width`, `image_browser_image_description_border_style`, `image_browser_image_description_border_color`, `image_browser_image_description_bg_color`, `image_browser_image_description_align`, `image_browser_img_font_size`, `image_browser_img_font_family`, `image_browser_img_font_color`, `image_browser_full_padding`, `image_browser_full_border_radius`, `image_browser_full_border_width`, `image_browser_full_border_style`, `image_browser_full_border_color`, `image_browser_full_bg_color`, `image_browser_full_transparent`, `lightbox_info_pos`, `lightbox_info_align`, `lightbox_info_bg_color`, `lightbox_info_bg_transparent`, `lightbox_info_border_width`, `lightbox_info_border_style`, `lightbox_info_border_color`, `lightbox_info_border_radius`, `lightbox_info_padding`, `lightbox_info_margin`, `lightbox_title_color`, `lightbox_title_font_style`, `lightbox_title_font_weight`, `lightbox_title_font_size`, `lightbox_description_color`, `lightbox_description_font_style`, `lightbox_description_font_weight`, `lightbox_description_font_size`, `lightbox_rate_pos`, `lightbox_rate_align`, `lightbox_rate_icon`, `lightbox_rate_color`, `lightbox_rate_size`, `lightbox_rate_stars_count`, `lightbox_rate_padding`, `lightbox_rate_hover_color`, `lightbox_hit_pos`, `lightbox_hit_align`, `lightbox_hit_bg_color`, `lightbox_hit_bg_transparent`, `lightbox_hit_border_width`, `lightbox_hit_border_style`, `lightbox_hit_border_color`, `lightbox_hit_border_radius`, `lightbox_hit_padding`, `lightbox_hit_margin`, `lightbox_hit_color`, `lightbox_hit_font_style`, `lightbox_hit_font_weight`, `lightbox_hit_font_size`, `default_theme`) VALUES
(1, 'Theme 1', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'solid', 'E3E3E3', '0', '0', '3px 6px', 'FFFFFF', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 100, 'FFFFFF', 14, 100, '000000', 65, 4, 100, '000000', 2, '16px', 'none', 'FFFFFF', '0', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'CCCCCC', 'left', 400, '000000', 'CCCCCC', 'segoe ui', 12, '616161', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '2px', 1, 'solid', '383838', 14, 10, 12, 'CCCCCC', 'top', '3B3B3B', 20, 'FFFFFF', '0 1px', 1, 'solid', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 16, 'bold', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 0, 2, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '', 100, 'left', 'scale', '1.1', 0, '000000', 'segoe ui', 20, 'bold', '0', 'FFFFFF', 0, '0 0 0 0', '0 0 5px 0', 10, 1, 'solid', 'E0E0E0', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'F2D22E', 12, 4, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 0, 100, 'center', 'scale', '1.1', 0, '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '0px 0px 0px #000000', 'FFFFFF', 40, 20, 40, 'CCCCCC', 'top', 1, 'solid', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '3B3B3B', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '0 0 0 0', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 12, 12, '5px', 'F2D22E', 3, 'FFFFFF', 1, '000000', 60, 'fa-chevron', '2px', '0', '0', 1, 'solid', 'F5F5F5', 'FFFFFF', '', 80, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'B3AFAF', 0, 20, '2px auto', '4px', '0', 1, 'none', 'F5F5F5', 'EBEBEB', '', 80, 'center', '0px 5px 0px 5px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'EBEBEB', 'center', 15, 'segoe ui', '000000', '4px', '0', 2, 'none', 'F7F7F7', 'F5F5F5', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 1),
(2, 'Theme 2', 4, 4, '0', 5, 'none', 'FFFFFF', 'E8E8E8', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'rotate', '2deg', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'none', 'E3E3E3', '0', '0', '3px 6px', 'FCFCFC', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 80, 'FFFFFF', 14, 100, '000000', 80, 4, 95, '000000', 0, '16px', 'none', 'FFFFFF', '', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 2, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'FFFFFF', 'left', 400, '000000', 'CCCCCC', 'arial', 12, '333333', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '3px', 1, 'solid', '2B2B2B', 14, 10, 12, 'FFFFFF', 'top', '2B2B2B', 20, 'FFFFFF', '0 1px', 1, 'none', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 14, 'normal', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 4, 4, '0', 1, 'none', '000000', 'E8E8E8', 'FFFFFF', 100, '', 100, 'center', 'rotate', '2deg', 1, 2, 4, '0', 4, 'none', 'E8E8E8', 'E8E8E8', 'FFFFFF', 100, '', 100, 'left', 'rotate', '2deg', 0, '000000', 'segoe ui', 16, 'bold', '0', 'FFFFFF', 0, '0', '0 0 5px 0', 10, 1, 'none', 'CCCCCC', 'FFFFFF', '0', 0, 'none', 'CCCCCC', '0', 'FFFFFF', '0', 1, 'none', 'CCCCCC', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'FFC933', 12, 4, '2px', 1, 'none', 'CCCCCC', 'FFFFFF', 0, 80, 'center', 'rotate', '2deg', 0, '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 20, 40, 'DBDBDB', 'bottom', 1, 'none', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '303030', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '5px 10px 5px 10px', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 10, 10, '10px', '292929', 1, '292929', 2, 'FFC933', 60, 'fa-chevron', '2px', '4px', '0', 1, 'none', 'CCCCCC', 'E8E8E8', '', 70, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'A1A1A1', 0, 20, '2px auto', '4px', '2px', 1, 'none', 'E8E8E8', 'E8E8E8', '', 80, 'center', '24px 0px 0px 0px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'E8E8E8', 'center', 14, 'segoe ui', '000000', '4px', '0', 1, 'solid', 'EDEDED', 'FFFFFF', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_categories`
--

DROP TABLE IF EXISTS `e3xea_categories`;
CREATE TABLE IF NOT EXISTS `e3xea_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_categories`
--

TRUNCATE TABLE `e3xea_categories`;
--
-- Dump dei dati per la tabella `e3xea_categories`
--

INSERT INTO `e3xea_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 973, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'non-categorizzato', 'com_content', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 973, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'non-categorizzato', 'com_banners', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 973, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'non-categorizzato', 'com_contact', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 973, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'non-categorizzato', 'com_newsfeeds', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 973, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'non-categorizzato', 'com_weblinks', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 973, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'non-categorizzato', 'com_users', 'Non categorizzato', 'non-categorizzato', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 973, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_contact_details`
--

DROP TABLE IF EXISTS `e3xea_contact_details`;
CREATE TABLE IF NOT EXISTS `e3xea_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_contact_details`
--

TRUNCATE TABLE `e3xea_contact_details`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_content`
--

DROP TABLE IF EXISTS `e3xea_content`;
CREATE TABLE IF NOT EXISTS `e3xea_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_content`
--

TRUNCATE TABLE `e3xea_content`;
--
-- Dump dei dati per la tabella `e3xea_content`
--

INSERT INTO `e3xea_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, '-', 'benvenuto', '', '', -2, 2, '2013-11-16 00:00:00', 973, '', '2014-12-04 22:21:48', 973, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{"image_intro":"images\\/prova.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 6, '', '', 1, 289, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 64, 'ppp', 'ppp', '<p>xxxxxx</p>', '', -2, 2, '2014-11-07 14:21:52', 973, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-11-07 14:21:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 65, 'Pratiche Veicoli', 'servizi-pratiche-veicoli', '<p> </p>\r\n<p style="text-align: left;">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci dà l''opportunità di svolgere le pratiche in tempo reale essendo titolari di uno <a title="Servizi dello sportello telematico dell''automobilista" href="http://www.contiautoscuole.it/Sportello_telematico_automobilista.php">sportello telematico dell''automobilista (STA)</a>.</p>\r\n<p> </p>\r\n<table style="height: 322px;" width="861">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/carta_circolazione.gif" alt="" width="405" height="270" /></td>\r\n<td>\r\n<div id="pratiche"><b>PRATICHE VEICOLI DA NOI SVOLTE:</b></div>\r\n<ul>\r\n<li>Immatricolazioni veicoli nuovi</li>\r\n<li> Re-immatricolazioni</li>\r\n<li> Nazionalizzazioni</li>\r\n<li>Targhe prova</li>\r\n<li>Targhe ciclomotori</li>\r\n<li> Trasferimenti di proprietà (autoveicoli, motoveicoli e veicoli d''epoca)</li>\r\n<li> Duplicati Carta di Circolazione e Certificato di proprietà</li>\r\n<li>Radiazione per Demolizione o Esportazione all''estero</li>\r\n<li>Perdita o Rientro in Possesso</li>\r\n<li> Revoca fermo amministrativo</li>\r\n<li> Collaudi GPL o Gancio di traino</li>\r\n<li> Revisioni veicoli</li>\r\n<li>Visure o estratti cronologici al PRA</li>\r\n<li>Visure o Certificati camerali presso la C.C.I.A.A.</li>\r\n<li>Licenze conto proprio</li>\r\n<li>Iscrizione Albo Conto Terzi</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 2, '2014-11-10 13:36:08', 973, '', '2014-12-06 19:20:08', 973, 0, '0000-00-00 00:00:00', '2014-11-10 13:36:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 23, 5, '', '', 1, 186, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 66, 'Pratiche Patenti', 'pratiche-patenti', '<p>Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci dà l''opportunità di svolgere le pratiche in tempo reale essendo titolari di uno <a title="Servizi dello sportello telematico dell''automobilista" href="http://www.contiautoscuole.it/Sportello_telematico_automobilista.php">sportello telematico dell''automobilista (STA)</a>..<br /><br /><b>PRATICHE PATENTI DA NOI SVOLTE:</b></p>\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Conferme di Validità (rinnovo)di patenti veicoli e nautiche</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Conferma di Validità o Rilascio del Porto D''armi, Conduttore di caldaie, Fuochino ocertificazioni scolastiche (medico militare equiparato ad un medico legale in sede)</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Conferme di Validità con Prenotazione presso Commissione Medica (CML)</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Duplicati patenti, CQC e KA-KB</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Riclassificazioni</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Conversioni (trasformazioni) di patenti Estere e Militari</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Rolascio patente Internazionale</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Richiesta carta Tachigrafica presso la C.C.I.A.A.</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> Richiesta certificato RTF (Radio Telefonista) per condurre inbarcazioni</li>\r\n</ul>', '', 1, 2, '2014-11-10 13:48:20', 973, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-11-10 13:48:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 67, 'Assicurazioni', 'assicurazioni', '<p>Le nostri sedi offrono un''ampia scelta di Compagnie Assicurative quali Groupama, HDI, Itas ed altre se ne aggiungeranno una volta conclusi gli accordi ad oggi in corso.Quindi è possibile trovare ogni tipo di polizza.</p>\r\n<p><br /><b>I PRODOTTI OFFERTI SONO</b><br /><br /><b>Persone Beni e Patrimonio:</b></p>\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Persone</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Infortuni</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Casa e R.C.</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Previdenza complementare</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Risparmio e investimento</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Vita protezione</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Auto</li>\r\n</ul>\r\n<p><br /><b>Aziende ed Attività:</b></p>\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Vita Previdenza Aziende</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Aziende e Professiioni</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />Attività Agricole</li>\r\n</ul>', '', 1, 2, '2014-11-10 13:49:35', 973, '', '2014-11-10 13:50:36', 973, 0, '0000-00-00 00:00:00', '2014-11-10 13:49:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 68, 'SERVIZI', 'servizi', '', '', -2, 2, '2014-11-10 14:10:52', 973, '', '2014-11-10 14:16:45', 973, 0, '0000-00-00 00:00:00', '2014-11-10 14:10:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 69, 'Benvenuto in Conti Autoscuole & Delegazione Aci', 'benvenuto-in-conti-autoscuole-delegazione-aci', '<p style="text-align: center;"><span style="color: #4bbbe1;">Il Gruppo “Conti Autoscuole &amp; Delegazione Aci” sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.</span><br /><br /><span style="color: #4bbbe1;">Ci distinguiamo nell’insegnamento e nell’istruzione della guida utilizzando metodi all’avanguardia con l’ausilio di supporti informatici e multimediali, che ogni singolo allievo avrà a disposizione sia in aula che comodamente da casa.</span><br /><br /><span style="color: #4bbbe1;">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta. </span><br /><br /><span style="color: #4bbbe1;">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.</span></p>', '', 1, 2, '2014-11-10 14:23:45', 973, '', '2014-12-07 18:17:53', 973, 973, '2014-12-11 21:21:43', '2014-11-10 14:23:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 2, '', '', 1, 420, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 70, 'cirs orovva', 'cirs-orovva', '<p>prosi prova</p>', '', -2, 2, '2014-11-10 14:36:35', 973, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-11-10 14:36:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 71, 'Recupero punti', 'recupero-punti', '<section id="recuperoPunti">\r\n<h3><strong><span style="font-size: 10pt;">RECUPERO PUNTI PATENTE</span></strong></h3>\r\n<p>Dal 30/06/2003 è entrata in vigore la normativa per l’applicazione che disciplina la patente a punti.</p>\r\n<p>A ciascun titolare di patente di guida rilasciata in Italia è riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio è incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br />La perdita totale del punteggio, a seguito del cumulo di più violazioni realizzate nel tempo, determina l''obbligo di revisione della patente, cioè la ripetizione dell''esame teorico e della prova pratica, al fine di confermare la permanenza nel conducente dell''abilità tecnica alla guida e della conoscenza delle norme che disciplinano la circolazione stradale.<br /><br />Le lezioni si svolgono nei giorni feriali, dal lunedì a al venerdì dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14 per i titolari di patente Al e delle categorie A, B, B + E:<br />I corsi consentono di recuperare sei punti, hanno durata di dodici ore e devono essere svolti in un arco temporale complessivamente non superiore a due settimane consecutive; ogni lezione non può avere durata superiore a due ore giornaliere.<br /><br />per i titolari di patente C, C+E, D, D+E e certificato di abilitazione professionale di tipo KA e KB:<br />I corsi consentono di recuperare nove punti, hanno durata di diciotto ore e devono essere svolti in un arco temporale complessivamente non superiore a quattro settimane consecutive; ogni lezione non può avere durata superiore a due ore giornaliere.<br /><br /><br /></p>\r\n</section>\r\n<section id="recuperoPuntiCQC"><br />\r\n<h3><strong><span style="font-size: 10pt;">RECUPERO PUNTI C.Q.C.</span></strong></h3>\r\n<div>A ciascun titolare della C.Q.C. è riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio è incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br />La perdita totale del punteggio, a seguito del cumulo di più violazioni realizzate nel tempo, determina l''obbligo di revisione della C.Q.C., cioè la ripetizione dell''esame teorico parte comune e parte specialistica , al fine di confermare la permanenza nel conducente sulla conoscenza delle norme che disciplinano la circolazione stradale in ambito professionale.<br /><br />Bisogna tenere presente che la piattaforma su cui si basa la C.Q.C. è la patente.<br />Azzerare i punti sulla patente significa non avere più la base della C.Q.C. quindi non si può guidare ne veicoli privati ne veicoli professionali. <br />Se invece azzeriamo i punti della C.Q.C. non possiamo guidare veicoli a carattere professionale, ma è consentito condurre gli autoveicoli ad uso privato. <br /><br />I corsi di recupero dei punti per la carta di qualificazione del conducente consentono di recuperare fino ad un massimo di nove punti, hanno durata di 20 ore.<br />Il corso si conclude entro quattro settimane dalla data di avvio; ogni lezione non può avere durata superiore a tre ore giornaliere e le lezioni si svolgono nei giorni feriali, dal lunedì al venerdì dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14.</div>\r\n</section>', '', 1, 2, '2014-11-10 14:43:55', 973, '', '2014-11-10 15:41:02', 973, 973, '2014-11-10 15:41:02', '2014-11-10 14:43:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 43, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 72, 'C.Q.C.', 'c-q-c', '<section>\r\n<div id="CQC">\r\n<h3>CARTA DI QUALIFICAZIONE DEL CONDUCENTE (CQC)</h3>\r\n<b>SONO OBBLIGATI AL POSSESSO DELLA CQC </b><br /><br />I conducenti che effettuano professionalmente l’autotrasporto di persone e di cose su veicoli per la guida cui è richiesta la patente delle categorie C, CE, D e DE salvo esenzioni.<br /><br /><b>SONO ESENTATI DAL POSSESSO DELLA CQC I CONDUCENTI DI VEICOLI:</b>\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />la cui velocità massima autorizzata non supera 45 km/h;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />ad uso delle Forze armate, della Protezione civile, dei Vigili del fuoco e delle forze responsabili del mantenimento dell’ordine pubblico, o messi a loro disposizione;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />sottoposti a prove su strada a scopo di perfezionamento tecnico, riparazione o manutenzione, e nuovi o trasformati non ancora immessi in circolazione;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />utilizzati in servizio di emergenza o destinati a missioni di salvataggio;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />utilizzati per lezioni di guida ai fini del conseguimento della patente o dei certificati di abilitazione professionale;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />utilizzati per trasporti privati e non commerciali di passeggeri o di merci;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />che trasportano materiale o attrezzature, utilizzati dal conducente stesso nell’esercizio della propria attività, a condizione che la guida del veicolo non ne costituisca attività principale.</li>\r\n</ul>\r\n<br /><b>L’ESENZIONE NON SI APPLICA AI CONDUCENTI DEI VEICOLI:</b>\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />A) adibiti ad uso proprio assunti alle dipendenze di un’impresa con la qualifica di autista;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />B) scuolabus sia nel caso che l’attività sia esercitata in conto proprio che per conto terzi.</li>\r\n</ul>\r\n<br /><b>NON è RICHIESTO L''ESAME PER IL CONSEGUIMENTO DELLA CQC:</b><br /><br />Per i conducenti appartenenti a Stati membri dell’UE, che hanno conseguito la patente C o CE prima del 9.9.2009 o che sono titolari di patente D o DE muniti di KD rilasciato prima del 9.9.2008 , che circolano in Italia con veicoli immatricolati in Italia o all’estero e il Paese in cui sono residenti non ha previsto per loro un preciso obbligo di possesso di apposito titolo di qualificazione.<br />L’Italia riconosce la CQC rilasciata dagli altri Stati membri dell’UE o dello SEE.<br /><br /><b>LA CQC è RILASCIATA</b><br /><br />superando un esame di idoneità previa la frequenza di un corso di qualificazione iniziale conducenti, a coloro che siano:\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> A) residenti in Italia;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" /> B) cittadini di Stati non appartenenti all’UE o allo SEE, che svolgono la loro attività alle dipendenze di un’impresa di autotrasporto di persone o di cose stabilita su territorio italiano.</li>\r\n</ul>\r\n<br />Per conseguire la carta di qualificazione i conducenti (residenti in Italia o cittadini non appartenenti alla UE o al SEE che svolgono l’attività presso impresa stabilita in Italia) devono:<br />\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />A) essere titolari almeno della patente di categoria C, per iscriversi ad un corso di formazione iniziale per conseguire una CQC per il trasporto di cose, o di categoria D, per iscriversi ad un corso di formazione iniziale per conseguire una CQC per il trasporto di persone;</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />B) aver compiuto: <br />\r\n<ul>\r\n<li><b>18 anni</b>, per guidare veicoli adibiti al trasporto di merci per cui è richiesta la patente di guida delle categorie C e CE: nel rispetto del limite di massa complessiva a pieno carico di 7,5t qualora sia stato frequentato un corso di formazione iniziale accelerato di 140 ore; in deroga al suddetto limite qualora invece sia stato frequento un corso ordinario di 280 ore;</li>\r\n<li><b>21 anni</b>, per guidare veicoli adibiti al trasporto di passeggeri per cui è richiesta la patente di guida delle categorie D e DE, senza alcuna limitazione se è stato frequentato un corso di qualificazioni iniziale ordinario di 280 ore; con la limitazione del servizio di linea con percorrenza non superiore a 50 chilometri, ovvero del trasporto al massimo di 16 passeggeri, se è stato frequentato un corso di formazione accelerato di 140 ore;</li>\r\n<li><b>23 anni</b>, per guidare veicoli adibiti al trasporto di passeggeri per cui è richiesta la patente di guida delle categorie D e DE, avendo frequentato un corso di qualificazione iniziale accelerato di 140 ore.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<br /><b>IL CORSO PER CONSEGUIRE LA CQC(merci o viaggiatori) CONSISTE IN:</b>\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />130 ore di teoria ( 95 ore di programma Comune, 35 ore di programma Speciale per trasporto merci o persone)</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />10 ore di guida ( 7 ore e 30’ di parte Comune, 2 ore e 30’ di parte Speciale per trasporto merci o persone)</li>\r\n</ul>\r\n<br /><b>Chi possiede già una delle 2 CQC (o viaggiatori o merci) per conseguire quella che non possiede deve frequentare solo le ore delle parti speciali inerenti la CQC mancante:</b>\r\n<ul>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />35 ore di teoria (parte speciale merci o persone)</li>\r\n<li><img src="http://www.contiautoscuole.it/images/frecce%20rosse.gif" alt="" width="13px" />2 ore e 30’ di guida (parte speciale merci o persone)</li>\r\n</ul>\r\n<b>In entrambi i casi segue solo l’esame teorico.</b></div>\r\n<div id="CQCFoto"><img src="http://www.contiautoscuole.it/images/carta_qualificazione_conducente.gif" alt="carta di qualificazione del conducente" width="180px" /></div>\r\n</section>\r\n<section>\r\n<div id="CQC2"><br />\r\n<h3>RINNOVO DI VALIDITA'' DELLA C.Q.C.</h3>\r\n<b>(CORSO DI FORMAZIONE PERIODICA)</b><br /><br />Il Certificato di Qualificazione Conducenti per il trasporto Viaggiatori , per il trasporto Merci o per chi è in possesso di entrambe le Specializzazioni si deve rinnovare ogni 5 anni frequentando un Corso di Formazione Periodica della durata di 35 ore presso le nostre strutture autorizzate.<br />Per evitare che si giunga troppo vicini alla scadenza con l’impossibilità per chi lavora di frequentare il Corso con una certa calma, si può iniziare a frequentare i Corsi di Rinnovo a partire da i 18 mesi precedenti la scadenza stessa, legando però la nuova scadenza sempre a quella originaria ( es. scadenza 09/09/2013 – corso svolto luglio 2012 cioè un anno prima - la scadenza della nuova C.Q.C. sarà sempre 09/09/2018).</div>\r\n</section>', '', 1, 2, '2014-11-10 15:43:43', 973, '', '2014-11-10 15:45:56', 973, 0, '0000-00-00 00:00:00', '2014-11-10 15:43:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_content_frontpage`
--

DROP TABLE IF EXISTS `e3xea_content_frontpage`;
CREATE TABLE IF NOT EXISTS `e3xea_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_content_frontpage`
--

TRUNCATE TABLE `e3xea_content_frontpage`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_content_rating`
--

DROP TABLE IF EXISTS `e3xea_content_rating`;
CREATE TABLE IF NOT EXISTS `e3xea_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_content_rating`
--

TRUNCATE TABLE `e3xea_content_rating`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_content_types`
--

DROP TABLE IF EXISTS `e3xea_content_types`;
CREATE TABLE IF NOT EXISTS `e3xea_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_content_types`
--

TRUNCATE TABLE `e3xea_content_types`;
--
-- Dump dei dati per la tabella `e3xea_content_types`
--

INSERT INTO `e3xea_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_contentitem_tag_map`
--

DROP TABLE IF EXISTS `e3xea_contentitem_tag_map`;
CREATE TABLE IF NOT EXISTS `e3xea_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Svuota la tabella prima dell'inserimento `e3xea_contentitem_tag_map`
--

TRUNCATE TABLE `e3xea_contentitem_tag_map`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_core_log_searches`
--

DROP TABLE IF EXISTS `e3xea_core_log_searches`;
CREATE TABLE IF NOT EXISTS `e3xea_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_core_log_searches`
--

TRUNCATE TABLE `e3xea_core_log_searches`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_extensions`
--

DROP TABLE IF EXISTS `e3xea_extensions`;
CREATE TABLE IF NOT EXISTS `e3xea_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10027 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_extensions`
--

TRUNCATE TABLE `e3xea_extensions`;
--
-- Dump dei dati per la tabella `e3xea_extensions`
--

INSERT INTO `e3xea_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"it-IT","site":"it-IT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"65fc4852163fd1a6bbbddff724b2807a"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `e3xea_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 1, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Italian (IT)', 'language', 'it-IT', '', 0, 1, 0, 0, '{"name":"Italian (IT)","type":"language","creationDate":"2014-09-30","author":"Italian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved.","authorEmail":"info@joomla.it","authorUrl":"www.joomla.it","version":"3.3.6.1","description":"Italian site language for Joomla 3.3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Italian (IT)', 'language', 'it-IT', '', 1, 1, 0, 0, '{"name":"Italian (IT)","type":"language","creationDate":"2014-09-30","author":"Italian Translation Team ","copyright":"Copyright (C) 2005 - 2014 Open Source Matters and Joomla.it. All rights reserved.","authorEmail":"info@joomla.it","authorUrl":"www.joomla.it","version":"3.3.6.1","description":"Italian admin language for Joomla 3.3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Italian Language Pack', 'package', 'pkg_it-IT', '', 0, 1, 1, 0, '{"name":"Italian Language Pack","type":"package","creationDate":"30 settembre 2014","author":"Italian translation team : joomla.it","copyright":"Copyright (C) 2005 - 2014 joomla.it e Open Source Matters. Tutti i diritti riservati","authorEmail":"info@joomla.it","authorUrl":"www.joomla.it","version":"3.3.6.1","description":"Joomla! 3.3 Full Italian (it-IT) Language Package - Version 3.3.6v1","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'com_pbbooking', 'component', 'com_pbbooking', '', 1, 1, 0, 0, '{"name":"com_pbbooking","type":"component","creationDate":"2014-03-21","author":"Eric Fernance","copyright":"Copyright Info","authorEmail":"info@purplebeanie.com","authorUrl":"http:\\/\\/www.purplebeanie.com","version":"2.4.0.10","description":"A simple calendaring and booking component that includes calendar integration. Free Version.  Commercial, pro version is also available with more options.  Check my web site for more information.  http:\\/\\/www.purplebeanie.com.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'AS002044Free', 'template', 'as002044free', '', 0, 1, 1, 0, '{"name":"AS 002044 Free","type":"template","creationDate":"2014-11-23","author":"AS Designing","copyright":"AS Designing","authorEmail":"","authorUrl":"http:\\/\\/www.asdesigning.com","version":"2.2.0","description":"\\n\\t\\n\\t\\n\\n\\t\\t\\t<img src=\\"..\\/templates\\/as002044free\\/template_thumbnail.png\\" align=\\"left\\" class=\\"template_thumbnail\\" \\n\\t\\t\\t\\t\\tstyle=\\"margin: 0px 0px 10px 0px; display: none;\\" \\/>\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t<h1><span  style=\\"padding-top: 10px; display: block\\">AS Template 002044 <br>Free Version for Joomla! 3<\\/span><\\/h1>\\n\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-documentation\\/157-002044\\" target=\\"_blank\\">Click here<\\/a>  to see the template documentation.\\n\\t\\t\\t<br \\/>Visit our site for more templates: <a href=\\"http:\\/\\/www.astemplates.com\\" target=\\"_blank\\">http:\\/\\/www.astemplates.com<\\/a>.\\n\\t\\t\\t<br \\/><br \\/>\\n\\t\\t\\t\\n\\t\\t\\t<span style=\\"color:red; font-weight: bold; font-size:18px \\">\\n\\t\\t\\t<br \\/>Free Version is limited and may not include all configuration parameters and module positions.<br \\/>\\n\\t\\t\\t<\\/span>\\n\\t\\t\\t<br \\/><br \\/><br \\/>\\n\\t\\t\\t<h3><b>Extensions used in this template:<\\/b><\\/h3>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-extension-details\\/169-as-menu\\" target=\\"_blank\\"><b>AS Responsive Menu<\\/b><\\/a><br \\/>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-extension-details\\/165-as-artslider\\" target=\\"_blank\\"><b>AS Art Slider<\\/b><\\/a><br \\/>\\n\\t\\t\\t<hr \\/>\\n\\t\\t\\t<h3><b>Most popular AS Templates:<\\/b><\\/h3>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/209-002058\\" target=\\"_blank\\"><b>AS Template 002058<\\/b><\\/a><br \\/>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/170-002046\\" target=\\"_blank\\"><b>AS Template 002046<\\/b><\\/a><br \\/>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/212-002057\\" target=\\"_blank\\"><b>AS Template 002057<\\/b><\\/a><br \\/>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/218-002059\\" target=\\"_blank\\"><b>AS Template 002059<\\/b><\\/a><br \\/>\\n\\t\\t\\t    <a href=\\"http:\\/\\/www.astemplates.com\\/joomla-template-details\\/219-002060\\" target=\\"_blank\\"><b>AS Template 002060<\\/b><\\/a>\\n\\t\\t\\t<br \\/><br \\/>\\t\\n\\t","group":""}', '{"tmpl_style":"style.default.css","body_font_family":"Arial","body_font_size":"12","body_font_color":"","hfont_family":"Arial","h1_font_size":"","h2_font_size":"","h3_font_size":"","h4_font_size":"","h5_font_size":"","link_font_color":"","hlink_font_color":"","btn_font_color":"","btn_hfont_color":"","btn_gradient_topcolor":"","btn_gradient_bottomcolor":"","logo_size":"4","logo_type":"1","logo_img":"","logo_txt":"","logo_font_family":"PT Sans","logo_font_size":"","logo_font_style":"normal","logo_font_weight":"normal","logo_font_color":"2594BA","slogan_txt":"","slogan_font_family":"PT Sans","slogan_font_size":"12","slogan_font_style":"normal","slogan_font_weight":"normal","slogan_font_color":"161616","aside_left_width":"4","aside_right_width":"4","feature_totop":"1","feature_totop_text":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'JS FlexSlider', 'module', 'mod_js_flexslider', '', 0, 1, 0, 0, '{"name":"JS FlexSlider","type":"module","creationDate":"October 2012","author":"JoomSpirit","copyright":"Copyright 2012 JoomSpirit","authorEmail":"contact@joomspirit.com","authorUrl":"","version":"2.2","description":"     \\n    \\t \\n\\t\\t<link rel=\\"stylesheet\\" href=\\"..\\/modules\\/mod_js_flexslider\\/css_admin.css\\" type=\\"text\\/css\\" \\/>\\n\\t\\tThis free module allows you to display a responsive slideshow based on the fexslider JQuery script.\\n\\t\\t\\n\\t","group":""}', '{"load_jquery":"0","pauseOnHover":"true","initDelay":"0","randomize":"false","target":"_blank","enable_minheight":"no","min_height":"380","slide_theme":"false","bg_color":"#ffffff","theme_shadow":"theme-shadow-normal","theme_border":"00","theme_border_radius":"00","directionNav":"default","controlNav":"true","positionNav":"under","colorNav":"dark","colorNavActive":"black","transition":"fade","direction":"horizontal","animSpeed":"2000","pauseTime":"3500","bg_caption":"black","transparency_caption":"2","position_caption":"bottom","text_align":"centered","color_caption":"#dddddd","image1alt":"","image1cap":"","image1customlink":"","image2alt":"","image2cap":"","image2customlink":"","image3alt":"","image3cap":"","image3customlink":"","image4alt":"","image4cap":"","image4customlink":"","image5alt":"","image5cap":"","image5customlink":"","image6alt":"","image6cap":"","image6customlink":"","image7alt":"","image7cap":"","image7customlink":"","image8alt":"","image8cap":"","image8customlink":"","image9alt":"","image9cap":"","image9customlink":"","image10alt":"","image10cap":"","image10customlink":"","image11alt":"","image11cap":"","image11customlink":"","image12alt":"","image12cap":"","image12customlink":"","image13alt":"","image13cap":"","image13customlink":"","image14alt":"","image14cap":"","image14customlink":"","image15alt":"","image15cap":"","image15customlink":"","image16alt":"","image16cap":"","image16customlink":"","image17alt":"","image17cap":"","image17customlink":"","image18alt":"","image18cap":"","image18customlink":"","image19alt":"","image19cap":"","image19customlink":"","image20alt":"","image20cap":"","image20customlink":"","image21alt":"","image21cap":"","image21customlink":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'System - Simple jQuery', 'plugin', 'simplejquery', 'system', 0, 0, 1, 0, '{"name":"System - Simple jQuery","type":"plugin","creationDate":"Febbraio 2012","author":"Giovanni Mansillo","copyright":"Giovanni Mansillo","authorEmail":"giovanni.mansillo@gmail.com","authorUrl":"","version":"1.1","description":"Grazie per aver installato questa estensione: questo plugin permette di includere facilmente la libreria jQuery 1.7 all''interno delle pagine del sito.","group":""}', '{"safe-mode":"0","no-conflict":"1","no-conflict-var":"","code":"","ui":"0","ui-style":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'com_gallery_wd', 'component', 'com_gallery_wd', '', 1, 1, 0, 0, '{"name":"COM_GALLERY_WD","type":"component","creationDate":"April 2014","author":"Web-Dorado","copyright":"Copyright Info","authorEmail":"","authorUrl":"http:\\/\\/www.web-dorado.com","version":"1.0","description":"COM_GALLERY_WD_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Gallery WD Lite', 'module', 'mod_gallery_wd', '', 0, 1, 0, 0, '{"name":"Gallery WD Lite","type":"module","creationDate":"April 2014","author":"Web-Dorado","copyright":"Copyright (C) 2014 Web-Dorado.com 2014. All rights reserved.","authorEmail":"info@web-dorado.com","authorUrl":"http:\\/\\/www.web-dorado.com\\/","version":"1.0","description":"","group":""}', '{"type":"gallery","show":"random","dimensions":"250x250","count":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Gallery WD SlideShow Lite', 'module', 'mod_gallery_wd_slideshow', '', 0, 1, 0, 0, '{"name":"Gallery WD SlideShow Lite","type":"module","creationDate":"April 2014","author":"Web-Dorado","copyright":"Copyright (C) 2014 Web-Dorado.com 2014. All rights reserved.","authorEmail":"info@web-dorado.com","authorUrl":"http:\\/\\/www.web-dorado.com\\/","version":"1.0","description":"","group":""}', '{"dimensions":"250x250","slide_effect":"fade","time_interval":"5","enable_shuffle":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'gallery_wd_lite', 'package', 'pkg_gallery_wd_lite', '', 0, 1, 1, 0, '{"name":"Gallery WD Lite","type":"package","creationDate":">June 2014","author":"Web-Dorado.com","copyright":"Copyright (C) 2014 Web-Dorado.com 2014. All rights reserved.","authorEmail":"info@web-dorado.com","authorUrl":"http:\\/\\/www.web-dorado.com\\/","version":"1.0","description":"\\n  \\n  <p style=\\"color:green\\">Gallery WD Lite component is successfully installed.<br\\/>\\n Gallery WD Lite  module is successfully installed.<br\\/>\\n Gallery WD Lite SlideShow  module is successfully installed.<br\\/>\\n\\n\\tGallery WD Lite plugin is successfully installed.<br\\/>\\n<\\/p>\\n\\n ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'plg_content_ozio', 'plugin', 'ozio', 'content', 0, 1, 1, 0, '{"name":"plg_content_ozio","type":"plugin","creationDate":"2013","author":"Vamba","copyright":"Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.","authorEmail":"oziogallery3@joomla.it","authorUrl":"www.joomla.it","version":"4.2.2","description":"COM_OZIOGALLERY3_PLG_OZIO_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'plg_editors-xtd_oziogallery', 'plugin', 'oziogallery', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_oziogallery","type":"plugin","creationDate":"2013","author":"Open Source Solutions","copyright":"Open Source Solutions","authorEmail":"demis@opensourcesolutions.es","authorUrl":"http:\\/\\/www.opensourcesolutions.es\\/","version":"4.2.2","description":"PLG_EDITORS-XTD_OZIOGALLERY_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'plg_system_oziojquery', 'plugin', 'oziojquery', 'system', 0, 1, 1, 0, '{"name":"plg_system_oziojquery","type":"plugin","creationDate":"2014","author":"Alexred","copyright":"Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.","authorEmail":"info@joomla.it","authorUrl":"www.joomla.it","version":"1.0.1","description":"COM_OZIOGALLERY3_PLG_OZIOJQUERY_XML_DESCRIPTION","group":""}', '{}', '', '', 973, '2014-12-11 15:32:02', 0, 0),
(10016, 'oziofullscreen', 'template', 'oziofullscreen', '', 0, 1, 1, 0, '{"name":"oziofullscreen","type":"template","creationDate":"2013","author":"Garda Informatica","copyright":"(C) 2013 - Garda Informatica","authorEmail":"info@gardainformatica.it","authorUrl":"http:\\/\\/www.gardainformatica.it","version":"1.0.1","description":"Ozio Fullscreen Template for Joomla! 3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'com_oziogallery3', 'component', 'com_oziogallery3', '', 1, 1, 0, 0, '{"name":"com_oziogallery3","type":"component","creationDate":"2013","author":"Alexred","copyright":"(C) 2008 - 2014 - TOT The Ozio Team","authorEmail":"info@joomla.it","authorUrl":"http:\\/\\/www.joomla.it","version":"4.3.3","description":"Ozio Gallery for Joomla! 3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'ARI Ext Menu', 'module', 'mod_ariextmenu', '', 0, 1, 0, 0, '{"name":"ARI Ext Menu","type":"module","creationDate":"May 2014","author":"ARI Soft","copyright":"ARI Soft","authorEmail":"info@ari-soft.com","authorUrl":"www.ari-soft.com","version":"2.2.11","description":"ARI_EXT_MENU_MODULE","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'plg_user_profileautoscuola', 'plugin', 'profileautoscuola', 'user', 0, 1, 1, 0, '{"name":"plg_user_profileautoscuola","type":"plugin","creationDate":"Dicember 2014","author":"Alessandro Russo","copyright":"","authorEmail":"alessandro.russo80@gmail.com","authorUrl":"www.joomla.org","version":"1.0.0","description":"PLG_USER_PROFILEAUTOSCUOLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'Cinch Menu', 'module', 'mod_cinch_menu', '', 0, 1, 0, 0, '{"name":"Cinch Menu","type":"module","creationDate":"March 2013","author":"Pixel Point Creative - Cinch Menu Module","copyright":"Copyright (c) Pixel Point Creative LLC.","authorEmail":"info@pixelpointcreative.com","authorUrl":"www.pixelpointcreative.com","version":"1.7","description":"Cinch menu is a responsive vertical or horizontal menu with many options.","group":""}', '{"moduleclass_sfx":"","startlevel":"1","endlevel":"all","type":"flyout","stype_layout":"vertical","event":"click","duration":"300","showsub":"true","subwidth":"200","menu_direction":"left","mainitemcolor":"#FFFFFF","bghovercolor":"#000","textlinkcolor":"#A3A3A3","texthovercolor":"#ED8000","textalign":"left","showbullet":"true","bulletalign":"right","jquery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_filters`
--

DROP TABLE IF EXISTS `e3xea_finder_filters`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_filters`
--

TRUNCATE TABLE `e3xea_finder_filters`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links`
--

DROP TABLE IF EXISTS `e3xea_finder_links`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links`
--

TRUNCATE TABLE `e3xea_finder_links`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms0`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms0`
--

TRUNCATE TABLE `e3xea_finder_links_terms0`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms1`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms1`
--

TRUNCATE TABLE `e3xea_finder_links_terms1`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms2`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms2`
--

TRUNCATE TABLE `e3xea_finder_links_terms2`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms3`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms3`
--

TRUNCATE TABLE `e3xea_finder_links_terms3`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms4`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms4`
--

TRUNCATE TABLE `e3xea_finder_links_terms4`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms5`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms5`
--

TRUNCATE TABLE `e3xea_finder_links_terms5`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms6`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms6`
--

TRUNCATE TABLE `e3xea_finder_links_terms6`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms7`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms7`
--

TRUNCATE TABLE `e3xea_finder_links_terms7`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms8`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms8`
--

TRUNCATE TABLE `e3xea_finder_links_terms8`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_terms9`
--

DROP TABLE IF EXISTS `e3xea_finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_terms9`
--

TRUNCATE TABLE `e3xea_finder_links_terms9`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_termsa`
--

DROP TABLE IF EXISTS `e3xea_finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_termsa`
--

TRUNCATE TABLE `e3xea_finder_links_termsa`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_termsb`
--

DROP TABLE IF EXISTS `e3xea_finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_termsb`
--

TRUNCATE TABLE `e3xea_finder_links_termsb`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_termsc`
--

DROP TABLE IF EXISTS `e3xea_finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_termsc`
--

TRUNCATE TABLE `e3xea_finder_links_termsc`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_termsd`
--

DROP TABLE IF EXISTS `e3xea_finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_termsd`
--

TRUNCATE TABLE `e3xea_finder_links_termsd`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_termse`
--

DROP TABLE IF EXISTS `e3xea_finder_links_termse`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_termse`
--

TRUNCATE TABLE `e3xea_finder_links_termse`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_links_termsf`
--

DROP TABLE IF EXISTS `e3xea_finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_links_termsf`
--

TRUNCATE TABLE `e3xea_finder_links_termsf`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_taxonomy`
--

DROP TABLE IF EXISTS `e3xea_finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_taxonomy`
--

TRUNCATE TABLE `e3xea_finder_taxonomy`;
--
-- Dump dei dati per la tabella `e3xea_finder_taxonomy`
--

INSERT INTO `e3xea_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `e3xea_finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_taxonomy_map`
--

TRUNCATE TABLE `e3xea_finder_taxonomy_map`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_terms`
--

DROP TABLE IF EXISTS `e3xea_finder_terms`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_terms`
--

TRUNCATE TABLE `e3xea_finder_terms`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_terms_common`
--

DROP TABLE IF EXISTS `e3xea_finder_terms_common`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_terms_common`
--

TRUNCATE TABLE `e3xea_finder_terms_common`;
--
-- Dump dei dati per la tabella `e3xea_finder_terms_common`
--

INSERT INTO `e3xea_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_tokens`
--

DROP TABLE IF EXISTS `e3xea_finder_tokens`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_tokens`
--

TRUNCATE TABLE `e3xea_finder_tokens`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `e3xea_finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_tokens_aggregate`
--

TRUNCATE TABLE `e3xea_finder_tokens_aggregate`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_finder_types`
--

DROP TABLE IF EXISTS `e3xea_finder_types`;
CREATE TABLE IF NOT EXISTS `e3xea_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_finder_types`
--

TRUNCATE TABLE `e3xea_finder_types`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_languages`
--

DROP TABLE IF EXISTS `e3xea_languages`;
CREATE TABLE IF NOT EXISTS `e3xea_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_languages`
--

TRUNCATE TABLE `e3xea_languages`;
--
-- Dump dei dati per la tabella `e3xea_languages`
--

INSERT INTO `e3xea_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'it-IT', 'Italiano (IT)', 'Italian (IT)', 'it', 'it', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_menu`
--

DROP TABLE IF EXISTS `e3xea_menu`;
CREATE TABLE IF NOT EXISTS `e3xea_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_menu`
--

TRUNCATE TABLE `e3xea_menu`;
--
-- Dump dei dati per la tabella `e3xea_menu`
--

INSERT INTO `e3xea_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 117, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 45, 50, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 46, 47, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 48, 49, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 51, 52, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 53, 54, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 55, 56, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 57, 58, 0, '*', 1),
(101, 'mainmenu', 'HOME', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 1, '*', 0),
(102, 'usermenu', 'Il tuo profilo', 'il-tuo-profilo', '', 'il-tuo-profilo', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(103, 'usermenu', 'Amministrazione', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 17, 18, 0, '*', 0),
(104, 'usermenu', 'Invia un articolo', 'invia-un-articolo', '', 'invia-un-articolo', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(105, 'usermenu', 'Invia un link web', 'invia-un-link-web', '', 'invia-un-link-web', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(106, 'usermenu', 'Impostazioni Template', 'impostazioni-template', '', 'impostazioni-template', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(107, 'usermenu', 'Impostazioni Sito', 'impostazioni-sito', '', 'impostazioni-sito', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(108, 'mainmenu', 'PRENOTAZIONI', 'prenotazioni', '', 'prenotazioni', 'index.php?option=com_pbbooking&view=pbbooking&layout=calendar', 'component', 1, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(109, 'main', 'com_pbbooking', 'com-pbbooking', '', 'com-pbbooking', 'index.php?option=com_pbbooking', 'component', 0, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 63, 76, 0, '', 1),
(110, 'main', 'COM_PBBOOKING_SUB_MENU_SERVICES', 'com-pbbooking-sub-menu-services', '', 'com-pbbooking/com-pbbooking-sub-menu-services', 'index.php?option=com_pbbooking&task=display&controller=treatment', 'component', 0, 109, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 64, 65, 0, '', 1),
(111, 'main', 'COM_PBBOOKING_SUB_MENU_MANAGE_CALENDARS', 'com-pbbooking-sub-menu-manage-calendars', '', 'com-pbbooking/com-pbbooking-sub-menu-manage-calendars', 'index.php?option=com_pbbooking&task=display&controller=calendar', 'component', 0, 109, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 66, 67, 0, '', 1),
(112, 'main', 'COM_PBBOOKING_SUB_MENU_MANAGE_CONFIGURATION', 'com-pbbooking-sub-menu-manage-configuration', '', 'com-pbbooking/com-pbbooking-sub-menu-manage-configuration', 'index.php?option=com_pbbooking&task=edit&controller=configuration', 'component', 0, 109, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 68, 69, 0, '', 1),
(113, 'main', 'COM_PBBOOKING_SUB_MENU_MANAGE_CUSTOM_FIELDS', 'com-pbbooking-sub-menu-manage-custom-fields', '', 'com-pbbooking/com-pbbooking-sub-menu-manage-custom-fields', 'index.php?option=com_pbbooking&task=display&controller=customfields', 'component', 0, 109, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 70, 71, 0, '', 1),
(114, 'main', 'COM_PBBOOKING_SUB_MENU_MANAGE_DIARIES', 'com-pbbooking-sub-menu-manage-diaries', '', 'com-pbbooking/com-pbbooking-sub-menu-manage-diaries', 'index.php?option=com_pbbooking&task=display&controller=manage', 'component', 0, 109, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 72, 73, 0, '', 1),
(115, 'main', 'COM_PBBOOKNG_TRADING_HOURS_HOLIDAYS', 'com-pbbookng-trading-hours-holidays', '', 'com-pbbooking/com-pbbookng-trading-hours-holidays', 'index.php?option=com_pbbooking&task=blockdays&controller=manage', 'component', 0, 109, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 74, 75, 0, '', 1),
(116, 'mainmenu', 'PRATICHE', 'articolo', '', 'articolo', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"1","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_vote":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 84, 0, '*', 0),
(117, 'mainmenu', 'CORSI', '2014-11-10-10-44-17', '', '2014-11-10-10-44-17', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 90, 0, '*', 0),
(118, 'mainmenu', 'SEDI', 'sedi', '', 'sedi', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(119, 'mainmenu', 'NEWS', 'news', '', 'news', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(120, 'mainmenu', 'CHI SIAMO', 'chi-siamo', '', 'chi-siamo', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(121, 'mainmenu', 'GALLERY', 'gallery', '', 'gallery', 'index.php?option=com_oziogallery3&view=nano', 'component', 1, 1, 1, 10017, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"ozio_nano_kind":"picasa","ozio_nano_userID":"110359559620842741677","albumvisibility":"public","ozio_nano_albumList":["6006243167799016561\\u0016MotoGP","5784733207475611073\\u0016Foto del profilo"],"limitedalbum":"","limitedpassword":"","ozio_nano_blackList":"Scrapbook|profil|2013-","ozio_nano_whiteList":"","ozio_nano_photoSorting":"standard","ozio_nano_albumSorting":"standard","ozio_nano_displayBreadcrumb":"1","ozio_nano_thumbnailHeight_kind":"auto","ozio_nano_thumbnailHeight":"134","ozio_nano_thumbnailWidth":"226","ozio_nano_thumbnailGutterWidth":"5","ozio_nano_thumbnailGutterHeight":"5","ozio_nano_thumbnailHoverEffect":["scale120"],"ozio_nano_theme":"clean","ozio_nano_colorScheme":"light","ozio_nano_thumbnailAlignment":"center","ozio_nano_maxItemsPerLine":"0","ozio_nano_maxWidth":"0","ozio_nano_thumbnailLabel_position":"overImageOnBottom","ozio_nano_thumbnailLabel_display":"1","ozio_nano_thumbnailLabel_maxTitle":"25","ozio_nano_thumbnailLabel_hideIcons":"1","ozio_nano_thumbnailLabel_align":"left","ozio_nano_thumbnailLabel_itemsCount":"title","ozio_nano_colorSchemeViewer":"light","ozio_nano_viewerToolbar_display":"1","ozio_nano_viewerToolbar_position":"bottom","ozio_nano_viewerToolbar_style":"innerImage","ozio_nano_galleryToolbarWidthAligned":"1","ozio_nano_slideshowDelay":"3000","ozio_nano_imageTransition":"swipe","ozio_nano_paginationMaxLinesPerPage":"0","ozio_nano_thumbnailLazyLoad":"1","ozio_nano_thumbnailLazyLoadTreshold":"150","ozio_nano_galleryFullpageButton":"0","bottom_description":"","markers_icon":"","load_css_bootstrap":"0","ozio_nano_locationHash":"1","info_button":"1","infobox_bg_url":"https:\\/\\/lh4.googleusercontent.com\\/nr01-F6eM6Mb09CuDZBLvnxzpyRMpWQ0amrS593Rb7Q=w1200","hide_infobox_album":"0","hide_infobox_photo":"0","hide_infobox_date":"0","hide_infobox_width_height":"0","hide_infobox_file_name":"0","hide_infobox_file_size":"0","hide_infobox_model":"0","hide_infobox_focallength":"0","hide_infobox_exposure":"0","hide_infobox_fstop":"0","hide_infobox_iso":"0","hide_infobox_make":"0","hide_infobox_flash":"0","hide_infobox_views":"0","hide_infobox_comments":"0","hide_infobox_link":"0","hide_infobox_download":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(122, 'mainmenu', 'Veicoli', 'pratiche-veicoli', '', 'articolo/pratiche-veicoli', 'index.php?option=com_content&view=article&id=3', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 78, 79, 0, '*', 0),
(123, 'mainmenu', 'Patenti', 'pratiche-patenti', '', 'articolo/pratiche-patenti', 'index.php?option=com_content&view=article&id=4', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 80, 81, 0, '*', 0),
(124, 'mainmenu', 'Assicurazioni', 'assicurazioni', '', 'articolo/assicurazioni', 'index.php?option=com_content&view=article&id=5', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 82, 83, 0, '*', 0),
(125, 'mainmenu', 'Recupero punti', 'recupero-punti', '', '2014-11-10-10-44-17/recupero-punti', 'index.php?option=com_content&view=article&id=9', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 86, 87, 0, '*', 0),
(126, 'mainmenu', 'C.Q.C.', 'c-q-c', '', '2014-11-10-10-44-17/c-q-c', 'index.php?option=com_content&view=article&id=10', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 88, 89, 0, '*', 0),
(127, 'main', 'COM_GALLERY_WD', 'com-gallery-wd', '', 'com-gallery-wd', 'index.php?option=com_gallery_wd', 'component', 0, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 99, 114, 0, '', 1),
(128, 'main', 'COM_GALLERY_WD_GALLERYES', 'com-gallery-wd-galleryes', '', 'com-gallery-wd/com-gallery-wd-galleryes', 'index.php?option=com_gallery_wd&view=galleries', 'component', 0, 127, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 100, 101, 0, '', 1),
(129, 'main', 'COM_GALLERY_WD_ALBUMS', 'com-gallery-wd-albums', '', 'com-gallery-wd/com-gallery-wd-albums', 'index.php?option=com_gallery_wd&view=albums', 'component', 0, 127, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 102, 103, 0, '', 1),
(130, 'main', 'COM_GALLERY_WD_TAGS', 'com-gallery-wd-tags', '', 'com-gallery-wd/com-gallery-wd-tags', 'index.php?option=com_gallery_wd&view=tags', 'component', 0, 127, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 104, 105, 0, '', 1),
(131, 'main', 'COM_GALLERY_WD_OPTIONS', 'com-gallery-wd-options', '', 'com-gallery-wd/com-gallery-wd-options', 'index.php?option=com_gallery_wd&view=options', 'component', 0, 127, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 106, 107, 0, '', 1),
(132, 'main', 'COM_GALLERY_WD_THEMES', 'com-gallery-wd-themes', '', 'com-gallery-wd/com-gallery-wd-themes', 'index.php?option=com_gallery_wd&view=themes', 'component', 0, 127, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 108, 109, 0, '', 1),
(133, 'main', 'COM_GALLERY_WD_SHORTCODE', 'com-gallery-wd-shortcode', '', 'com-gallery-wd/com-gallery-wd-shortcode', 'index.php?option=com_gallery_wd&view=shortcode', 'component', 0, 127, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 110, 111, 0, '', 1),
(134, 'main', 'COM_GALLERY_WD_LICENSING', 'com-gallery-wd-licensing', '', 'com-gallery-wd/com-gallery-wd-licensing', 'index.php?option=com_gallery_wd&view=licensing', 'component', 0, 127, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 112, 113, 0, '', 1),
(135, 'main', 'com_oziogallery3', 'com-oziogallery3', '', 'com-oziogallery3', 'index.php?option=com_oziogallery3', 'component', 0, 1, 1, 10017, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_oziogallery3/assets/images/oziogallery3.png', 0, '', 115, 116, 0, '', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_menu_types`
--

DROP TABLE IF EXISTS `e3xea_menu_types`;
CREATE TABLE IF NOT EXISTS `e3xea_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_menu_types`
--

TRUNCATE TABLE `e3xea_menu_types`;
--
-- Dump dei dati per la tabella `e3xea_menu_types`
--

INSERT INTO `e3xea_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Menu Principale', 'Menu Principale del sito'),
(2, 'usermenu', 'Menu utente', 'Menu per gli utenti connessi');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_messages`
--

DROP TABLE IF EXISTS `e3xea_messages`;
CREATE TABLE IF NOT EXISTS `e3xea_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_messages`
--

TRUNCATE TABLE `e3xea_messages`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_messages_cfg`
--

DROP TABLE IF EXISTS `e3xea_messages_cfg`;
CREATE TABLE IF NOT EXISTS `e3xea_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_messages_cfg`
--

TRUNCATE TABLE `e3xea_messages_cfg`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_modules`
--

DROP TABLE IF EXISTS `e3xea_modules`;
CREATE TABLE IF NOT EXISTS `e3xea_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_modules`
--

TRUNCATE TABLE `e3xea_modules`;
--
-- Dump dei dati per la tabella `e3xea_modules`
--

INSERT INTO `e3xea_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu Principale', '', '', 1, 'as-position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'I più letti', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Articoli recenti', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Utenti connessi', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","forum_url":"http:\\/\\/forum.joomla.it","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Titolo', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Accesso Utenti', '', '', 1, 'as-position-10', 973, '2014-12-12 14:03:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, 'it-IT'),
(17, 51, 'Percorso', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Stato multilingua', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Argomenti Popolari', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Informazioni del sito', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{"serverinfo":"1","siteinfo":"1","counter":"0","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 57, 'Ultimi Articoli', '', '', 1, 'as-position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 58, 'Menu Utente', '', '', 1, 'as-position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 59, 'Immagine di testata', '', '<p><img src="images/headers/blue-flower.jpg" alt="Blue Flower" /></p>', 0, 'position-3', 973, '2014-11-10 10:43:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 60, 'Cerca', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 73, 'Menu Utente (2)', '', '', 4, 'position-7', 973, '2014-12-06 17:04:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 74, 'Benvenuto in Conti Autoscuole & Delegazione Aci', '', '', 1, 'as-position-6', 973, '2014-12-07 17:16:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_js_flexslider', 1, 0, '{"load_jquery":"0","pauseOnHover":"true","initDelay":"0","randomize":"false","target":"_blank","enable_minheight":"no","min_height":"280","slide_theme":"true","bg_color":"#ffffff","theme_shadow":"theme-without-shadow","theme_border":"00","theme_border_radius":"00","directionNav":"default","controlNav":"true","positionNav":"under","colorNav":"dark","colorNavActive":"black","transition":"fade","direction":"horizontal","animSpeed":"2000","pauseTime":"3500","bg_caption":"black","transparency_caption":"02","position_caption":"bottom","text_align":"centered","color_caption":"#dddddd","image1":"images\\/moto.jpg","image1alt":"PATENTE A","image1cap":"PATENTE A","image1customlink":"PATENTE A","image2":"images\\/patenteB.jpg","image2alt":"PATENTE B","image2cap":"PATENTE B","image2customlink":"PATENTE B","image3":"","image3alt":"","image3cap":"","image3customlink":"","image4":"","image4alt":"","image4cap":"","image4customlink":"","image5":"","image5alt":"","image5cap":"","image5customlink":"","image6":"","image6alt":"","image6cap":"","image6customlink":"","image7":"","image7alt":"","image7cap":"","image7customlink":"","image8":"","image8alt":"","image8cap":"","image8customlink":"","image9":"","image9alt":"","image9cap":"","image9customlink":"","image10":"","image10alt":"","image10cap":"","image10customlink":"","image11":"","image11alt":"","image11cap":"","image11customlink":"","image12":"","image12alt":"","image12cap":"","image12customlink":"","image13":"","image13alt":"","image13cap":"","image13customlink":"","image14":"","image14alt":"","image14cap":"","image14customlink":"","image15":"","image15alt":"","image15cap":"","image15customlink":"","image16":"","image16alt":"","image16cap":"","image16customlink":"","image17":"","image17alt":"","image17cap":"","image17customlink":"","image18":"","image18alt":"","image18cap":"","image18customlink":"","image19":"","image19alt":"","image19cap":"","image19customlink":"","image20":"","image20alt":"","image20cap":"","image20customlink":"","image21":"","image21alt":"","image21cap":"","image21customlink":"","imagefolder":"-1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 76, 'Gallery WD Lite', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_gallery_wd', 1, 1, '{"type":"gallery","show":"random","dimensions":"250x250","count":"4","theme_id":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 77, 'Gallery WD SlideShow Lite', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_gallery_wd_slideshow', 1, 1, '', 0, '*'),
(98, 79, 'ARI Ext Menu', '', '', 1, 'as-position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ariextmenu', 1, 1, '{"menutype":"mainmenu","direction":"horizontal","startLevel":"1","endLevel":"-1","onlyActiveItems":"1","highlightCurrent":"1","moduleclass_sfx":"","loadExtJS":"1","loadMethod":"ready","uniqId":"0","autoWidth":"1","animate":"1","delay":"0.2","transitionType":"slide","transitionDuration":"0.2","zIndex":"","bgColor":"#e1e1e1","textColor":"#000000","bgHoverColor":"#eb0c0c","textHoverColor":"#000000","bgCurrentColor":"#e1e1e1","textCurrentColor":"#000000","fontSize":"12px","fontWeight":"bold","textAlign":"left","textTransform":"capitalize","inheritMain":"1","sub_bgColor":"#e1e1e1","sub_textColor":"","sub_bgHoverColor":"","sub_textHoverColor":"","sub_bgCurrentColor":"","sub_textCurrentColor":"","sub_fontSize":"12px","sub_fontWeight":"normal","sub_textAlign":"left","sub_textTransform":"none","customstyle":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 81, 'Cinch Menu', '', '', 4, 'as-position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cinch_menu', 1, 1, '{"moduleclass_sfx":"","menutype":"mainmenu","startlevel":"1","endlevel":"all","type":"accordion","stype_layout":"horizontal","event":"click","duration":"300","showsub":"true","subwidth":"200","menu_direction":"left","mainitemcolor":"#ffffff","bghovercolor":"#000000","textlinkcolor":"#a3a3a3","texthovercolor":"#ed8000","textalign":"left","showbullet":"true","bulletalign":"right","jquery":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_modules_menu`
--

DROP TABLE IF EXISTS `e3xea_modules_menu`;
CREATE TABLE IF NOT EXISTS `e3xea_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_modules_menu`
--

TRUNCATE TABLE `e3xea_modules_menu`;
--
-- Dump dei dati per la tabella `e3xea_modules_menu`
--

INSERT INTO `e3xea_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 101),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 101),
(91, 101),
(92, 0),
(93, 0),
(94, 0),
(95, 101),
(96, 121),
(98, 101),
(98, 102),
(98, 103),
(98, 104),
(98, 105),
(98, 106),
(98, 107),
(98, 108),
(98, 116),
(98, 117),
(98, 118),
(98, 119),
(98, 120),
(98, 121),
(98, 122),
(98, 123),
(98, 124),
(98, 125),
(98, 126),
(100, 101),
(100, 102),
(100, 103),
(100, 104),
(100, 105),
(100, 106),
(100, 107),
(100, 108),
(100, 116),
(100, 117),
(100, 118),
(100, 119),
(100, 120),
(100, 121),
(100, 122),
(100, 123),
(100, 124),
(100, 125),
(100, 126);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_newsfeeds`
--

DROP TABLE IF EXISTS `e3xea_newsfeeds`;
CREATE TABLE IF NOT EXISTS `e3xea_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_newsfeeds`
--

TRUNCATE TABLE `e3xea_newsfeeds`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_overrider`
--

DROP TABLE IF EXISTS `e3xea_overrider`;
CREATE TABLE IF NOT EXISTS `e3xea_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_overrider`
--

TRUNCATE TABLE `e3xea_overrider`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_block_days`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_block_days`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_block_days` (
`id` int(11) NOT NULL,
  `block_start_date` varchar(10) NOT NULL,
  `block_end_date` varchar(10) NOT NULL,
  `block_note` varchar(255) DEFAULT NULL,
  `calendars` varchar(255) DEFAULT NULL,
  `r_int` int(11) DEFAULT '0',
  `r_freq` varchar(128) DEFAULT NULL,
  `r_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_block_days`
--

TRUNCATE TABLE `e3xea_pbbooking_block_days`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_cals`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_cals`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_cals` (
`id` int(11) unsigned NOT NULL,
  `in_cal` int(11) NOT NULL,
  `out_cal` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `hours` text,
  `email` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_cals`
--

TRUNCATE TABLE `e3xea_pbbooking_cals`;
--
-- Dump dei dati per la tabella `e3xea_pbbooking_cals`
--

INSERT INTO `e3xea_pbbooking_cals` (`id`, `in_cal`, `out_cal`, `name`, `hours`, `email`) VALUES
(1, 1, 1, 'Massage Therapist 1', '[{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"0900","close_time":"1700"},{"status":"closed"}]', NULL),
(2, 1, 1, 'Beauty Therapist 1', '[{"status":"closed"},{"status":"closed"},{"status":"closed"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"0900","close_time":"1700"},{"status":"closed"}]', NULL),
(3, 1, 1, 'Naturopath 1', '[{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"0900","close_time":"1700"},{"status":"closed"}]', NULL),
(4, 1, 1, 'Acupuncturist 1', '[{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"0900","close_time":"1700"},{"status":"closed"}]', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_config`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_config`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_config` (
`id` int(11) unsigned NOT NULL,
  `email_body` text NOT NULL,
  `trading_hours` text,
  `email_subject` varchar(255) NOT NULL,
  `site_url` varchar(80) NOT NULL,
  `timezone` varchar(80) NOT NULL,
  `block_same_day` int(11) NOT NULL,
  `calendar_message` text,
  `create_message` text,
  `consolidated_view` int(1) DEFAULT NULL,
  `show_link` int(1) DEFAULT NULL,
  `date_format_heading` varchar(255) DEFAULT NULL,
  `date_format_message` varchar(255) DEFAULT NULL,
  `date_format_cell` varchar(255) DEFAULT NULL,
  `allow_subscribe` tinyint(1) DEFAULT '0',
  `subscribe_secret` varchar(128) DEFAULT NULL,
  `publish_username` varchar(80) DEFAULT NULL,
  `publish_password` varchar(128) DEFAULT NULL,
  `allow_publish` tinyint(1) DEFAULT '0',
  `use_pb_pub_sec` tinyint(1) DEFAULT '0',
  `prevent_overbooking` tinyint(1) DEFAULT '0',
  `time_groupings` text,
  `time_increment` int(11) DEFAULT '30',
  `use_freeflow` tinyint(1) NOT NULL DEFAULT '1',
  `show_prices` tinyint(1) DEFAULT '1',
  `bcc_admin` tinyint(1) DEFAULT '1',
  `validation` varchar(128) DEFAULT 'client',
  `calendar_start_day` tinyint(1) NOT NULL DEFAULT '0',
  `show_busy_frontend` tinyint(1) NOT NULL DEFAULT '0',
  `enable_logging` tinyint(1) NOT NULL DEFAULT '0',
  `auto_validated_appt_body` text,
  `auto_validated_appt_email_subject` text,
  `manage_fields` text,
  `enable_shifts` tinyint(1) DEFAULT '1',
  `currency_symbol_before` tinyint(1) DEFAULT '1',
  `admin_validation_pending_email_subject` varchar(256) DEFAULT NULL,
  `admin_validation_pending_email_body` text,
  `admin_validation_confirmed_email_subject` varchar(256) DEFAULT NULL,
  `admin_validation_confirmed_email_body` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_config`
--

TRUNCATE TABLE `e3xea_pbbooking_config`;
--
-- Dump dei dati per la tabella `e3xea_pbbooking_config`
--

INSERT INTO `e3xea_pbbooking_config` (`id`, `email_body`, `trading_hours`, `email_subject`, `site_url`, `timezone`, `block_same_day`, `calendar_message`, `create_message`, `consolidated_view`, `show_link`, `date_format_heading`, `date_format_message`, `date_format_cell`, `allow_subscribe`, `subscribe_secret`, `publish_username`, `publish_password`, `allow_publish`, `use_pb_pub_sec`, `prevent_overbooking`, `time_groupings`, `time_increment`, `use_freeflow`, `show_prices`, `bcc_admin`, `validation`, `calendar_start_day`, `show_busy_frontend`, `enable_logging`, `auto_validated_appt_body`, `auto_validated_appt_email_subject`, `manage_fields`, `enable_shifts`, `currency_symbol_before`, `admin_validation_pending_email_subject`, `admin_validation_pending_email_body`, `admin_validation_confirmed_email_subject`, `admin_validation_confirmed_email_body`) VALUES
(1, '<p>Hi |*firstname*| |*lastname*|</p>\n\n\n\n<p>Thank you for choosing us for your next treatment.  Please click the below link to validate your appointment with us.</p><p>|*URL*|</p>\n\n\n\n<p>You''re booking details are</p><p>|*booking_details*|</p>', '[{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"1000","close_time":"2000"},{"status":"open","open_time":"0900","close_time":"1700"},{"status":"closed"}]', 'Your Treatment Verification', 'http://127.0.0.1/joomla', 'Australia/Brisbane', 0, '<b>change this <i>calendar message</i> to something more appropriate</b>', '<b>change this <i>create message</i> to something more appropriate</b>', 0, 1, 'l d F', 'd/m/Y', 'd/m', 0, 'top secret', 'username', 'password', 0, 0, 0, 'morning=1000-1200|afternoon=1330-1700|evening=1700-1930', 30, 1, 1, 1, 'client', 1, 0, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_customfields`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_customfields`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_customfields` (
`id` int(11) unsigned NOT NULL,
  `fieldname` varchar(80) DEFAULT NULL,
  `fieldtype` varchar(80) DEFAULT NULL,
  `varname` varchar(80) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_email` tinyint(1) DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT NULL,
  `is_first_name` tinyint(1) DEFAULT '0',
  `is_last_name` tinyint(1) DEFAULT '0',
  `values` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_customfields`
--

TRUNCATE TABLE `e3xea_pbbooking_customfields`;
--
-- Dump dei dati per la tabella `e3xea_pbbooking_customfields`
--

INSERT INTO `e3xea_pbbooking_customfields` (`id`, `fieldname`, `fieldtype`, `varname`, `size`, `is_email`, `is_required`, `is_first_name`, `is_last_name`, `values`) VALUES
(1, 'First Name', 'text', 'firstname', 60, NULL, 1, 1, 0, NULL),
(2, 'Last Name', 'text', 'lastname', 60, NULL, 1, 0, 1, NULL),
(3, 'Email', 'text', 'email', 60, 1, 1, 0, 0, NULL),
(4, 'Mobile', 'text', 'mobile', 60, NULL, 1, 0, 0, NULL),
(5, 'Gender', 'radio', 'gender', 60, 0, 1, 0, 0, 'Male|Female');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_customfields_data`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_customfields_data`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_customfields_data` (
`id` int(11) unsigned NOT NULL,
  `customfield_id` int(11) DEFAULT NULL,
  `pending_id` int(11) DEFAULT NULL,
  `data` varchar(256) DEFAULT NULL,
  `is_email` tinyint(1) DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_customfields_data`
--

TRUNCATE TABLE `e3xea_pbbooking_customfields_data`;
--
-- Dump dei dati per la tabella `e3xea_pbbooking_customfields_data`
--

INSERT INTO `e3xea_pbbooking_customfields_data` (`id`, `customfield_id`, `pending_id`, `data`, `is_email`, `is_required`) VALUES
(1, 1, 1, 'yuu', NULL, NULL),
(2, 2, 1, 'u', NULL, NULL),
(3, 3, 1, 'u', NULL, NULL),
(4, 4, 1, 'y7y', NULL, NULL),
(5, 5, 1, 'Male', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_events`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_events`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_events` (
`id` int(11) NOT NULL,
  `cal_id` int(11) NOT NULL,
  `summary` text NOT NULL,
  `dtend` datetime DEFAULT NULL,
  `dtstart` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `uid` varchar(80) DEFAULT NULL,
  `service_id` int(11) DEFAULT '0',
  `r_int` int(11) DEFAULT NULL,
  `r_freq` varchar(255) DEFAULT NULL,
  `r_end` datetime DEFAULT NULL,
  `customfields_data` text,
  `email` varchar(128) DEFAULT NULL,
  `deposit_paid` tinyint(1) DEFAULT '0',
  `amount_paid` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_events`
--

TRUNCATE TABLE `e3xea_pbbooking_events`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_logs`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_logs`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_logs` (
`id` int(11) NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `component` varchar(128) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_logs`
--

TRUNCATE TABLE `e3xea_pbbooking_logs`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_pending`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_pending`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_pending` (
`id` int(11) unsigned NOT NULL,
  `email` varchar(80) NOT NULL,
  `date` varchar(80) NOT NULL,
  `service` int(11) NOT NULL,
  `verified` int(11) NOT NULL,
  `cal_id` int(11) DEFAULT NULL,
  `dtstart` datetime DEFAULT NULL,
  `token` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_pending`
--

TRUNCATE TABLE `e3xea_pbbooking_pending`;
--
-- Dump dei dati per la tabella `e3xea_pbbooking_pending`
--

INSERT INTO `e3xea_pbbooking_pending` (`id`, `email`, `date`, `service`, `verified`, `cal_id`, `dtstart`, `token`) VALUES
(1, 'u', '2014-10-23', 3, 0, 3, '2014-10-23 16:30:00', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_pbbooking_treatments`
--

DROP TABLE IF EXISTS `e3xea_pbbooking_treatments`;
CREATE TABLE IF NOT EXISTS `e3xea_pbbooking_treatments` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(512) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `calendar` varchar(128) DEFAULT '0',
  `require_payment` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Svuota la tabella prima dell'inserimento `e3xea_pbbooking_treatments`
--

TRUNCATE TABLE `e3xea_pbbooking_treatments`;
--
-- Dump dei dati per la tabella `e3xea_pbbooking_treatments`
--

INSERT INTO `e3xea_pbbooking_treatments` (`id`, `name`, `duration`, `price`, `calendar`, `require_payment`) VALUES
(1, '30 minute relaxaton massage take 2', 30, 40, '1,2', 0),
(2, '60 minute relexation massage', 60, 60, '1,2', 0),
(3, '30 minute remedial massage', 30, 40, '1', 0),
(4, '60 minute remedial massage', 60, 70, '1', 0),
(5, 'Express Facial', 30, 60, '2', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_postinstall_messages`
--

DROP TABLE IF EXISTS `e3xea_postinstall_messages`;
CREATE TABLE IF NOT EXISTS `e3xea_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_postinstall_messages`
--

TRUNCATE TABLE `e3xea_postinstall_messages`;
--
-- Dump dei dati per la tabella `e3xea_postinstall_messages`
--

INSERT INTO `e3xea_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_redirect_links`
--

DROP TABLE IF EXISTS `e3xea_redirect_links`;
CREATE TABLE IF NOT EXISTS `e3xea_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_redirect_links`
--

TRUNCATE TABLE `e3xea_redirect_links`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_schemas`
--

DROP TABLE IF EXISTS `e3xea_schemas`;
CREATE TABLE IF NOT EXISTS `e3xea_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_schemas`
--

TRUNCATE TABLE `e3xea_schemas`;
--
-- Dump dei dati per la tabella `e3xea_schemas`
--

INSERT INTO `e3xea_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.6-2014-09-30'),
(10003, '2.4.0.10'),
(10014, '3.3.5'),
(10015, '1.0.1');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_session`
--

DROP TABLE IF EXISTS `e3xea_session`;
CREATE TABLE IF NOT EXISTS `e3xea_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_session`
--

TRUNCATE TABLE `e3xea_session`;
--
-- Dump dei dati per la tabella `e3xea_session`
--

INSERT INTO `e3xea_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('', 1, 1, '1418393203', '__default|a:8:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1418393157;s:18:"session.timer.last";i:1418393165;s:17:"session.timer.now";i:1418393203;s:22:"session.client.browser";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"973";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:24:"noemirefrigeri@gmail.com";s:8:"password";s:60:"$2y$10$fRV6jU8d3vIOUKzPisAaxeI.P8axVp481IVz.wPKoESsRhPh43kie";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-10-23 15:40:56";s:13:"lastvisitDate";s:19:"2014-12-12 14:05:49";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"cc791587b32f007e15a8090f15b70f09";}', 0, ''),
('vdrdgodn2p3ofpnbfgc1nph831', 0, 0, '1418393149', '__default|a:8:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1418393049;s:18:"session.timer.last";i:1418393149;s:17:"session.timer.now";i:1418393149;s:22:"session.client.browser";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":1:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:6:"return";s:20:"index.php?Itemid=101";s:4:"data";a:0:{}}}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"973";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:24:"noemirefrigeri@gmail.com";s:8:"password";s:60:"$2y$10$fRV6jU8d3vIOUKzPisAaxeI.P8axVp481IVz.wPKoESsRhPh43kie";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-10-23 15:40:56";s:13:"lastvisitDate";s:19:"2014-12-12 14:04:09";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"3dd4a1ef30ea6f326e21ade9674b26b9";}', 973, 'admin');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_tags`
--

DROP TABLE IF EXISTS `e3xea_tags`;
CREATE TABLE IF NOT EXISTS `e3xea_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_tags`
--

TRUNCATE TABLE `e3xea_tags`;
--
-- Dump dei dati per la tabella `e3xea_tags`
--

INSERT INTO `e3xea_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 973, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 973, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 4, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_template_styles`
--

DROP TABLE IF EXISTS `e3xea_template_styles`;
CREATE TABLE IF NOT EXISTS `e3xea_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_template_styles`
--

TRUNCATE TABLE `e3xea_template_styles`;
--
-- Dump dei dati per la tabella `e3xea_template_styles`
--

INSERT INTO `e3xea_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"","sitetitle":"","sitedescription":"","navposition":"left","bootstrap":"","templatecolor":"personal","headerImage":"","backgroundcolor":"#eeeeee"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","logoFile":"","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"#0088cc","templateBackgroundColor":"#f4f6f7","logoFile":"images\\/testata.jpg","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'as002044free', 0, '1', 'AS002044Free - Predefinito', '{"tmpl_style":"style.black.css","body_font_family":"Tahoma, Geneva, sans-serif, Arial","body_font_size":"12","body_font_color":"","hfont_family":"Tahoma, Geneva, sans-serif, Arial","h1_font_size":"","h2_font_size":"","h3_font_size":"","h4_font_size":"","h5_font_size":"","link_font_color":"","hlink_font_color":"","btn_font_color":"","btn_hfont_color":"","btn_gradient_topcolor":"","btn_gradient_bottomcolor":"","logo_size":"12","logo_type":"1","logo_img":"images\\/testata.jpg","logo_txt":"","logo_font_family":"PT Sans","logo_font_size":"","logo_font_style":"normal","logo_font_weight":"normal","logo_font_color":"2594BA","slogan_txt":"","slogan_font_family":"PT Sans","slogan_font_size":"12","slogan_font_style":"normal","slogan_font_weight":"normal","slogan_font_color":"161616","aside_left_width":"4","aside_right_width":"4","feature_totop":"1","feature_totop_text":""}'),
(10, 'oziofullscreen', 0, '0', 'oziofullscreen - Predefinito', '{}');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_ucm_base`
--

DROP TABLE IF EXISTS `e3xea_ucm_base`;
CREATE TABLE IF NOT EXISTS `e3xea_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_ucm_base`
--

TRUNCATE TABLE `e3xea_ucm_base`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_ucm_content`
--

DROP TABLE IF EXISTS `e3xea_ucm_content`;
CREATE TABLE IF NOT EXISTS `e3xea_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

--
-- Svuota la tabella prima dell'inserimento `e3xea_ucm_content`
--

TRUNCATE TABLE `e3xea_ucm_content`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_ucm_history`
--

DROP TABLE IF EXISTS `e3xea_ucm_history`;
CREATE TABLE IF NOT EXISTS `e3xea_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_ucm_history`
--

TRUNCATE TABLE `e3xea_ucm_history`;
--
-- Dump dei dati per la tabella `e3xea_ucm_history`
--

INSERT INTO `e3xea_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 973, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"joomla","title":"Joomla","alias":"joomla","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":1,"params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"849","created_time":"2013-11-16 00:00:00","created_by_alias":"","modified_user_id":"0","modified_time":"0000-00-00 00:00:00","images":null,"urls":null,"hits":"0","language":"*","version":"1","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00"}', 0),
(3, 2, 1, '', '2014-11-07 14:21:52', 973, 1641, '2cafb9f242cc1b11d1bf09d593c05b0b9c562e33', '{"id":2,"asset_id":64,"title":"ppp","alias":"ppp","introtext":"<p>xxxxxx<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-11-07 14:21:52","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-07 14:21:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 1, 1, '', '2014-11-10 10:22:30', 973, 3094, 'd4c2dd8912833a4da4d6bd82c0317f4475b93655', '{"id":1,"asset_id":"61","title":"Benvenuto!","alias":"benvenuto","introtext":"<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 <span style=\\"font-size: 18pt;\\">\\u00a0 \\u00a0<span style=\\"font-size: 14pt;\\"><strong> Benvenuto in Conti Autoscuole<\\/strong><\\/span><\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:22:30","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:22:20","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"94","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 1, 1, '', '2014-11-10 10:22:58', 973, 3004, 'caf9b90a986378eb4c7744d27e1a8b5c98d22db5', '{"id":1,"asset_id":"61","title":"Benvenuto!","alias":"benvenuto","introtext":"<p>\\u00a0<\\/p>\\r\\n<h1 style=\\"text-align: center;\\">\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 <span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:22:58","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:22:49","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"95","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 1, 1, '', '2014-11-10 10:23:26', 973, 3058, 'a94a8aad7013aa7e9884e07ca4cd3fd732eb82bb', '{"id":1,"asset_id":"61","title":"Benvenuto!","alias":"benvenuto","introtext":"<p>\\u00a0<\\/p>\\r\\n<h3 style=\\"text-align: center;\\">\\u00a0<strong> Benvenuto in Conti Autoscuole<\\/strong>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 <span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:23:26","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:22:58","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"96","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 1, 1, '', '2014-11-10 10:28:22', 973, 3141, 'bdf9b9c27b4c9266b39f07c0e6ad8c9935c8ebcb', '{"id":1,"asset_id":"61","title":"Benvenuto!","alias":"benvenuto","introtext":"<p><img src=\\"C:\\\\Documents and Settings\\\\refrigeri\\\\Desktop\\\\prova.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<h3 style=\\"text-align: center;\\">\\u00a0<strong> Benvenuto in Conti Autoscuole<\\/strong>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 <span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:28:22","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:23:58","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"98","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 1, 1, '', '2014-11-10 10:29:21', 973, 3161, '5bdf4fd4a9be77c4b59a4f1a114abcb253906209', '{"id":1,"asset_id":"61","title":"Benvenuto!","alias":"benvenuto","introtext":"<p><img src=\\"C:\\\\Documents and Settings\\\\refrigeri\\\\Desktop\\\\prova.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<h3 style=\\"text-align: center;\\">\\u00a0<strong> Benvenuto in Conti Autoscuole<\\/strong>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 <span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:29:21","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:28:22","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/prova.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"99","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 1, 1, '', '2014-11-10 10:30:32', 973, 3298, 'd7a98da0cd93f153efe48df0cf067771ce17dda3', '{"id":1,"asset_id":"61","title":"Benvenuto!","alias":"benvenuto","introtext":"<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/prova.jpg\\" alt=\\"\\" width=\\"450\\" height=\\"300\\" \\/><img src=\\"C:\\\\Documents and Settings\\\\refrigeri\\\\Desktop\\\\prova.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<h3 style=\\"text-align: center;\\">\\u00a0<strong> Benvenuto in Conti Autoscuole<\\/strong>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 <span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:30:32","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:29:21","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/prova.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"99","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 1, 1, '', '2014-11-10 10:33:46', 973, 3228, 'c5ad5bf41e795c32a813fc31179971986b4fc823', '{"id":1,"asset_id":"61","title":"Benvenuto!","alias":"benvenuto","introtext":"<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/prova.jpg\\" alt=\\"\\" width=\\"450\\" height=\\"300\\" \\/><img src=\\"C:\\\\Documents and Settings\\\\refrigeri\\\\Desktop\\\\prova.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<h3 style=\\"text-align: center;\\">\\u00a0\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:33:46","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:30:32","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/prova.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"100","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 1, 1, '', '2014-11-10 10:34:00', 973, 3255, '271a75d129653fde76b8a072a7200ee3cc434f02', '{"id":1,"asset_id":"61","title":" Benvenuto in Conti Autoscuole\\u00a0 ","alias":"benvenuto","introtext":"<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/prova.jpg\\" alt=\\"\\" width=\\"450\\" height=\\"300\\" \\/><img src=\\"C:\\\\Documents and Settings\\\\refrigeri\\\\Desktop\\\\prova.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<h3 style=\\"text-align: center;\\">\\u00a0\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-10 10:34:00","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 10:33:46","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/prova.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"100","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 4, 1, '', '2014-11-10 13:48:20', 973, 3763, 'c49cd874f7a0e02770ea87c395027c1c0b5fa0e2', '{"id":4,"asset_id":66,"title":"Pratiche Patenti","alias":"pratiche-patenti","introtext":"<p>Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>..<br \\/><br \\/><b>PRATICHE PATENTI DA NOI SVOLTE:<\\/b><\\/p>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Conferme di Validit\\u00e0 (rinnovo)di patenti veicoli e nautiche<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Conferma di Validit\\u00e0 o Rilascio del Porto D''armi, Conduttore di caldaie, Fuochino ocertificazioni scolastiche (medico militare equiparato ad un medico legale in sede)<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Conferme di Validit\\u00e0 con Prenotazione presso Commissione Medica (CML)<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Duplicati patenti, CQC e KA-KB<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Riclassificazioni<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Conversioni (trasformazioni) di patenti Estere e Militari<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Rolascio patente Internazionale<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Richiesta carta Tachigrafica presso la C.C.I.A.A.<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> Richiesta certificato RTF (Radio Telefonista) per condurre inbarcazioni<\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 13:48:20","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 13:48:20","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 5, 1, '', '2014-11-10 13:49:35', 973, 3363, '815c9300993362fa408c30ccf2fbfd8482b36486', '{"id":5,"asset_id":67,"title":"Assicurazioni","alias":"assicurazioni","introtext":"<p>Le nostri sedi offrono un''ampia scelta di Compagnie Assicurative quali Groupama, HDI, Itas ed altre se ne aggiungeranno una volta conclusi gli accordi ad oggi in corso.Quindi \\u00e8 possibile trovare ogni tipo di polizza.<\\/p>\\r\\n<p><br \\/><b>I PRODOTTI OFFERTI SONO<\\/b><br \\/><br \\/><b>Persone Beni e Patrimonio:<\\/b><\\/p>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Persone<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Infortuni<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Casa e R.C.<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Previdenza complementare<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Risparmio e investimento<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Vita protezione<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Auto<\\/li>\\r\\n<\\/ul>\\r\\n<p><br \\/><b>Aziende ed Attivit\\u00e0:<\\/b><\\/p>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Vita Previdenza Aziende<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Aziende e Professiioni<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>Attivit\\u00e0 Agricole<\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 13:49:35","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 13:49:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 6, 1, '', '2014-11-10 14:10:52', 973, 1635, 'b9dcad7063770916c62ca1b6efe026de1fa68598', '{"id":6,"asset_id":68,"title":"SERVIZI","alias":"servizi","introtext":"","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:10:52","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 14:10:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 7, 1, '', '2014-11-10 14:23:45', 973, 1633, 'ad8d0ae686a6248a4e9185ff42eda1a167dda958', '{"id":7,"asset_id":69,"title":"porova","alias":"porova","introtext":"","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:23:45","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 14:23:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 8, 1, '', '2014-11-10 14:36:35', 973, 1662, '5978457a654bb4ae0b05f8232feeb2d422c7f17b', '{"id":8,"asset_id":70,"title":"cirs orovva","alias":"cirs-orovva","introtext":"<p>prosi prova<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:36:35","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 14:36:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e3xea_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(24, 9, 1, '', '2014-11-10 14:43:55', 973, 5282, 'b90fe337d346bf4add6c6c9cfecb26734195054c', '{"id":9,"asset_id":71,"title":"Recupero punti","alias":"recupero-punti","introtext":"<section id=\\"recuperoPunti\\">\\r\\n<h1>RECUPERO PUNTI PATENTE<\\/h1>\\r\\n<div>Dal 30\\/06\\/2003 \\u00e8 entrata in vigore la normativa per l\\u2019applicazione che disciplina la patente a punti.<br \\/>A ciascun titolare di patente di guida rilasciata in Italia \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della patente, cio\\u00e8 la ripetizione dell''esame teorico e della prova pratica, al fine di confermare la permanenza nel conducente dell''abilit\\u00e0 tecnica alla guida e della conoscenza delle norme che disciplinano la circolazione stradale.<br \\/><br \\/>Le lezioni si svolgono nei giorni feriali, dal luned\\u00ec a al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14 per i titolari di patente Al e delle categorie A, B, B + E:<br \\/>I corsi consentono di recuperare sei punti, hanno durata di dodici ore e devono essere svolti in un arco temporale complessivamente non superiore a due settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/>per i titolari di patente C, C+E, D, D+E e certificato di abilitazione professionale di tipo KA e KB:<br \\/>I corsi consentono di recuperare nove punti, hanno durata di diciotto ore e devono essere svolti in un arco temporale complessivamente non superiore a quattro settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/><br \\/><\\/div>\\r\\n<\\/section>\\r\\n<section id=\\"recuperoPuntiCQC\\"><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20grigie.gif\\" alt=\\"\\" width=\\"20px\\" \\/>\\r\\n<h1>RECUPERO PUNTI C.Q.C.<\\/h1>\\r\\n<div>A ciascun titolare della C.Q.C. \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della C.Q.C., cio\\u00e8 la ripetizione dell''esame teorico parte comune e parte specialistica , al fine di confermare la permanenza nel conducente sulla conoscenza delle norme che disciplinano la circolazione stradale in ambito professionale.<br \\/><br \\/>Bisogna tenere presente che la piattaforma su cui si basa la C.Q.C. \\u00e8 la patente.<br \\/>Azzerare i punti sulla patente significa non avere pi\\u00f9 la base della C.Q.C. quindi non si pu\\u00f2 guidare ne veicoli privati ne veicoli professionali. <br \\/>Se invece azzeriamo i punti della C.Q.C. non possiamo guidare veicoli a carattere professionale, ma \\u00e8 consentito condurre gli autoveicoli ad uso privato. <br \\/><br \\/>I corsi di recupero dei punti per la carta di qualificazione del conducente consentono di recuperare fino ad un massimo di nove punti, hanno durata di 20 ore.<br \\/>Il corso si conclude entro quattro settimane dalla data di avvio; ogni lezione non pu\\u00f2 avere durata superiore a tre ore giornaliere e le lezioni si svolgono nei giorni feriali, dal luned\\u00ec al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14.<\\/div>\\r\\n<\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:43:55","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 14:43:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 9, 1, '', '2014-11-10 15:35:17', 973, 5287, '5ec7faeca8a1842d791776e5ff482a412ffdd620', '{"id":9,"asset_id":"71","title":"Recupero punti","alias":"recupero-punti","introtext":"<section id=\\"recuperoPunti\\">\\r\\n<p>Dal 30\\/06\\/2003 \\u00e8 entrata in vigore la normativa per l\\u2019applicazione che disciplina la patente a punti.<\\/p>\\r\\n<p>A ciascun titolare di patente di guida rilasciata in Italia \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della patente, cio\\u00e8 la ripetizione dell''esame teorico e della prova pratica, al fine di confermare la permanenza nel conducente dell''abilit\\u00e0 tecnica alla guida e della conoscenza delle norme che disciplinano la circolazione stradale.<br \\/><br \\/>Le lezioni si svolgono nei giorni feriali, dal luned\\u00ec a al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14 per i titolari di patente Al e delle categorie A, B, B + E:<br \\/>I corsi consentono di recuperare sei punti, hanno durata di dodici ore e devono essere svolti in un arco temporale complessivamente non superiore a due settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/>per i titolari di patente C, C+E, D, D+E e certificato di abilitazione professionale di tipo KA e KB:<br \\/>I corsi consentono di recuperare nove punti, hanno durata di diciotto ore e devono essere svolti in un arco temporale complessivamente non superiore a quattro settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/><br \\/><\\/p>\\r\\n<\\/section>\\r\\n<section id=\\"recuperoPuntiCQC\\"><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20grigie.gif\\" alt=\\"\\" width=\\"20px\\" \\/>\\r\\n<h1>RECUPERO PUNTI C.Q.C.<\\/h1>\\r\\n<div>A ciascun titolare della C.Q.C. \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della C.Q.C., cio\\u00e8 la ripetizione dell''esame teorico parte comune e parte specialistica , al fine di confermare la permanenza nel conducente sulla conoscenza delle norme che disciplinano la circolazione stradale in ambito professionale.<br \\/><br \\/>Bisogna tenere presente che la piattaforma su cui si basa la C.Q.C. \\u00e8 la patente.<br \\/>Azzerare i punti sulla patente significa non avere pi\\u00f9 la base della C.Q.C. quindi non si pu\\u00f2 guidare ne veicoli privati ne veicoli professionali. <br \\/>Se invece azzeriamo i punti della C.Q.C. non possiamo guidare veicoli a carattere professionale, ma \\u00e8 consentito condurre gli autoveicoli ad uso privato. <br \\/><br \\/>I corsi di recupero dei punti per la carta di qualificazione del conducente consentono di recuperare fino ad un massimo di nove punti, hanno durata di 20 ore.<br \\/>Il corso si conclude entro quattro settimane dalla data di avvio; ogni lezione non pu\\u00f2 avere durata superiore a tre ore giornaliere e le lezioni si svolgono nei giorni feriali, dal luned\\u00ec al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14.<\\/div>\\r\\n<\\/section>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 14:43:55","created_by":"973","created_by_alias":"","modified":"2014-11-10 15:35:17","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 15:34:24","publish_up":"2014-11-10 14:43:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 9, 1, '', '2014-11-10 15:37:36', 973, 5232, 'f565fe44e101a7d211dc01505dfa4f5d1150abae', '{"id":9,"asset_id":"71","title":"Recupero punti","alias":"recupero-punti","introtext":"<section id=\\"recuperoPunti\\">\\r\\n<h1>RECUPERO PUNTI\\u00a0PATENTE<\\/h1>\\r\\n<p>Dal 30\\/06\\/2003 \\u00e8 entrata in vigore la normativa per l\\u2019applicazione che disciplina la patente a punti.<\\/p>\\r\\n<p>A ciascun titolare di patente di guida rilasciata in Italia \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della patente, cio\\u00e8 la ripetizione dell''esame teorico e della prova pratica, al fine di confermare la permanenza nel conducente dell''abilit\\u00e0 tecnica alla guida e della conoscenza delle norme che disciplinano la circolazione stradale.<br \\/><br \\/>Le lezioni si svolgono nei giorni feriali, dal luned\\u00ec a al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14 per i titolari di patente Al e delle categorie A, B, B + E:<br \\/>I corsi consentono di recuperare sei punti, hanno durata di dodici ore e devono essere svolti in un arco temporale complessivamente non superiore a due settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/>per i titolari di patente C, C+E, D, D+E e certificato di abilitazione professionale di tipo KA e KB:<br \\/>I corsi consentono di recuperare nove punti, hanno durata di diciotto ore e devono essere svolti in un arco temporale complessivamente non superiore a quattro settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/><br \\/><\\/p>\\r\\n<\\/section>\\r\\n<section id=\\"recuperoPuntiCQC\\"><br \\/>\\r\\n<h1>RECUPERO PUNTI C.Q.C.<\\/h1>\\r\\n<div>A ciascun titolare della C.Q.C. \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della C.Q.C., cio\\u00e8 la ripetizione dell''esame teorico parte comune e parte specialistica , al fine di confermare la permanenza nel conducente sulla conoscenza delle norme che disciplinano la circolazione stradale in ambito professionale.<br \\/><br \\/>Bisogna tenere presente che la piattaforma su cui si basa la C.Q.C. \\u00e8 la patente.<br \\/>Azzerare i punti sulla patente significa non avere pi\\u00f9 la base della C.Q.C. quindi non si pu\\u00f2 guidare ne veicoli privati ne veicoli professionali. <br \\/>Se invece azzeriamo i punti della C.Q.C. non possiamo guidare veicoli a carattere professionale, ma \\u00e8 consentito condurre gli autoveicoli ad uso privato. <br \\/><br \\/>I corsi di recupero dei punti per la carta di qualificazione del conducente consentono di recuperare fino ad un massimo di nove punti, hanno durata di 20 ore.<br \\/>Il corso si conclude entro quattro settimane dalla data di avvio; ogni lezione non pu\\u00f2 avere durata superiore a tre ore giornaliere e le lezioni si svolgono nei giorni feriali, dal luned\\u00ec al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14.<\\/div>\\r\\n<\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:43:55","created_by":"973","created_by_alias":"","modified":"2014-11-10 15:37:36","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 15:37:12","publish_up":"2014-11-10 14:43:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 9, 1, '', '2014-11-10 15:39:02', 973, 5316, '24ebfc328e5377f55bc65a70a25d723281695e26', '{"id":9,"asset_id":"71","title":"Recupero punti","alias":"recupero-punti","introtext":"<section id=\\"recuperoPunti\\">\\r\\n<h1><span style=\\"font-size: 10pt;\\">RECUPERO PUNTI\\u00a0PATENTE<\\/span><\\/h1>\\r\\n<p>Dal 30\\/06\\/2003 \\u00e8 entrata in vigore la normativa per l\\u2019applicazione che disciplina la patente a punti.<\\/p>\\r\\n<p>A ciascun titolare di patente di guida rilasciata in Italia \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della patente, cio\\u00e8 la ripetizione dell''esame teorico e della prova pratica, al fine di confermare la permanenza nel conducente dell''abilit\\u00e0 tecnica alla guida e della conoscenza delle norme che disciplinano la circolazione stradale.<br \\/><br \\/>Le lezioni si svolgono nei giorni feriali, dal luned\\u00ec a al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14 per i titolari di patente Al e delle categorie A, B, B + E:<br \\/>I corsi consentono di recuperare sei punti, hanno durata di dodici ore e devono essere svolti in un arco temporale complessivamente non superiore a due settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/>per i titolari di patente C, C+E, D, D+E e certificato di abilitazione professionale di tipo KA e KB:<br \\/>I corsi consentono di recuperare nove punti, hanno durata di diciotto ore e devono essere svolti in un arco temporale complessivamente non superiore a quattro settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/><br \\/><\\/p>\\r\\n<\\/section>\\r\\n<section id=\\"recuperoPuntiCQC\\"><br \\/>\\r\\n<h1><span style=\\"font-size: 10pt;\\">RECUPERO PUNTI C.Q.C.<\\/span><\\/h1>\\r\\n<div>A ciascun titolare della C.Q.C. \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della C.Q.C., cio\\u00e8 la ripetizione dell''esame teorico parte comune e parte specialistica , al fine di confermare la permanenza nel conducente sulla conoscenza delle norme che disciplinano la circolazione stradale in ambito professionale.<br \\/><br \\/>Bisogna tenere presente che la piattaforma su cui si basa la C.Q.C. \\u00e8 la patente.<br \\/>Azzerare i punti sulla patente significa non avere pi\\u00f9 la base della C.Q.C. quindi non si pu\\u00f2 guidare ne veicoli privati ne veicoli professionali. <br \\/>Se invece azzeriamo i punti della C.Q.C. non possiamo guidare veicoli a carattere professionale, ma \\u00e8 consentito condurre gli autoveicoli ad uso privato. <br \\/><br \\/>I corsi di recupero dei punti per la carta di qualificazione del conducente consentono di recuperare fino ad un massimo di nove punti, hanno durata di 20 ore.<br \\/>Il corso si conclude entro quattro settimane dalla data di avvio; ogni lezione non pu\\u00f2 avere durata superiore a tre ore giornaliere e le lezioni si svolgono nei giorni feriali, dal luned\\u00ec al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14.<\\/div>\\r\\n<\\/section>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 14:43:55","created_by":"973","created_by_alias":"","modified":"2014-11-10 15:39:02","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 15:37:58","publish_up":"2014-11-10 14:43:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(28, 9, 1, '', '2014-11-10 15:41:02', 973, 5351, '85bf290ff669d6c4fb19af696461dee9f946f965', '{"id":9,"asset_id":"71","title":"Recupero punti","alias":"recupero-punti","introtext":"<section id=\\"recuperoPunti\\">\\r\\n<h3><strong><span style=\\"font-size: 10pt;\\">RECUPERO PUNTI\\u00a0PATENTE<\\/span><\\/strong><\\/h3>\\r\\n<p>Dal 30\\/06\\/2003 \\u00e8 entrata in vigore la normativa per l\\u2019applicazione che disciplina la patente a punti.<\\/p>\\r\\n<p>A ciascun titolare di patente di guida rilasciata in Italia \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della patente, cio\\u00e8 la ripetizione dell''esame teorico e della prova pratica, al fine di confermare la permanenza nel conducente dell''abilit\\u00e0 tecnica alla guida e della conoscenza delle norme che disciplinano la circolazione stradale.<br \\/><br \\/>Le lezioni si svolgono nei giorni feriali, dal luned\\u00ec a al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14 per i titolari di patente Al e delle categorie A, B, B + E:<br \\/>I corsi consentono di recuperare sei punti, hanno durata di dodici ore e devono essere svolti in un arco temporale complessivamente non superiore a due settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/>per i titolari di patente C, C+E, D, D+E e certificato di abilitazione professionale di tipo KA e KB:<br \\/>I corsi consentono di recuperare nove punti, hanno durata di diciotto ore e devono essere svolti in un arco temporale complessivamente non superiore a quattro settimane consecutive; ogni lezione non pu\\u00f2 avere durata superiore a due ore giornaliere.<br \\/><br \\/><br \\/><\\/p>\\r\\n<\\/section>\\r\\n<section id=\\"recuperoPuntiCQC\\"><br \\/>\\r\\n<h3><strong><span style=\\"font-size: 10pt;\\">RECUPERO PUNTI C.Q.C.<\\/span><\\/strong><\\/h3>\\r\\n<div>A ciascun titolare della C.Q.C. \\u00e8 riconosciuto un numero iniziale di punti pari a 20. Se il conducente non commette infrazioni in un biennio, questo punteggio \\u00e8 incrementato di 2 punti, con un massimo di 30 punti. A fronte di violazioni che comportano perdita di punteggio, invece, il conducente subisce le decurtazioni previste.<br \\/>La perdita totale del punteggio, a seguito del cumulo di pi\\u00f9 violazioni realizzate nel tempo, determina l''obbligo di revisione della C.Q.C., cio\\u00e8 la ripetizione dell''esame teorico parte comune e parte specialistica , al fine di confermare la permanenza nel conducente sulla conoscenza delle norme che disciplinano la circolazione stradale in ambito professionale.<br \\/><br \\/>Bisogna tenere presente che la piattaforma su cui si basa la C.Q.C. \\u00e8 la patente.<br \\/>Azzerare i punti sulla patente significa non avere pi\\u00f9 la base della C.Q.C. quindi non si pu\\u00f2 guidare ne veicoli privati ne veicoli professionali. <br \\/>Se invece azzeriamo i punti della C.Q.C. non possiamo guidare veicoli a carattere professionale, ma \\u00e8 consentito condurre gli autoveicoli ad uso privato. <br \\/><br \\/>I corsi di recupero dei punti per la carta di qualificazione del conducente consentono di recuperare fino ad un massimo di nove punti, hanno durata di 20 ore.<br \\/>Il corso si conclude entro quattro settimane dalla data di avvio; ogni lezione non pu\\u00f2 avere durata superiore a tre ore giornaliere e le lezioni si svolgono nei giorni feriali, dal luned\\u00ec al venerd\\u00ec dalle ore 8 alle ore 23 ed il sabato dalle ore 8 alle ore 14.<\\/div>\\r\\n<\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:43:55","created_by":"973","created_by_alias":"","modified":"2014-11-10 15:41:02","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 15:40:25","publish_up":"2014-11-10 14:43:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 10, 1, '', '2014-11-10 15:43:43', 973, 9802, '25c0f9407eaaa5d4b6eb25f108ced8ce40e0a348', '{"id":10,"asset_id":72,"title":"C.Q.C.","alias":"c-q-c","introtext":"<section>\\r\\n<div id=\\"CQC\\">\\r\\n<h1>CARTA DI QUALIFICAZIONE DEL CONDUCENTE (CQC)<\\/h1>\\r\\n<b>SONO OBBLIGATI AL POSSESSO DELLA CQC <\\/b><br \\/><br \\/>I conducenti che effettuano professionalmente l\\u2019autotrasporto di persone e di cose su veicoli per la guida cui \\u00e8 richiesta la patente delle categorie C, CE, D e DE salvo esenzioni.<br \\/><br \\/><b>SONO ESENTATI DAL POSSESSO DELLA CQC I CONDUCENTI DI VEICOLI:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>la cui velocit\\u00e0 massima autorizzata non supera 45 km\\/h;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>ad uso delle Forze armate, della Protezione civile, dei Vigili del fuoco e delle forze responsabili del mantenimento dell\\u2019ordine pubblico, o messi a loro disposizione;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>sottoposti a prove su strada a scopo di perfezionamento tecnico, riparazione o manutenzione, e nuovi o trasformati non ancora immessi in circolazione;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>utilizzati in servizio di emergenza o destinati a missioni di salvataggio;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>utilizzati per lezioni di guida ai fini del conseguimento della patente o dei certificati di abilitazione professionale;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>utilizzati per trasporti privati e non commerciali di passeggeri o di merci;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>che trasportano materiale o attrezzature, utilizzati dal conducente stesso nell\\u2019esercizio della propria attivit\\u00e0, a condizione che la guida del veicolo non ne costituisca attivit\\u00e0 principale.<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>L\\u2019ESENZIONE NON SI APPLICA AI CONDUCENTI DEI VEICOLI:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>A) adibiti ad uso proprio assunti alle dipendenze di un\\u2019impresa con la qualifica di autista;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>B) scuolabus sia nel caso che l\\u2019attivit\\u00e0 sia esercitata in conto proprio che per conto terzi.<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>NON \\u00e8 RICHIESTO L''ESAME PER IL CONSEGUIMENTO DELLA CQC:<\\/b><br \\/><br \\/>Per i conducenti appartenenti a Stati membri dell\\u2019UE, che hanno conseguito la patente C o CE prima del 9.9.2009 o che sono titolari di patente D o DE muniti di KD rilasciato prima del 9.9.2008 , che circolano in Italia con veicoli immatricolati in Italia o all\\u2019estero e il Paese in cui sono residenti non ha previsto per loro un preciso obbligo di possesso di apposito titolo di qualificazione.<br \\/>L\\u2019Italia riconosce la CQC rilasciata dagli altri Stati membri dell\\u2019UE o dello SEE.<br \\/><br \\/><b>LA CQC \\u00e8 RILASCIATA<\\/b><br \\/><br \\/>superando un esame di idoneit\\u00e0 previa la frequenza di un corso di qualificazione iniziale conducenti, a coloro che siano:\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> A) residenti in Italia;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> B) cittadini di Stati non appartenenti all\\u2019UE o allo SEE, che svolgono la loro attivit\\u00e0 alle dipendenze di un\\u2019impresa di autotrasporto di persone o di cose stabilita su territorio italiano.<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/>Per conseguire la carta di qualificazione i conducenti (residenti in Italia o cittadini non appartenenti alla UE o al SEE che svolgono l\\u2019attivit\\u00e0 presso impresa stabilita in Italia) devono:<br \\/>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>A) essere titolari almeno della patente di categoria C, per iscriversi ad un corso di formazione iniziale per conseguire una CQC per il trasporto di cose, o di categoria D, per iscriversi ad un corso di formazione iniziale per conseguire una CQC per il trasporto di persone;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>B) aver compiuto: <br \\/>\\r\\n<ul>\\r\\n<li><b>18 anni<\\/b>, per guidare veicoli adibiti al trasporto di merci per cui \\u00e8 richiesta la patente di guida delle categorie C e CE: nel rispetto del limite di massa complessiva a pieno carico di 7,5t qualora sia stato frequentato un corso di formazione iniziale accelerato di 140 ore; in deroga al suddetto limite qualora invece sia stato frequento un corso ordinario di 280 ore;<\\/li>\\r\\n<li><b>21 anni<\\/b>, per guidare veicoli adibiti al trasporto di passeggeri per cui \\u00e8 richiesta la patente di guida delle categorie D e DE, senza alcuna limitazione se \\u00e8 stato frequentato un corso di qualificazioni iniziale ordinario di 280 ore; con la limitazione del servizio di linea con percorrenza non superiore a 50 chilometri, ovvero del trasporto al massimo di 16 passeggeri, se \\u00e8 stato frequentato un corso di formazione accelerato di 140 ore;<\\/li>\\r\\n<li><b>23 anni<\\/b>, per guidare veicoli adibiti al trasporto di passeggeri per cui \\u00e8 richiesta la patente di guida delle categorie D e DE, avendo frequentato un corso di qualificazione iniziale accelerato di 140 ore.<\\/li>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>IL CORSO PER CONSEGUIRE LA CQC(merci o viaggiatori) CONSISTE IN:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>130 ore di teoria ( 95 ore di programma Comune, 35 ore di programma Speciale per trasporto merci o persone)<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>10 ore di guida ( 7 ore e 30\\u2019 di parte Comune, 2 ore e 30\\u2019 di parte Speciale per trasporto merci o persone)<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>Chi possiede gi\\u00e0 una delle 2 CQC (o viaggiatori o merci) per conseguire quella che non possiede deve frequentare solo le ore delle parti speciali inerenti la CQC mancante:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>35 ore di teoria (parte speciale merci o persone)<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>2 ore e 30\\u2019 di guida (parte speciale merci o persone)<\\/li>\\r\\n<\\/ul>\\r\\n<b>In entrambi i casi segue solo l\\u2019esame teorico.<\\/b><\\/div>\\r\\n<div id=\\"CQCFoto\\"><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/carta_qualificazione_conducente.gif\\" alt=\\"carta di qualificazione del conducente\\" width=\\"180px\\" \\/><\\/div>\\r\\n<\\/section>\\r\\n<section>\\r\\n<div id=\\"CQC2\\"><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20grigie.gif\\" alt=\\"\\" width=\\"20px\\" \\/>\\r\\n<h1>RINNOVO DI VALIDITA'' DELLA C.Q.C.<\\/h1>\\r\\n<b>(CORSO DI FORMAZIONE PERIODICA)<\\/b><br \\/><br \\/>Il Certificato di Qualificazione Conducenti per il trasporto Viaggiatori , per il trasporto Merci o per chi \\u00e8 in possesso di entrambe le Specializzazioni si deve rinnovare ogni 5 anni frequentando un Corso di Formazione Periodica della durata di 35 ore presso le nostre strutture autorizzate.<br \\/>Per evitare che si giunga troppo vicini alla scadenza con l\\u2019impossibilit\\u00e0 per chi lavora di frequentare il Corso con una certa calma, si pu\\u00f2 iniziare a frequentare i Corsi di Rinnovo a partire da i 18 mesi precedenti la scadenza stessa, legando per\\u00f2 la nuova scadenza sempre a quella originaria ( es. scadenza 09\\/09\\/2013 \\u2013 corso svolto luglio 2012 cio\\u00e8 un anno prima - la scadenza della nuova C.Q.C. sar\\u00e0 sempre 09\\/09\\/2018).<\\/div>\\r\\n<\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 15:43:43","created_by":"973","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-11-10 15:43:43","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 10, 1, '', '2014-11-10 15:45:56', 973, 9748, '57dc956ca777f5a264a62586cf0320384f87536e', '{"id":10,"asset_id":"72","title":"C.Q.C.","alias":"c-q-c","introtext":"<section>\\r\\n<div id=\\"CQC\\">\\r\\n<h3>CARTA DI QUALIFICAZIONE DEL CONDUCENTE (CQC)<\\/h3>\\r\\n<b>SONO OBBLIGATI AL POSSESSO DELLA CQC <\\/b><br \\/><br \\/>I conducenti che effettuano professionalmente l\\u2019autotrasporto di persone e di cose su veicoli per la guida cui \\u00e8 richiesta la patente delle categorie C, CE, D e DE salvo esenzioni.<br \\/><br \\/><b>SONO ESENTATI DAL POSSESSO DELLA CQC I CONDUCENTI DI VEICOLI:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>la cui velocit\\u00e0 massima autorizzata non supera 45 km\\/h;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>ad uso delle Forze armate, della Protezione civile, dei Vigili del fuoco e delle forze responsabili del mantenimento dell\\u2019ordine pubblico, o messi a loro disposizione;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>sottoposti a prove su strada a scopo di perfezionamento tecnico, riparazione o manutenzione, e nuovi o trasformati non ancora immessi in circolazione;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>utilizzati in servizio di emergenza o destinati a missioni di salvataggio;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>utilizzati per lezioni di guida ai fini del conseguimento della patente o dei certificati di abilitazione professionale;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>utilizzati per trasporti privati e non commerciali di passeggeri o di merci;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>che trasportano materiale o attrezzature, utilizzati dal conducente stesso nell\\u2019esercizio della propria attivit\\u00e0, a condizione che la guida del veicolo non ne costituisca attivit\\u00e0 principale.<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>L\\u2019ESENZIONE NON SI APPLICA AI CONDUCENTI DEI VEICOLI:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>A) adibiti ad uso proprio assunti alle dipendenze di un\\u2019impresa con la qualifica di autista;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>B) scuolabus sia nel caso che l\\u2019attivit\\u00e0 sia esercitata in conto proprio che per conto terzi.<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>NON \\u00e8 RICHIESTO L''ESAME PER IL CONSEGUIMENTO DELLA CQC:<\\/b><br \\/><br \\/>Per i conducenti appartenenti a Stati membri dell\\u2019UE, che hanno conseguito la patente C o CE prima del 9.9.2009 o che sono titolari di patente D o DE muniti di KD rilasciato prima del 9.9.2008 , che circolano in Italia con veicoli immatricolati in Italia o all\\u2019estero e il Paese in cui sono residenti non ha previsto per loro un preciso obbligo di possesso di apposito titolo di qualificazione.<br \\/>L\\u2019Italia riconosce la CQC rilasciata dagli altri Stati membri dell\\u2019UE o dello SEE.<br \\/><br \\/><b>LA CQC \\u00e8 RILASCIATA<\\/b><br \\/><br \\/>superando un esame di idoneit\\u00e0 previa la frequenza di un corso di qualificazione iniziale conducenti, a coloro che siano:\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> A) residenti in Italia;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/> B) cittadini di Stati non appartenenti all\\u2019UE o allo SEE, che svolgono la loro attivit\\u00e0 alle dipendenze di un\\u2019impresa di autotrasporto di persone o di cose stabilita su territorio italiano.<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/>Per conseguire la carta di qualificazione i conducenti (residenti in Italia o cittadini non appartenenti alla UE o al SEE che svolgono l\\u2019attivit\\u00e0 presso impresa stabilita in Italia) devono:<br \\/>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>A) essere titolari almeno della patente di categoria C, per iscriversi ad un corso di formazione iniziale per conseguire una CQC per il trasporto di cose, o di categoria D, per iscriversi ad un corso di formazione iniziale per conseguire una CQC per il trasporto di persone;<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>B) aver compiuto: <br \\/>\\r\\n<ul>\\r\\n<li><b>18 anni<\\/b>, per guidare veicoli adibiti al trasporto di merci per cui \\u00e8 richiesta la patente di guida delle categorie C e CE: nel rispetto del limite di massa complessiva a pieno carico di 7,5t qualora sia stato frequentato un corso di formazione iniziale accelerato di 140 ore; in deroga al suddetto limite qualora invece sia stato frequento un corso ordinario di 280 ore;<\\/li>\\r\\n<li><b>21 anni<\\/b>, per guidare veicoli adibiti al trasporto di passeggeri per cui \\u00e8 richiesta la patente di guida delle categorie D e DE, senza alcuna limitazione se \\u00e8 stato frequentato un corso di qualificazioni iniziale ordinario di 280 ore; con la limitazione del servizio di linea con percorrenza non superiore a 50 chilometri, ovvero del trasporto al massimo di 16 passeggeri, se \\u00e8 stato frequentato un corso di formazione accelerato di 140 ore;<\\/li>\\r\\n<li><b>23 anni<\\/b>, per guidare veicoli adibiti al trasporto di passeggeri per cui \\u00e8 richiesta la patente di guida delle categorie D e DE, avendo frequentato un corso di qualificazione iniziale accelerato di 140 ore.<\\/li>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>IL CORSO PER CONSEGUIRE LA CQC(merci o viaggiatori) CONSISTE IN:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>130 ore di teoria ( 95 ore di programma Comune, 35 ore di programma Speciale per trasporto merci o persone)<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>10 ore di guida ( 7 ore e 30\\u2019 di parte Comune, 2 ore e 30\\u2019 di parte Speciale per trasporto merci o persone)<\\/li>\\r\\n<\\/ul>\\r\\n<br \\/><b>Chi possiede gi\\u00e0 una delle 2 CQC (o viaggiatori o merci) per conseguire quella che non possiede deve frequentare solo le ore delle parti speciali inerenti la CQC mancante:<\\/b>\\r\\n<ul>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>35 ore di teoria (parte speciale merci o persone)<\\/li>\\r\\n<li><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/frecce%20rosse.gif\\" alt=\\"\\" width=\\"13px\\" \\/>2 ore e 30\\u2019 di guida (parte speciale merci o persone)<\\/li>\\r\\n<\\/ul>\\r\\n<b>In entrambi i casi segue solo l\\u2019esame teorico.<\\/b><\\/div>\\r\\n<div id=\\"CQCFoto\\"><img src=\\"http:\\/\\/www.contiautoscuole.it\\/images\\/carta_qualificazione_conducente.gif\\" alt=\\"carta di qualificazione del conducente\\" width=\\"180px\\" \\/><\\/div>\\r\\n<\\/section>\\r\\n<section>\\r\\n<div id=\\"CQC2\\"><br \\/>\\r\\n<h3>RINNOVO DI VALIDITA'' DELLA C.Q.C.<\\/h3>\\r\\n<b>(CORSO DI FORMAZIONE PERIODICA)<\\/b><br \\/><br \\/>Il Certificato di Qualificazione Conducenti per il trasporto Viaggiatori , per il trasporto Merci o per chi \\u00e8 in possesso di entrambe le Specializzazioni si deve rinnovare ogni 5 anni frequentando un Corso di Formazione Periodica della durata di 35 ore presso le nostre strutture autorizzate.<br \\/>Per evitare che si giunga troppo vicini alla scadenza con l\\u2019impossibilit\\u00e0 per chi lavora di frequentare il Corso con una certa calma, si pu\\u00f2 iniziare a frequentare i Corsi di Rinnovo a partire da i 18 mesi precedenti la scadenza stessa, legando per\\u00f2 la nuova scadenza sempre a quella originaria ( es. scadenza 09\\/09\\/2013 \\u2013 corso svolto luglio 2012 cio\\u00e8 un anno prima - la scadenza della nuova C.Q.C. sar\\u00e0 sempre 09\\/09\\/2018).<\\/div>\\r\\n<\\/section>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 15:43:43","created_by":"973","created_by_alias":"","modified":"2014-11-10 15:45:56","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-10 15:45:13","publish_up":"2014-11-10 15:43:43","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e3xea_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(31, 1, 1, '', '2014-11-14 12:19:00', 973, 3255, 'bf7496f10e683ef9596d4e885734d1f985c01e30', '{"id":1,"asset_id":"61","title":" Benvenuto in Conti Autoscuole\\u00a0 ","alias":"benvenuto","introtext":"<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/prova.jpg\\" alt=\\"\\" width=\\"450\\" height=\\"300\\" \\/><img src=\\"C:\\\\Documents and Settings\\\\refrigeri\\\\Desktop\\\\prova.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<h3 style=\\"text-align: center;\\">\\u00a0\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<span style=\\"font-size: 18pt;\\">\\u00a0\\u00a0<\\/span><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.<\\/span><\\/em><\\/p>\\r\\n<p style=\\"text-align: center;\\"><em><span style=\\"color: #999999;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-11-14 12:19:00","modified_by":"973","checked_out":"973","checked_out_time":"2014-11-14 12:18:41","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/prova.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"223","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(32, 1, 1, '', '2014-12-04 22:21:48', 973, 1674, '29953580872a14909dbdae805b6117054ce7affa', '{"id":1,"asset_id":"61","title":"-","alias":"benvenuto","introtext":"","fulltext":"","state":"2","catid":"2","created":"2013-11-16 00:00:00","created_by":"973","created_by_alias":"","modified":"2014-12-04 22:21:48","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-04 22:21:12","publish_up":"2013-11-16 00:00:00","publish_down":"","images":"{\\"image_intro\\":\\"images\\\\\\/prova.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":15,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"273","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(40, 3, 1, '', '2014-12-06 18:19:28', 973, 3454, '816291885d18573c0b2833d6b056c6cf4ce8a909', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<table border=\\"1\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"405\\" height=\\"270\\" \\/><\\/td>\\r\\n<td>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><br \\/><br \\/><\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 18:19:28","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 18:17:32","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"87","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(41, 3, 1, '', '2014-12-06 18:21:04', 973, 3493, 'dc643bb4be1d918a9dfa7419c57bc0a7dd498abc', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p style=\\"text-align: left;\\">\\u00a0<\\/p>\\r\\n<table style=\\"height: 308px;\\" border=\\"1\\" width=\\"917\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"405\\" height=\\"270\\" \\/><\\/td>\\r\\n<td>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><br \\/><br \\/><\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 18:21:04","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 18:20:30","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"90","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(42, 3, 1, '', '2014-12-06 18:35:47', 973, 3447, '8863b27ae55272646d938466da7160dfd5520e0e', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 265px;\\" border=\\"1\\" width=\\"737\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"303\\" height=\\"202\\" \\/><\\/td>\\r\\n<td>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><br \\/><br \\/><\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 18:35:47","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 18:21:49","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":15,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"92","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(43, 3, 1, '', '2014-12-06 18:41:03', 973, 3477, '493072e267475487d6b0fcfaca2d29e8644367b9', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 265px;\\" border=\\"1\\" width=\\"737\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"303\\" height=\\"202\\" \\/><\\/td>\\r\\n<td>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><br \\/><br \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 18:41:03","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 18:39:23","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/carta_circolazione.gif\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":16,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"98","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 3, 1, '', '2014-12-06 18:46:28', 973, 3141, '0b34e72ef95593cabfc6cfb8a342b8cabd5ba6bf', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p><br \\/>\\u00a0<\\/p>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 18:46:28","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 18:42:30","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/carta_circolazione.gif\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":18,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"99","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 3, 1, '', '2014-12-06 19:10:26', 973, 3110, 'fc098b13b5d51f43d717e3060b1ab78c695296bc', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p><br \\/>\\u00a0<\\/p>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 19:10:26","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 19:10:10","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":19,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"101","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(46, 3, 1, '', '2014-12-06 19:13:50', 973, 3420, 'faf073b5db1cbe42fb50d93549fedb1b74740688', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>This is just some <strong>code<\\/strong>.<\\/p>\\r\\n<p>&lt;table&gt;<\\/p>\\r\\n<p>&lt;tr&gt;<\\/p>\\r\\n<p>&lt;td&gt;<\\/p>\\r\\n<p>vvvvvvvv<\\/p>\\r\\n<p>&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;\\/tr&gt;<\\/p>\\r\\n<p>&lt;\\/table&gt;<br \\/>\\u00a0<\\/p>\\r\\n<div id=\\"pratiche\\"><b><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"405\\" height=\\"270\\" \\/>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 19:13:50","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 19:10:54","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":20,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"102","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 3, 1, '', '2014-12-06 19:17:03', 973, 3327, '337212b7d1f7a6cd13f50365214529942b0d7df7', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 660px;\\" width=\\"677\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"405\\" height=\\"270\\" \\/><\\/td>\\r\\n<td>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 19:17:03","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 19:13:59","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":21,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"104","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(48, 3, 1, '', '2014-12-06 19:17:50', 973, 3327, 'e449d2b924a5b51ed4073201e6023e58a0b0342c', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 652px;\\" width=\\"868\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"405\\" height=\\"270\\" \\/><\\/td>\\r\\n<td>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 19:17:50","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 19:17:19","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":22,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"106","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(49, 3, 1, '', '2014-12-06 19:20:08', 973, 3327, 'e3a437de30d15d427e6cc826f5b7994f183f26c6', '{"id":3,"asset_id":"65","title":"Pratiche Veicoli","alias":"servizi-pratiche-veicoli","introtext":"<p>\\u00a0<\\/p>\\r\\n<p style=\\"text-align: left;\\">Tutti i nostri servizi sono gestiti via telematica con il Ministero dei Trasporti e con il Pubblico Registro Automobilistico (PRA). Questo ci d\\u00e0 l''opportunit\\u00e0 di svolgere le pratiche in tempo reale essendo titolari di uno <a title=\\"Servizi dello sportello telematico dell''automobilista\\" href=\\"http:\\/\\/www.contiautoscuole.it\\/Sportello_telematico_automobilista.php\\">sportello telematico dell''automobilista (STA)<\\/a>.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 322px;\\" width=\\"861\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\"images\\/carta_circolazione.gif\\" alt=\\"\\" width=\\"405\\" height=\\"270\\" \\/><\\/td>\\r\\n<td>\\r\\n<div id=\\"pratiche\\"><b>PRATICHE VEICOLI DA NOI SVOLTE:<\\/b><\\/div>\\r\\n<ul>\\r\\n<li>Immatricolazioni veicoli nuovi<\\/li>\\r\\n<li>\\u00a0Re-immatricolazioni<\\/li>\\r\\n<li>\\u00a0Nazionalizzazioni<\\/li>\\r\\n<li>Targhe prova<\\/li>\\r\\n<li>Targhe ciclomotori<\\/li>\\r\\n<li>\\u00a0Trasferimenti di propriet\\u00e0 (autoveicoli, motoveicoli e veicoli d''epoca)<\\/li>\\r\\n<li>\\u00a0Duplicati Carta di Circolazione e Certificato di propriet\\u00e0<\\/li>\\r\\n<li>Radiazione per Demolizione o Esportazione all''estero<\\/li>\\r\\n<li>Perdita o Rientro in Possesso<\\/li>\\r\\n<li>\\u00a0Revoca fermo amministrativo<\\/li>\\r\\n<li>\\u00a0Collaudi GPL o Gancio di traino<\\/li>\\r\\n<li>\\u00a0Revisioni veicoli<\\/li>\\r\\n<li>Visure o estratti cronologici al PRA<\\/li>\\r\\n<li>Visure o Certificati camerali presso la C.C.I.A.A.<\\/li>\\r\\n<li>Licenze conto proprio<\\/li>\\r\\n<li>Iscrizione Albo Conto Terzi<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 13:36:08","created_by":"973","created_by_alias":"","modified":"2014-12-06 19:20:08","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-06 19:18:42","publish_up":"2014-11-10 13:36:08","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":23,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"108","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(50, 7, 1, '', '2014-12-07 12:56:59', 973, 1714, '9534f774eca8df445717ac97637cb66fdf48fd57', '{"id":7,"asset_id":"69","title":"Benvenuto in Conti Autoscuole & Delegazione Aci","alias":"porova","introtext":"","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:23:45","created_by":"973","created_by_alias":"","modified":"2014-12-07 12:56:59","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-07 12:56:48","publish_up":"2014-11-10 14:23:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"111","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(51, 7, 1, '', '2014-12-07 12:57:32', 973, 1753, '984fd5aa19d344d0efd20ff8e13978df91f5c645', '{"id":7,"asset_id":"69","title":"Benvenuto in Conti Autoscuole & Delegazione Aci","alias":"benvenuto-in-conti-autoscuole-delegazione-aci","introtext":"","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:23:45","created_by":"973","created_by_alias":"","modified":"2014-12-07 12:57:32","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-07 12:56:59","publish_up":"2014-11-10 14:23:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"111","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e3xea_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(52, 7, 1, '', '2014-12-07 13:00:35', 973, 2562, '2c8e656a691b085f83d8d923657db83489d574e2', '{"id":7,"asset_id":"69","title":"Benvenuto in Conti Autoscuole & Delegazione Aci","alias":"benvenuto-in-conti-autoscuole-delegazione-aci","introtext":"<p style=\\"text-align: center;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<br \\/><br \\/>Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<br \\/><br \\/>Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.\\u00a0<br \\/><br \\/>Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:23:45","created_by":"973","created_by_alias":"","modified":"2014-12-07 13:00:35","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-07 12:59:51","publish_up":"2014-11-10 14:23:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"114","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 7, 1, '', '2014-12-07 15:36:34', 973, 2583, '61b0102a93067b88407ec2871d35c2ea51e7a8f3', '{"id":7,"asset_id":"69","title":"                     Benvenuto in Conti Autoscuole & Delegazione Aci","alias":"benvenuto-in-conti-autoscuole-delegazione-aci","introtext":"<p style=\\"text-align: center;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<br \\/><br \\/>Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<br \\/><br \\/>Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.\\u00a0<br \\/><br \\/>Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-11-10 14:23:45","created_by":"973","created_by_alias":"","modified":"2014-12-07 15:36:34","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-07 15:35:43","publish_up":"2014-11-10 14:23:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"126","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(54, 7, 1, '', '2014-12-07 18:07:04', 973, 2724, '85740a1299fa7be8435dc7ad965eb3a28d6c2977', '{"id":7,"asset_id":"69","title":"Benvenuto in Conti Autoscuole & Delegazione Aci","alias":"benvenuto-in-conti-autoscuole-delegazione-aci","introtext":"<p style=\\"text-align: center;\\"><span style=\\"color: #36d1c7;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><br \\/><br \\/><span style=\\"color: #36d1c7;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><br \\/><br \\/><span style=\\"color: #36d1c7;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.\\u00a0<\\/span><br \\/><br \\/><span style=\\"color: #36d1c7;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 14:23:45","created_by":"973","created_by_alias":"","modified":"2014-12-07 18:07:04","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-07 18:06:21","publish_up":"2014-11-10 14:23:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"226","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 7, 1, '', '2014-12-07 18:17:53', 973, 2724, '638ddb04718922848387b27c614971d1d3d48e11', '{"id":7,"asset_id":"69","title":"Benvenuto in Conti Autoscuole & Delegazione Aci","alias":"benvenuto-in-conti-autoscuole-delegazione-aci","introtext":"<p style=\\"text-align: center;\\"><span style=\\"color: #4bbbe1;\\">Il Gruppo \\u201cConti Autoscuole &amp; Delegazione Aci\\u201d sin dal 1985 si ispira a migliorare tutti i servizi per Voi clienti attraverso la formazione di personale giovane e qualificato.<\\/span><br \\/><br \\/><span style=\\"color: #4bbbe1;\\">Ci distinguiamo nell\\u2019insegnamento e nell\\u2019istruzione della guida utilizzando metodi all\\u2019avanguardia con l\\u2019ausilio di supporti informatici e multimediali, che ogni singolo allievo avr\\u00e0 a disposizione sia in aula che comodamente da casa.<\\/span><br \\/><br \\/><span style=\\"color: #4bbbe1;\\">Le nostre agenzie di pratiche auto e delegazione ACI sono gestite da consulenti automobilistici in grado offrire un servizio sempre efficiente e professionale al fine di soddisfare ogni Vostra richiesta.\\u00a0<\\/span><br \\/><br \\/><span style=\\"color: #4bbbe1;\\">Vi aspettiamo presso le nostre sedi di Colleferro, Palestrina e Paliano.<\\/span><\\/p>","fulltext":"","state":"1","catid":"2","created":"2014-11-10 14:23:45","created_by":"973","created_by_alias":"","modified":"2014-12-07 18:17:53","modified_by":"973","checked_out":"973","checked_out_time":"2014-12-07 18:17:23","publish_up":"2014-11-10 14:23:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"232","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_update_sites`
--

DROP TABLE IF EXISTS `e3xea_update_sites`;
CREATE TABLE IF NOT EXISTS `e3xea_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Svuota la tabella prima dell'inserimento `e3xea_update_sites`
--

TRUNCATE TABLE `e3xea_update_sites`;
--
-- Dump dei dati per la tabella `e3xea_update_sites`
--

INSERT INTO `e3xea_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 0, 0, ''),
(5, 'Ozio Gallery3 update site', 'extension', 'http://www.opensourcesolutions.es/download/oziogallery4.xml', 1, 0, ''),
(6, 'Cinch Menu Auto Updater', 'extension', 'http://www.pixelpointcreative.com/autoupdates/cinchmenu.xml', 1, 1418392287, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_update_sites_extensions`
--

DROP TABLE IF EXISTS `e3xea_update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `e3xea_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Svuota la tabella prima dell'inserimento `e3xea_update_sites_extensions`
--

TRUNCATE TABLE `e3xea_update_sites_extensions`;
--
-- Dump dei dati per la tabella `e3xea_update_sites_extensions`
--

INSERT INTO `e3xea_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10002),
(5, 10017),
(6, 10026);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_updates`
--

DROP TABLE IF EXISTS `e3xea_updates`;
CREATE TABLE IF NOT EXISTS `e3xea_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Svuota la tabella prima dell'inserimento `e3xea_updates`
--

TRUNCATE TABLE `e3xea_updates`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_user_keys`
--

DROP TABLE IF EXISTS `e3xea_user_keys`;
CREATE TABLE IF NOT EXISTS `e3xea_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_user_keys`
--

TRUNCATE TABLE `e3xea_user_keys`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_user_notes`
--

DROP TABLE IF EXISTS `e3xea_user_notes`;
CREATE TABLE IF NOT EXISTS `e3xea_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_user_notes`
--

TRUNCATE TABLE `e3xea_user_notes`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_user_profiles`
--

DROP TABLE IF EXISTS `e3xea_user_profiles`;
CREATE TABLE IF NOT EXISTS `e3xea_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Svuota la tabella prima dell'inserimento `e3xea_user_profiles`
--

TRUNCATE TABLE `e3xea_user_profiles`;
-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_user_usergroup_map`
--

DROP TABLE IF EXISTS `e3xea_user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `e3xea_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_user_usergroup_map`
--

TRUNCATE TABLE `e3xea_user_usergroup_map`;
--
-- Dump dei dati per la tabella `e3xea_user_usergroup_map`
--

INSERT INTO `e3xea_user_usergroup_map` (`user_id`, `group_id`) VALUES
(973, 8),
(974, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_usergroups`
--

DROP TABLE IF EXISTS `e3xea_usergroups`;
CREATE TABLE IF NOT EXISTS `e3xea_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_usergroups`
--

TRUNCATE TABLE `e3xea_usergroups`;
--
-- Dump dei dati per la tabella `e3xea_usergroups`
--

INSERT INTO `e3xea_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_users`
--

DROP TABLE IF EXISTS `e3xea_users`;
CREATE TABLE IF NOT EXISTS `e3xea_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=975 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_users`
--

TRUNCATE TABLE `e3xea_users`;
--
-- Dump dei dati per la tabella `e3xea_users`
--

INSERT INTO `e3xea_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(973, 'Super User', 'admin', 'noemirefrigeri@gmail.com', '$2y$10$fRV6jU8d3vIOUKzPisAaxeI.P8axVp481IVz.wPKoESsRhPh43kie', 0, 1, '2014-10-23 15:40:56', '2014-12-12 14:05:49', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(974, 'noemi', 'noemi', 'noemi@gmail.com', '$2y$10$iWe4JfORNE7F7owwXjCocen7oOgX7bG0N8G1TC7JgGlc6.BJHze6m', 0, 0, '2014-11-30 18:12:53', '2014-11-30 18:16:11', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_viewlevels`
--

DROP TABLE IF EXISTS `e3xea_viewlevels`;
CREATE TABLE IF NOT EXISTS `e3xea_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_viewlevels`
--

TRUNCATE TABLE `e3xea_viewlevels`;
--
-- Dump dei dati per la tabella `e3xea_viewlevels`
--

INSERT INTO `e3xea_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Struttura della tabella `e3xea_weblinks`
--

DROP TABLE IF EXISTS `e3xea_weblinks`;
CREATE TABLE IF NOT EXISTS `e3xea_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Svuota la tabella prima dell'inserimento `e3xea_weblinks`
--

TRUNCATE TABLE `e3xea_weblinks`;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `bak_e3xea_assets`
--
ALTER TABLE `bak_e3xea_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `bak_e3xea_associations`
--
ALTER TABLE `bak_e3xea_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `bak_e3xea_banner_clients`
--
ALTER TABLE `bak_e3xea_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `bak_e3xea_banner_tracks`
--
ALTER TABLE `bak_e3xea_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `bak_e3xea_banners`
--
ALTER TABLE `bak_e3xea_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_e3xea_categories`
--
ALTER TABLE `bak_e3xea_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_e3xea_contact_details`
--
ALTER TABLE `bak_e3xea_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `bak_e3xea_content`
--
ALTER TABLE `bak_e3xea_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `bak_e3xea_content_frontpage`
--
ALTER TABLE `bak_e3xea_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `bak_e3xea_content_rating`
--
ALTER TABLE `bak_e3xea_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `bak_e3xea_content_types`
--
ALTER TABLE `bak_e3xea_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `bak_e3xea_contentitem_tag_map`
--
ALTER TABLE `bak_e3xea_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `bak_e3xea_extensions`
--
ALTER TABLE `bak_e3xea_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `bak_e3xea_finder_filters`
--
ALTER TABLE `bak_e3xea_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `bak_e3xea_finder_links`
--
ALTER TABLE `bak_e3xea_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `bak_e3xea_finder_links_terms0`
--
ALTER TABLE `bak_e3xea_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms1`
--
ALTER TABLE `bak_e3xea_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms2`
--
ALTER TABLE `bak_e3xea_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms3`
--
ALTER TABLE `bak_e3xea_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms4`
--
ALTER TABLE `bak_e3xea_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms5`
--
ALTER TABLE `bak_e3xea_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms6`
--
ALTER TABLE `bak_e3xea_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms7`
--
ALTER TABLE `bak_e3xea_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms8`
--
ALTER TABLE `bak_e3xea_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_terms9`
--
ALTER TABLE `bak_e3xea_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_termsa`
--
ALTER TABLE `bak_e3xea_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_termsb`
--
ALTER TABLE `bak_e3xea_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_termsc`
--
ALTER TABLE `bak_e3xea_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_termsd`
--
ALTER TABLE `bak_e3xea_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_termse`
--
ALTER TABLE `bak_e3xea_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_links_termsf`
--
ALTER TABLE `bak_e3xea_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_e3xea_finder_taxonomy`
--
ALTER TABLE `bak_e3xea_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `bak_e3xea_finder_taxonomy_map`
--
ALTER TABLE `bak_e3xea_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `bak_e3xea_finder_terms`
--
ALTER TABLE `bak_e3xea_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `bak_e3xea_finder_terms_common`
--
ALTER TABLE `bak_e3xea_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `bak_e3xea_finder_tokens`
--
ALTER TABLE `bak_e3xea_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `bak_e3xea_finder_tokens_aggregate`
--
ALTER TABLE `bak_e3xea_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `bak_e3xea_finder_types`
--
ALTER TABLE `bak_e3xea_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `bak_e3xea_languages`
--
ALTER TABLE `bak_e3xea_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `bak_e3xea_menu`
--
ALTER TABLE `bak_e3xea_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_e3xea_menu_types`
--
ALTER TABLE `bak_e3xea_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `bak_e3xea_messages`
--
ALTER TABLE `bak_e3xea_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `bak_e3xea_messages_cfg`
--
ALTER TABLE `bak_e3xea_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `bak_e3xea_modules`
--
ALTER TABLE `bak_e3xea_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_e3xea_modules_menu`
--
ALTER TABLE `bak_e3xea_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `bak_e3xea_newsfeeds`
--
ALTER TABLE `bak_e3xea_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `bak_e3xea_overrider`
--
ALTER TABLE `bak_e3xea_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bak_e3xea_postinstall_messages`
--
ALTER TABLE `bak_e3xea_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `bak_e3xea_redirect_links`
--
ALTER TABLE `bak_e3xea_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `bak_e3xea_schemas`
--
ALTER TABLE `bak_e3xea_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `bak_e3xea_session`
--
ALTER TABLE `bak_e3xea_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `bak_e3xea_tags`
--
ALTER TABLE `bak_e3xea_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_e3xea_template_styles`
--
ALTER TABLE `bak_e3xea_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `bak_e3xea_ucm_base`
--
ALTER TABLE `bak_e3xea_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `bak_e3xea_ucm_content`
--
ALTER TABLE `bak_e3xea_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `bak_e3xea_ucm_history`
--
ALTER TABLE `bak_e3xea_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `bak_e3xea_update_sites`
--
ALTER TABLE `bak_e3xea_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `bak_e3xea_update_sites_extensions`
--
ALTER TABLE `bak_e3xea_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `bak_e3xea_updates`
--
ALTER TABLE `bak_e3xea_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `bak_e3xea_user_keys`
--
ALTER TABLE `bak_e3xea_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bak_e3xea_user_notes`
--
ALTER TABLE `bak_e3xea_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `bak_e3xea_user_profiles`
--
ALTER TABLE `bak_e3xea_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `bak_e3xea_user_usergroup_map`
--
ALTER TABLE `bak_e3xea_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `bak_e3xea_users`
--
ALTER TABLE `bak_e3xea_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `bak_e3xea_viewlevels`
--
ALTER TABLE `bak_e3xea_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `bak_e3xea_weblinks`
--
ALTER TABLE `bak_e3xea_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `e3xea_assets`
--
ALTER TABLE `e3xea_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `e3xea_associations`
--
ALTER TABLE `e3xea_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `e3xea_banner_clients`
--
ALTER TABLE `e3xea_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `e3xea_banner_tracks`
--
ALTER TABLE `e3xea_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `e3xea_banners`
--
ALTER TABLE `e3xea_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e3xea_bwg_album`
--
ALTER TABLE `e3xea_bwg_album`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_album_gallery`
--
ALTER TABLE `e3xea_bwg_album_gallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_gallery`
--
ALTER TABLE `e3xea_bwg_gallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_image`
--
ALTER TABLE `e3xea_bwg_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_image_comment`
--
ALTER TABLE `e3xea_bwg_image_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_image_rate`
--
ALTER TABLE `e3xea_bwg_image_rate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_image_tag`
--
ALTER TABLE `e3xea_bwg_image_tag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_option`
--
ALTER TABLE `e3xea_bwg_option`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_tags`
--
ALTER TABLE `e3xea_bwg_tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_bwg_theme`
--
ALTER TABLE `e3xea_bwg_theme`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_categories`
--
ALTER TABLE `e3xea_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e3xea_contact_details`
--
ALTER TABLE `e3xea_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `e3xea_content`
--
ALTER TABLE `e3xea_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `e3xea_content_frontpage`
--
ALTER TABLE `e3xea_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `e3xea_content_rating`
--
ALTER TABLE `e3xea_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `e3xea_content_types`
--
ALTER TABLE `e3xea_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `e3xea_contentitem_tag_map`
--
ALTER TABLE `e3xea_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `e3xea_extensions`
--
ALTER TABLE `e3xea_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `e3xea_finder_filters`
--
ALTER TABLE `e3xea_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `e3xea_finder_links`
--
ALTER TABLE `e3xea_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `e3xea_finder_links_terms0`
--
ALTER TABLE `e3xea_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms1`
--
ALTER TABLE `e3xea_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms2`
--
ALTER TABLE `e3xea_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms3`
--
ALTER TABLE `e3xea_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms4`
--
ALTER TABLE `e3xea_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms5`
--
ALTER TABLE `e3xea_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms6`
--
ALTER TABLE `e3xea_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms7`
--
ALTER TABLE `e3xea_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms8`
--
ALTER TABLE `e3xea_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_terms9`
--
ALTER TABLE `e3xea_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_termsa`
--
ALTER TABLE `e3xea_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_termsb`
--
ALTER TABLE `e3xea_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_termsc`
--
ALTER TABLE `e3xea_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_termsd`
--
ALTER TABLE `e3xea_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_termse`
--
ALTER TABLE `e3xea_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_links_termsf`
--
ALTER TABLE `e3xea_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e3xea_finder_taxonomy`
--
ALTER TABLE `e3xea_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `e3xea_finder_taxonomy_map`
--
ALTER TABLE `e3xea_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `e3xea_finder_terms`
--
ALTER TABLE `e3xea_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `e3xea_finder_terms_common`
--
ALTER TABLE `e3xea_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `e3xea_finder_tokens`
--
ALTER TABLE `e3xea_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `e3xea_finder_tokens_aggregate`
--
ALTER TABLE `e3xea_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `e3xea_finder_types`
--
ALTER TABLE `e3xea_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `e3xea_languages`
--
ALTER TABLE `e3xea_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `e3xea_menu`
--
ALTER TABLE `e3xea_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e3xea_menu_types`
--
ALTER TABLE `e3xea_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `e3xea_messages`
--
ALTER TABLE `e3xea_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `e3xea_messages_cfg`
--
ALTER TABLE `e3xea_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `e3xea_modules`
--
ALTER TABLE `e3xea_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e3xea_modules_menu`
--
ALTER TABLE `e3xea_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `e3xea_newsfeeds`
--
ALTER TABLE `e3xea_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `e3xea_overrider`
--
ALTER TABLE `e3xea_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_block_days`
--
ALTER TABLE `e3xea_pbbooking_block_days`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_cals`
--
ALTER TABLE `e3xea_pbbooking_cals`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_config`
--
ALTER TABLE `e3xea_pbbooking_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_customfields`
--
ALTER TABLE `e3xea_pbbooking_customfields`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_customfields_data`
--
ALTER TABLE `e3xea_pbbooking_customfields_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_events`
--
ALTER TABLE `e3xea_pbbooking_events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_logs`
--
ALTER TABLE `e3xea_pbbooking_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_pending`
--
ALTER TABLE `e3xea_pbbooking_pending`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_pbbooking_treatments`
--
ALTER TABLE `e3xea_pbbooking_treatments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e3xea_postinstall_messages`
--
ALTER TABLE `e3xea_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `e3xea_redirect_links`
--
ALTER TABLE `e3xea_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `e3xea_schemas`
--
ALTER TABLE `e3xea_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `e3xea_session`
--
ALTER TABLE `e3xea_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `e3xea_tags`
--
ALTER TABLE `e3xea_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e3xea_template_styles`
--
ALTER TABLE `e3xea_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `e3xea_ucm_base`
--
ALTER TABLE `e3xea_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `e3xea_ucm_content`
--
ALTER TABLE `e3xea_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `e3xea_ucm_history`
--
ALTER TABLE `e3xea_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `e3xea_update_sites`
--
ALTER TABLE `e3xea_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `e3xea_update_sites_extensions`
--
ALTER TABLE `e3xea_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `e3xea_updates`
--
ALTER TABLE `e3xea_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `e3xea_user_keys`
--
ALTER TABLE `e3xea_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `e3xea_user_notes`
--
ALTER TABLE `e3xea_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `e3xea_user_profiles`
--
ALTER TABLE `e3xea_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `e3xea_user_usergroup_map`
--
ALTER TABLE `e3xea_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `e3xea_usergroups`
--
ALTER TABLE `e3xea_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`);

--
-- Indexes for table `e3xea_users`
--
ALTER TABLE `e3xea_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `e3xea_viewlevels`
--
ALTER TABLE `e3xea_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `e3xea_weblinks`
--
ALTER TABLE `e3xea_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bak_e3xea_assets`
--
ALTER TABLE `bak_e3xea_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `bak_e3xea_banner_clients`
--
ALTER TABLE `bak_e3xea_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_banners`
--
ALTER TABLE `bak_e3xea_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_categories`
--
ALTER TABLE `bak_e3xea_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `bak_e3xea_contact_details`
--
ALTER TABLE `bak_e3xea_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_content`
--
ALTER TABLE `bak_e3xea_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_content_types`
--
ALTER TABLE `bak_e3xea_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `bak_e3xea_extensions`
--
ALTER TABLE `bak_e3xea_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT for table `bak_e3xea_finder_filters`
--
ALTER TABLE `bak_e3xea_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_finder_links`
--
ALTER TABLE `bak_e3xea_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_finder_taxonomy`
--
ALTER TABLE `bak_e3xea_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bak_e3xea_finder_terms`
--
ALTER TABLE `bak_e3xea_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_finder_types`
--
ALTER TABLE `bak_e3xea_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_languages`
--
ALTER TABLE `bak_e3xea_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bak_e3xea_menu`
--
ALTER TABLE `bak_e3xea_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `bak_e3xea_menu_types`
--
ALTER TABLE `bak_e3xea_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bak_e3xea_messages`
--
ALTER TABLE `bak_e3xea_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_modules`
--
ALTER TABLE `bak_e3xea_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `bak_e3xea_newsfeeds`
--
ALTER TABLE `bak_e3xea_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_overrider`
--
ALTER TABLE `bak_e3xea_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `bak_e3xea_postinstall_messages`
--
ALTER TABLE `bak_e3xea_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bak_e3xea_redirect_links`
--
ALTER TABLE `bak_e3xea_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_tags`
--
ALTER TABLE `bak_e3xea_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bak_e3xea_template_styles`
--
ALTER TABLE `bak_e3xea_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `bak_e3xea_ucm_content`
--
ALTER TABLE `bak_e3xea_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_ucm_history`
--
ALTER TABLE `bak_e3xea_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_update_sites`
--
ALTER TABLE `bak_e3xea_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bak_e3xea_updates`
--
ALTER TABLE `bak_e3xea_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_user_keys`
--
ALTER TABLE `bak_e3xea_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_user_notes`
--
ALTER TABLE `bak_e3xea_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_users`
--
ALTER TABLE `bak_e3xea_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_e3xea_viewlevels`
--
ALTER TABLE `bak_e3xea_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bak_e3xea_weblinks`
--
ALTER TABLE `bak_e3xea_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_assets`
--
ALTER TABLE `e3xea_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `e3xea_banner_clients`
--
ALTER TABLE `e3xea_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_banners`
--
ALTER TABLE `e3xea_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_album`
--
ALTER TABLE `e3xea_bwg_album`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_album_gallery`
--
ALTER TABLE `e3xea_bwg_album_gallery`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_gallery`
--
ALTER TABLE `e3xea_bwg_gallery`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_image`
--
ALTER TABLE `e3xea_bwg_image`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_image_comment`
--
ALTER TABLE `e3xea_bwg_image_comment`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_image_rate`
--
ALTER TABLE `e3xea_bwg_image_rate`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_image_tag`
--
ALTER TABLE `e3xea_bwg_image_tag`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `e3xea_bwg_option`
--
ALTER TABLE `e3xea_bwg_option`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e3xea_bwg_tags`
--
ALTER TABLE `e3xea_bwg_tags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_bwg_theme`
--
ALTER TABLE `e3xea_bwg_theme`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `e3xea_categories`
--
ALTER TABLE `e3xea_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `e3xea_contact_details`
--
ALTER TABLE `e3xea_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_content`
--
ALTER TABLE `e3xea_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `e3xea_content_types`
--
ALTER TABLE `e3xea_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `e3xea_extensions`
--
ALTER TABLE `e3xea_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10027;
--
-- AUTO_INCREMENT for table `e3xea_finder_filters`
--
ALTER TABLE `e3xea_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_finder_links`
--
ALTER TABLE `e3xea_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_finder_taxonomy`
--
ALTER TABLE `e3xea_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e3xea_finder_terms`
--
ALTER TABLE `e3xea_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_finder_types`
--
ALTER TABLE `e3xea_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_languages`
--
ALTER TABLE `e3xea_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `e3xea_menu`
--
ALTER TABLE `e3xea_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `e3xea_menu_types`
--
ALTER TABLE `e3xea_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `e3xea_messages`
--
ALTER TABLE `e3xea_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_modules`
--
ALTER TABLE `e3xea_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `e3xea_newsfeeds`
--
ALTER TABLE `e3xea_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_overrider`
--
ALTER TABLE `e3xea_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_block_days`
--
ALTER TABLE `e3xea_pbbooking_block_days`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_cals`
--
ALTER TABLE `e3xea_pbbooking_cals`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_config`
--
ALTER TABLE `e3xea_pbbooking_config`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_customfields`
--
ALTER TABLE `e3xea_pbbooking_customfields`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_customfields_data`
--
ALTER TABLE `e3xea_pbbooking_customfields_data`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_events`
--
ALTER TABLE `e3xea_pbbooking_events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_logs`
--
ALTER TABLE `e3xea_pbbooking_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_pending`
--
ALTER TABLE `e3xea_pbbooking_pending`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e3xea_pbbooking_treatments`
--
ALTER TABLE `e3xea_pbbooking_treatments`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `e3xea_postinstall_messages`
--
ALTER TABLE `e3xea_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `e3xea_redirect_links`
--
ALTER TABLE `e3xea_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_tags`
--
ALTER TABLE `e3xea_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `e3xea_template_styles`
--
ALTER TABLE `e3xea_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `e3xea_ucm_content`
--
ALTER TABLE `e3xea_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_ucm_history`
--
ALTER TABLE `e3xea_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `e3xea_update_sites`
--
ALTER TABLE `e3xea_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `e3xea_updates`
--
ALTER TABLE `e3xea_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_user_keys`
--
ALTER TABLE `e3xea_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_user_notes`
--
ALTER TABLE `e3xea_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e3xea_usergroups`
--
ALTER TABLE `e3xea_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `e3xea_users`
--
ALTER TABLE `e3xea_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=975;
--
-- AUTO_INCREMENT for table `e3xea_viewlevels`
--
ALTER TABLE `e3xea_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `e3xea_weblinks`
--
ALTER TABLE `e3xea_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
DROP DATABASE `test`;
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
