-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 31 juil. 2020 à 02:46
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bigs-new`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles_blogs`
--

CREATE TABLE `articles_blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bloc_services`
--

CREATE TABLE `bloc_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories_blogs`
--

CREATE TABLE `categories_blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(59, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(61, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(62, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 4),
(63, 10, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 5),
(64, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(65, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(67, 11, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(68, 11, 'categorie_id', 'text', 'Categorie Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(69, 11, 'tag_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categorie_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":null}', 5),
(81, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(83, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(84, 13, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(85, 13, 'texte', 'rich_text_box', 'Texte', 0, 1, 1, 1, 1, 1, '{}', 5),
(86, 13, 'temoignage_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(96, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(98, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(99, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 4),
(100, 16, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 5),
(101, 16, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(102, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(103, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(105, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(106, 17, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 4),
(107, 17, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(108, 17, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(109, 17, 'categorie', 'text', 'Categorie', 0, 1, 1, 1, 1, 1, '{}', 7),
(110, 17, 'articles_blog_belongsto_categories_blog_relationship', 'relationship', 'categories_blogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CategoriesBlog\",\"table\":\"categories_blogs\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"articles_blogs\",\"pivot\":\"0\",\"taggable\":null}', 8),
(111, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(113, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(114, 18, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 4),
(115, 18, 'description', 'markdown_editor', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(116, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(118, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(119, 19, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 4),
(120, 19, 'description', 'markdown_editor', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(121, 19, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(122, 19, 'categorie_id', 'text', 'Categorie Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(123, 19, 'service_belongsto_categories_blog_relationship', 'relationship', 'categories_blogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CategoriesBlog\",\"table\":\"categories_blogs\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"articles_blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(124, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(125, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(126, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(127, 20, 'prenom', 'text', 'Prenom', 1, 1, 1, 1, 1, 1, '{}', 4),
(128, 20, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 5),
(129, 20, 'role', 'text', 'Role', 1, 1, 1, 1, 1, 1, '{}', 6),
(130, 20, 'parcour_pro', 'markdown_editor', 'Parcour Pro', 0, 1, 1, 1, 1, 1, '{}', 7),
(131, 20, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 8),
(132, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(134, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(135, 22, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 4),
(136, 22, 'description', 'markdown_editor', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(137, 22, 'prix', 'text', 'Prix', 0, 1, 1, 1, 1, 1, '{}', 6),
(138, 22, 'devise', 'text', 'Devise', 0, 1, 1, 1, 1, 1, '{}', 7),
(139, 22, 'periode_paiements', 'text', 'Periode Paiements', 0, 1, 1, 1, 1, 1, '{\"default\":\"Mois\",\"options\":{\"option1\":\"Jour\",\"option2\":\"Mois\",\"option3\":\"Trimestre\",\"option4\":\"Semestre\",\"option5\":\"Annee\"}}', 8),
(140, 22, 'avantage_1', 'text', 'Avantage 1', 0, 1, 1, 1, 1, 1, '{}', 9),
(141, 22, 'avantage_2', 'text', 'Avantage 2', 0, 1, 1, 1, 1, 1, '{}', 10),
(142, 22, 'avantage_3', 'text', 'Avantage 3', 0, 1, 1, 1, 1, 1, '{}', 11),
(143, 22, 'avantage_4', 'text', 'Avantage 4', 0, 1, 1, 1, 1, 1, '{}', 12),
(144, 22, 'avantage_5', 'text', 'Avantage 5', 0, 1, 1, 1, 1, 1, '{}', 13),
(145, 22, 'onconvenient_1', 'text', 'Onconvenient 1', 0, 1, 1, 1, 1, 1, '{}', 14),
(146, 22, 'onconvenient_2', 'text', 'Onconvenient 2', 0, 1, 1, 1, 1, 1, '{}', 15),
(147, 22, 'onconvenient_3', 'text', 'Onconvenient 3', 0, 1, 1, 1, 1, 1, '{}', 16);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-06-14 19:05:23', '2020-06-14 19:05:23'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-06-14 19:05:24', '2020-06-14 19:05:24'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-06-14 19:05:24', '2020-06-14 19:05:24'),
(10, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"title\",\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-06-15 21:39:10', '2020-06-15 21:39:10'),
(11, 'tags', 'tags', 'Tag', 'Tags', 'voyager-tag', 'App\\Tag', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"title\",\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-06-15 21:41:55', '2020-06-15 21:41:55'),
(13, 'temoignages', 'temoignages', 'Temoignage', 'Temoignages', 'voyager-bubble', 'App\\Temoignage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-17 19:25:59', '2020-06-17 19:28:53'),
(16, 'categories_blogs', 'categories-blogs', 'Categories Blog', 'Categories Blogs', 'voyager-categories', 'App\\CategoriesBlog', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-07-30 21:54:48', '2020-07-30 21:55:27'),
(17, 'articles_blogs', 'articles-blogs', 'Articles Blog', 'Articles Blogs', 'voyager-documentation', 'App\\ArticlesBlog', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-07-30 21:57:47', '2020-07-30 21:57:47'),
(18, 'bloc_services', 'bloc-services', 'Bloc Service', 'Bloc Services', 'voyager-browser', 'App\\BlocService', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-07-30 22:06:40', '2020-07-30 22:06:40'),
(19, 'services', 'services', 'Service', 'Services', 'voyager-list', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-30 22:10:30', '2020-07-30 22:14:11'),
(20, 'equipes', 'equipes', 'Equipe', 'Equipes', 'voyager-people', 'App\\Equipe', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-07-30 22:16:35', '2020-07-30 22:16:35'),
(21, 'page_accueil', 'page-accueil', 'Page Accueil', 'Page Accueils', 'voyager-home', 'App\\PageAccueil', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-07-30 22:20:17', '2020-07-30 22:20:17'),
(22, 'pricings', 'pricings', 'Pricing', 'Pricings', 'voyager-buy', 'App\\Pricing', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-07-30 22:43:20', '2020-07-30 22:43:20');

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcour_pro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id`, `created_at`, `updated_at`, `prenom`, `nom`, `role`, `parcour_pro`, `photo`) VALUES
(8, '2020-06-17 19:16:18', '2020-06-17 19:16:18', 'Ab fuga Labore numq', 'Autem qui reprehende', '<p>Rerum iure aspernatu.</p>', '<p>Sit pariatur? Duis c.</p>', 'equipes/June2020/htdROi7kWEGbMKEyrIbm.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-06-14 19:05:25', '2020-06-14 19:05:25');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-06-14 19:05:25', '2020-06-14 19:05:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 7, '2020-06-14 19:05:25', '2020-06-15 21:56:51', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 24, 1, '2020-06-14 19:05:25', '2020-07-30 21:52:04', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 24, 2, '2020-06-14 19:05:26', '2020-07-30 21:52:06', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2020-06-14 19:05:26', '2020-07-30 22:45:00', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-06-14 19:05:26', '2020-06-15 21:52:49', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-06-14 19:05:26', '2020-06-15 21:52:49', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-06-14 19:05:26', '2020-06-15 21:52:49', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-06-14 19:05:26', '2020-06-15 21:52:49', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2020-06-14 19:05:26', '2020-06-15 21:56:37', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-06-14 19:05:32', '2020-06-15 21:52:49', 'voyager.hooks', NULL),
(18, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 23, 2, '2020-06-15 21:39:10', '2020-07-30 22:20:30', 'voyager.categories.index', NULL),
(21, 1, 'Temoignages', '', '_self', 'voyager-bubble', '#000000', 23, 3, '2020-06-17 19:25:59', '2020-07-30 22:20:30', 'voyager.temoignages.index', 'null'),
(23, 1, 'Gestion des Contenus', '', '_self', 'voyager-browser', '#000000', NULL, 2, '2020-07-30 21:50:17', '2020-07-30 21:51:20', NULL, ''),
(24, 1, 'Gestion des Utilisateurs', '', '_self', 'voyager-people', '#000000', NULL, 5, '2020-07-30 21:51:51', '2020-07-30 22:45:00', NULL, ''),
(25, 1, 'Categories Blogs', '', '_self', NULL, NULL, 27, 1, '2020-07-30 21:54:48', '2020-07-30 21:59:47', 'voyager.categories-blogs.index', NULL),
(26, 1, 'Articles Blogs', '', '_self', 'voyager-documentation', NULL, 27, 2, '2020-07-30 21:57:47', '2020-07-30 21:59:52', 'voyager.articles-blogs.index', NULL),
(27, 1, 'Blog', '', '_self', 'voyager-logbook', '#000000', NULL, 4, '2020-07-30 21:59:30', '2020-07-30 22:45:00', NULL, ''),
(28, 1, 'Bloc Services', '', '_self', 'voyager-browser', NULL, 23, 4, '2020-07-30 22:06:41', '2020-07-30 22:20:30', 'voyager.bloc-services.index', NULL),
(29, 1, 'Services', '', '_self', 'voyager-list', '#000000', 23, 5, '2020-07-30 22:10:30', '2020-07-30 22:20:30', 'voyager.services.index', 'null'),
(30, 1, 'Equipes', '', '_self', 'voyager-people', NULL, 23, 6, '2020-07-30 22:16:35', '2020-07-30 22:20:30', 'voyager.equipes.index', NULL),
(31, 1, 'Page Accueils', '', '_self', 'voyager-home', NULL, 23, 1, '2020-07-30 22:20:17', '2020-07-30 22:20:30', 'voyager.page-accueil.index', NULL),
(32, 1, 'Pricings', '', '_self', 'voyager-buy', NULL, NULL, 3, '2020-07-30 22:43:20', '2020-07-30 22:45:00', 'voyager.pricings.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `page_accueil`
--

CREATE TABLE `page_accueil` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre_site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` int(11) DEFAULT NULL,
  `linked` int(11) DEFAULT NULL,
  `twitter` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-06-14 19:05:26', '2020-06-14 19:05:26'),
(2, 'browse_bread', NULL, '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(3, 'browse_database', NULL, '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(4, 'browse_media', NULL, '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(5, 'browse_compass', NULL, '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(6, 'browse_menus', 'menus', '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(7, 'read_menus', 'menus', '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(8, 'edit_menus', 'menus', '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(9, 'add_menus', 'menus', '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(10, 'delete_menus', 'menus', '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(11, 'browse_roles', 'roles', '2020-06-14 19:05:27', '2020-06-14 19:05:27'),
(12, 'read_roles', 'roles', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(13, 'edit_roles', 'roles', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(14, 'add_roles', 'roles', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(15, 'delete_roles', 'roles', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(16, 'browse_users', 'users', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(17, 'read_users', 'users', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(18, 'edit_users', 'users', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(19, 'add_users', 'users', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(20, 'delete_users', 'users', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(21, 'browse_settings', 'settings', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(22, 'read_settings', 'settings', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(23, 'edit_settings', 'settings', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(24, 'add_settings', 'settings', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(25, 'delete_settings', 'settings', '2020-06-14 19:05:28', '2020-06-14 19:05:28'),
(26, 'browse_hooks', NULL, '2020-06-14 19:05:32', '2020-06-14 19:05:32'),
(57, 'browse_categories', 'categories', '2020-06-15 21:39:10', '2020-06-15 21:39:10'),
(58, 'read_categories', 'categories', '2020-06-15 21:39:10', '2020-06-15 21:39:10'),
(59, 'edit_categories', 'categories', '2020-06-15 21:39:10', '2020-06-15 21:39:10'),
(60, 'add_categories', 'categories', '2020-06-15 21:39:10', '2020-06-15 21:39:10'),
(61, 'delete_categories', 'categories', '2020-06-15 21:39:10', '2020-06-15 21:39:10'),
(62, 'browse_tags', 'tags', '2020-06-15 21:41:55', '2020-06-15 21:41:55'),
(63, 'read_tags', 'tags', '2020-06-15 21:41:55', '2020-06-15 21:41:55'),
(64, 'edit_tags', 'tags', '2020-06-15 21:41:55', '2020-06-15 21:41:55'),
(65, 'add_tags', 'tags', '2020-06-15 21:41:55', '2020-06-15 21:41:55'),
(66, 'delete_tags', 'tags', '2020-06-15 21:41:55', '2020-06-15 21:41:55'),
(72, 'browse_temoignages', 'temoignages', '2020-06-17 19:25:59', '2020-06-17 19:25:59'),
(73, 'read_temoignages', 'temoignages', '2020-06-17 19:25:59', '2020-06-17 19:25:59'),
(74, 'edit_temoignages', 'temoignages', '2020-06-17 19:25:59', '2020-06-17 19:25:59'),
(75, 'add_temoignages', 'temoignages', '2020-06-17 19:25:59', '2020-06-17 19:25:59'),
(76, 'delete_temoignages', 'temoignages', '2020-06-17 19:25:59', '2020-06-17 19:25:59'),
(82, 'browse_categories_blogs', 'categories_blogs', '2020-07-30 21:54:48', '2020-07-30 21:54:48'),
(83, 'read_categories_blogs', 'categories_blogs', '2020-07-30 21:54:48', '2020-07-30 21:54:48'),
(84, 'edit_categories_blogs', 'categories_blogs', '2020-07-30 21:54:48', '2020-07-30 21:54:48'),
(85, 'add_categories_blogs', 'categories_blogs', '2020-07-30 21:54:48', '2020-07-30 21:54:48'),
(86, 'delete_categories_blogs', 'categories_blogs', '2020-07-30 21:54:48', '2020-07-30 21:54:48'),
(87, 'browse_articles_blogs', 'articles_blogs', '2020-07-30 21:57:47', '2020-07-30 21:57:47'),
(88, 'read_articles_blogs', 'articles_blogs', '2020-07-30 21:57:47', '2020-07-30 21:57:47'),
(89, 'edit_articles_blogs', 'articles_blogs', '2020-07-30 21:57:47', '2020-07-30 21:57:47'),
(90, 'add_articles_blogs', 'articles_blogs', '2020-07-30 21:57:47', '2020-07-30 21:57:47'),
(91, 'delete_articles_blogs', 'articles_blogs', '2020-07-30 21:57:47', '2020-07-30 21:57:47'),
(92, 'browse_bloc_services', 'bloc_services', '2020-07-30 22:06:40', '2020-07-30 22:06:40'),
(93, 'read_bloc_services', 'bloc_services', '2020-07-30 22:06:40', '2020-07-30 22:06:40'),
(94, 'edit_bloc_services', 'bloc_services', '2020-07-30 22:06:40', '2020-07-30 22:06:40'),
(95, 'add_bloc_services', 'bloc_services', '2020-07-30 22:06:40', '2020-07-30 22:06:40'),
(96, 'delete_bloc_services', 'bloc_services', '2020-07-30 22:06:40', '2020-07-30 22:06:40'),
(97, 'browse_services', 'services', '2020-07-30 22:10:30', '2020-07-30 22:10:30'),
(98, 'read_services', 'services', '2020-07-30 22:10:30', '2020-07-30 22:10:30'),
(99, 'edit_services', 'services', '2020-07-30 22:10:30', '2020-07-30 22:10:30'),
(100, 'add_services', 'services', '2020-07-30 22:10:30', '2020-07-30 22:10:30'),
(101, 'delete_services', 'services', '2020-07-30 22:10:30', '2020-07-30 22:10:30'),
(102, 'browse_equipes', 'equipes', '2020-07-30 22:16:35', '2020-07-30 22:16:35'),
(103, 'read_equipes', 'equipes', '2020-07-30 22:16:35', '2020-07-30 22:16:35'),
(104, 'edit_equipes', 'equipes', '2020-07-30 22:16:35', '2020-07-30 22:16:35'),
(105, 'add_equipes', 'equipes', '2020-07-30 22:16:35', '2020-07-30 22:16:35'),
(106, 'delete_equipes', 'equipes', '2020-07-30 22:16:35', '2020-07-30 22:16:35'),
(107, 'browse_page_accueil', 'page_accueil', '2020-07-30 22:20:17', '2020-07-30 22:20:17'),
(108, 'read_page_accueil', 'page_accueil', '2020-07-30 22:20:17', '2020-07-30 22:20:17'),
(109, 'edit_page_accueil', 'page_accueil', '2020-07-30 22:20:17', '2020-07-30 22:20:17'),
(110, 'add_page_accueil', 'page_accueil', '2020-07-30 22:20:17', '2020-07-30 22:20:17'),
(111, 'delete_page_accueil', 'page_accueil', '2020-07-30 22:20:17', '2020-07-30 22:20:17'),
(112, 'browse_pricings', 'pricings', '2020-07-30 22:43:20', '2020-07-30 22:43:20'),
(113, 'read_pricings', 'pricings', '2020-07-30 22:43:20', '2020-07-30 22:43:20'),
(114, 'edit_pricings', 'pricings', '2020-07-30 22:43:20', '2020-07-30 22:43:20'),
(115, 'add_pricings', 'pricings', '2020-07-30 22:43:20', '2020-07-30 22:43:20'),
(116, 'delete_pricings', 'pricings', '2020-07-30 22:43:20', '2020-07-30 22:43:20');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pricings`
--

CREATE TABLE `pricings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `devise` int(11) NOT NULL,
  `periode_paiements` int(11) NOT NULL,
  `avantage_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avantage_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avantage_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avantage_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avantage_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inconvenient_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inconvenient_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inconvenient_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-06-14 19:05:26', '2020-06-14 19:05:26'),
(2, 'user', 'Normal User', '2020-06-14 19:05:26', '2020-06-14 19:05:26');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `created_at`, `updated_at`, `nom`, `description`, `image`, `categorie_id`) VALUES
(1, '2020-06-17 19:39:02', '2020-06-17 19:39:02', 'sdfsdf', '<p>sdfsdf</p>', 'services/June2020/WcSxDS2jZd8OVC7P6sxW.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/June2020/YC8mGEiyX4MzV3q6Y6u7.jpeg', '', 'image', 5, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/June2020/Jy60XE2xs9C1tkZDrX9Z.jpeg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `texte` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `created_at`, `updated_at`, `user_id`, `texte`) VALUES
(1, '2020-06-17 19:30:06', '2020-06-17 19:30:06', 1, '<p>adfasdf</p>');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'aristide', 'admin@elitehive.net', 'users/July2020/hP3DTcJrYOPCVYCuNXuF.jpeg', NULL, '$2y$10$sPZdDKnOCUPO1eelH3qO4OJWwK5pJSlGuTeLBbilnRjIAaOYqBvBq', NULL, '{\"locale\":\"en\"}', '2020-06-15 18:14:04', '2020-07-30 21:46:13'),
(2, 2, 'zibi', 'zibi@elitehive.net', 'users/June2020/D4luDOzKeXgLwYPixHCY.JPG', NULL, '$2y$10$jEWdHazOGvb0nYZKZwMd3OMHs45STOGvywvy.hGHLD0ChbvBhtMse', NULL, '{\"locale\":\"fr\"}', '2020-06-17 19:50:00', '2020-06-17 19:51:10');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles_blogs`
--
ALTER TABLE `articles_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bloc_services`
--
ALTER TABLE `bloc_services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories_blogs`
--
ALTER TABLE `categories_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_accueil`
--
ALTER TABLE `page_accueil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles_blogs`
--
ALTER TABLE `articles_blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bloc_services`
--
ALTER TABLE `bloc_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories_blogs`
--
ALTER TABLE `categories_blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `page_accueil`
--
ALTER TABLE `page_accueil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
