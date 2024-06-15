-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Чрв 15 2024 р., 18:08
-- Версія сервера: 8.0.30
-- Версія PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `laravelka`
--

-- --------------------------------------------------------

--
-- Структура таблиці `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pathimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `image`, `genre_id`, `created_at`, `updated_at`, `pathimage`) VALUES
(1, '1984', 'Et et possimus rem nihil ex. Quisquam adipisci dolorem velit assumenda possimus rerum aut. Sed nisi id aliquid dolorem.', 'https://picsum.photos/200/300', 6, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(2, 'The Great Gatsby', 'Blanditiis sint rerum maxime ea earum enim voluptatem dolorem. Voluptatem nisi veniam placeat facilis. Inventore a quia maiores ut natus.', 'https://picsum.photos/200/300', 6, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(3, 'One Hundred Years of Solitude', 'Ea velit totam omnis facere ut quis incidunt. Tempore neque soluta ut molestias quam. Dicta et voluptas consequuntur fuga. Vero omnis reprehenderit inventore doloremque necessitatibus architecto dolores.', 'https://picsum.photos/200/300', 6, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(4, 'A Passage to India', 'Corporis et quae delectus. Porro modi sit repudiandae excepturi atque. Rerum sint nihil excepturi ut.', 'https://picsum.photos/200/300', 6, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(5, 'On the Road', 'Fugit aspernatur possimus dolores voluptas aut sed. Voluptas dolorem autem illo est et adipisci. Rem praesentium recusandae est nostrum. Perferendis totam voluptatem quia et consectetur.', 'https://picsum.photos/200/300', 6, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(6, 'To the Lighthouse', 'Totam quam quae voluptas. Sunt et velit voluptatibus. Dolorem eligendi nostrum harum laborum eligendi voluptas nobis. Earum voluptatum perspiciatis rerum facilis repellat enim. Quia sint hic vitae blanditiis sapiente officiis eligendi. Doloribus asperiores suscipit incidunt qui vitae quisquam quis saepe. Sit sunt velit vel tenetur.', 'https://picsum.photos/200/300', 7, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(7, 'The Catcher in the Rye', 'Adipisci omnis aspernatur dolore dolores officiis. Odit animi laudantium id quisquam at. Itaque tempora qui ratione temporibus consequatur nostrum delectus. Consequuntur quaerat eos voluptas culpa. Atque expedita saepe qui voluptatem.', 'https://picsum.photos/200/300', 7, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(8, 'Gone with the Wind', 'Eius quo explicabo aut aliquam qui. Perferendis sunt dignissimos recusandae velit quas. At reiciendis pariatur ea necessitatibus consequatur autem at. At magni commodi omnis voluptatibus consequatur debitis quis. Quibusdam veritatis laboriosam delectus. Aperiam excepturi officiis nesciunt nesciunt quo odit quidem.', 'https://picsum.photos/200/300', 7, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(9, 'The Hobbit', 'Quisquam explicabo repellendus ut atque in incidunt. Cum consequuntur maxime a odit quia non aliquam. Ea reiciendis voluptatem odit non consequatur. Tenetur iste unde dolores vitae fuga et vel. Soluta ipsam expedita optio nulla inventore soluta deserunt. Repudiandae et repellat quia autem velit asperiores. Ad unde nobis quaerat sunt soluta reprehenderit voluptatum.', 'https://picsum.photos/200/300', 7, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(10, 'Ulysses', 'Culpa labore amet ipsum voluptas. Ea omnis fuga consequatur provident. Suscipit nisi aut ea est fuga dolore.', 'https://picsum.photos/200/300', 7, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(11, 'The Old Man and the Sea', 'Laudantium omnis sed temporibus sit eum sit ea. Minima neque ut dicta velit molestiae quaerat ut sunt. Facere dolorum excepturi rerum voluptatibus voluptas quia nemo. Totam sit non non hic quam odit.', 'https://picsum.photos/200/300', 8, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(12, 'The Sound and the Fury', 'Dolorum itaque distinctio ducimus rerum inventore accusamus voluptas. Nesciunt iste magnam sapiente qui sint quo dolorem. Nemo aut possimus doloremque ut neque. Nihil reiciendis praesentium et excepturi enim ea in. Inventore sed inventore asperiores corporis sint.', 'https://picsum.photos/200/300', 8, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(13, 'Catch-22', 'Blanditiis est pariatur officia. Velit veritatis recusandae quo rerum voluptatem.', 'https://picsum.photos/200/300', 8, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(14, 'Brave New World', 'Accusantium accusantium sunt repudiandae est et ad inventore. Quisquam explicabo vero eveniet. Inventore excepturi voluptas quis in modi quo soluta molestiae.', 'https://picsum.photos/200/300', 8, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(15, 'Invisible Man', 'In modi ex accusamus aliquam dolorum minima eligendi fuga. Esse non officiis libero unde. Ut distinctio quia maiores debitis.', 'https://picsum.photos/200/300', 8, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(16, 'Don Quixote', 'Rem unde vel saepe doloremque voluptas corporis id. Assumenda et dolores in qui exercitationem. Inventore quam quia explicabo ratione consequuntur sit a.', 'https://picsum.photos/200/300', 9, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(17, 'Beloved', 'Et unde sit quasi quo nam omnis sunt. In dolorem iste rerum autem. Et modi similique quia et quod quo.', 'https://picsum.photos/200/300', 9, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(18, 'Mrs. Dalloway', 'Expedita illo molestiae incidunt eum velit. Possimus dolorem non eum libero quibusdam officiis ipsam. Praesentium alias maxime illum.', 'https://picsum.photos/200/300', 9, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(19, 'Jane Eyre', 'Aut impedit reiciendis debitis qui fugiat. Voluptatibus laboriosam vitae incidunt qui cumque libero. Quidem fuga eaque est quia.', 'https://picsum.photos/200/300', 9, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(20, 'The Adventures of Huckleberry Finn', 'Consequatur aut ea repellendus. Minima similique quia nemo sint. Assumenda nemo sint error dolorem et. Blanditiis delectus magni qui et veritatis odit sapiente. Deserunt quibusdam voluptatem ipsum dicta quos.', 'https://picsum.photos/200/300', 9, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(21, 'The Lord of the Rings', 'Ut non placeat aliquid adipisci cupiditate ut. Et eaque quis cupiditate. Quia vel velit at reiciendis at. Accusamus et sit repellendus. Non expedita aliquam est voluptas voluptas maxime. Omnis voluptatem earum dignissimos facilis quo. Laudantium fugiat similique praesentium veniam iure.', 'https://picsum.photos/200/300', 10, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(22, 'Moby Dick', 'Voluptas autem ut omnis. Magnam consequatur fuga deserunt ea veritatis sint. Minus tenetur laboriosam incidunt illum est ut. Quas nesciunt libero earum eveniet nobis sit libero. Odio et eum nobis sit iure itaque. Id id est et quo.', 'https://picsum.photos/200/300', 10, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(23, 'Pride and Prejudice', 'Quo expedita amet consequatur. Impedit est quas voluptate illum tempore ad. Eum quia pariatur cumque mollitia est. Quaerat dolorum tenetur qui accusantium facilis.', 'https://picsum.photos/200/300', 10, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(24, 'The Picture of Dorian Gray', 'Quidem dolorem et totam ad aliquam alias. Quia voluptatum sit facere dolore sed voluptatem. Assumenda eius quaerat laudantium harum dolores cumque rem. Dolores placeat aut dolorem et provident voluptate consectetur qui. Quasi nemo nulla nostrum repellendus aliquam doloremque et. Sed quam fugiat sunt exercitationem.', 'https://picsum.photos/200/300', 10, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(25, 'The Grapes of Wrath', 'Maxime ratione debitis voluptas aut. Et suscipit ratione vitae suscipit dolorem est. Quibusdam repudiandae ut eos natus. Autem et enim quas dolore rerum laborum. Expedita numquam repellendus praesentium nihil omnis delectus. Qui dolorum aut dicta quos.', 'https://picsum.photos/200/300', 10, '2024-06-03 13:17:25', '2024-06-03 13:17:25', NULL),
(26, 'War and Peace', 'Описание', 'https://picsum.photos/200/300', 6, '2024-06-09 13:34:34', '2024-06-09 13:34:34', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `username`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Kick', 'First feedback', NULL, '2024-06-07 12:45:01'),
(11, 'azekaggg@gmail.com', 'msg', '2024-06-07 15:29:12', '2024-06-07 15:29:12');

-- --------------------------------------------------------

--
-- Структура таблиці `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `genres`
--

INSERT INTO `genres` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Боевичок', 'Стрелялки-мочилки-дробилки', NULL, NULL),
(2, 'Новый жанр', 'Описание нового жанра', '2024-06-03 05:41:34', '2024-06-03 05:41:34'),
(3, 'asdasd', 'asdasd', '2024-06-03 06:59:31', '2024-06-03 06:59:31'),
(6, 'Et autem.', 'Asperiores nesciunt rem officiis officia. Nobis et autem debitis omnis rerum amet quibusdam. Qui rerum modi corporis omnis consequatur.', '2024-06-03 13:17:25', '2024-06-03 13:17:25'),
(7, 'Sit aspernatur architecto.', 'Distinctio excepturi sapiente et itaque consequatur. Sequi velit et accusamus magnam voluptas ducimus.', '2024-06-03 13:17:25', '2024-06-03 13:17:25'),
(8, 'Voluptatibus id.', 'Quam error numquam dolorum repudiandae voluptas. Perspiciatis omnis aut pariatur impedit quas maxime. Error ea quisquam qui unde dolores quam repudiandae.', '2024-06-03 13:17:25', '2024-06-03 13:17:25'),
(9, 'Ratione fugiat.', 'Dolores velit qui nihil ex id. Consequuntur voluptates possimus ea ut nihil enim qui. Iste aut minus consequatur.', '2024-06-03 13:17:25', '2024-06-03 13:17:25'),
(10, 'Vero in.', 'Tempora laborum enim commodi ducimus a expedita. Modi cum excepturi harum provident totam. Eligendi nobis commodi dolorem occaecati.', '2024-06-03 13:17:25', '2024-06-03 13:17:25');

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_02_100839_create_genres_table', 2),
(6, '2024_06_03_152102_create_books_table', 3),
(7, '2024_06_07_100244_create_feedbacks_table', 4),
(8, '2024_06_11_113808_add_column_to_books_table', 5),
(9, '2024_06_11_114935_add_table_review_for_books', 6),
(11, '2024_06_12_173413_add_role_to_users_table', 7),
(12, '2014_10_12_100000_create_password_resets_table', 8);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `comment`, `created_at`, `updated_at`, `user_id`) VALUES
(34, 1, 'Officia libero accusantium aspernatur dolor consequuntur voluptas quisquam. Qui maxime fugit voluptas qui minima reprehenderit sed. Exercitationem culpa sapiente sequi est accusamus.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(35, 1, 'Voluptatem labore voluptatem ut perferendis est non in facilis. Temporibus voluptatum expedita labore est quis. Omnis sint perferendis explicabo nobis dolorem sit. Maiores tenetur neque in commodi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(36, 1, 'Est et suscipit et suscipit sapiente corrupti ipsa. Dicta rem ut omnis hic a atque. Modi perferendis qui ut voluptatem inventore facere. Quos et quia incidunt rerum odio numquam magnam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(37, 1, 'Accusantium aut harum pariatur dolores illum quos. Veritatis quibusdam sunt voluptate enim corrupti minima sunt. Ducimus consequatur repellat praesentium voluptatibus. Illo nesciunt eos veritatis veni...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(38, 1, 'Architecto nihil eius in excepturi assumenda. Repudiandae ab et quaerat doloremque deleniti esse nihil. Quisquam doloremque ratione voluptas quasi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(39, 2, 'Aspernatur vitae eveniet possimus ut quae vel. Eos magnam et vel magnam ipsa. Iste commodi consequatur numquam nam omnis fuga hic dolorum. Quod ut non a cupiditate voluptatem.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(40, 2, 'Rerum vel fugiat modi praesentium eaque vel. Placeat quisquam modi odit illum est labore nesciunt vitae. Amet aut error autem fugit provident repudiandae perspiciatis. Expedita voluptatem molestias ut...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(41, 2, 'Dolore quaerat architecto quia necessitatibus ipsum omnis sit. Rerum esse inventore ea suscipit. Aliquam dolor delectus aliquam excepturi aliquid. Quis nisi quis sed reiciendis tenetur.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(42, 2, 'Est eum ratione dolorum ut modi voluptas. Ut iste omnis molestiae quia. Odit enim excepturi ut occaecati.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(43, 2, 'Doloremque itaque et ipsa veniam sunt. At est qui ex nihil sint. Et sed similique nesciunt accusamus accusantium pariatur rerum. Nobis id ab iure veniam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(44, 3, 'Illum porro sunt porro nostrum aut ut. Sit dolor aut deleniti. Veritatis quos ducimus sequi iste. Dignissimos vero eveniet velit voluptatibus quaerat sed omnis repudiandae. Ut asperiores non pariatur...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(45, 3, 'Aperiam provident eos sed. Fuga rerum rerum iure maiores. Sapiente soluta optio dolor labore quo sapiente quaerat.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(46, 3, 'Consequatur iusto non non voluptas repellendus eligendi voluptatem repudiandae. Adipisci vero sint non repellendus sequi dolorem. Quod fuga ex dolor soluta mollitia.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(47, 3, 'Id perspiciatis consequatur similique libero distinctio. Aliquid sunt rerum expedita omnis aperiam sed.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(48, 3, 'Illum saepe suscipit omnis autem. Asperiores sunt non debitis optio et ex et. Itaque cum qui voluptatem quibusdam repudiandae blanditiis.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(49, 4, 'Aliquam aut eos veritatis autem et autem hic voluptatem. Eius nemo quo fugit dolore facere. Rem deleniti sunt nobis deserunt aspernatur. Necessitatibus nisi et quia eos omnis.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(50, 4, 'Qui non aut sit. Animi ab cum porro totam amet. Accusamus quibusdam sed et quia illum velit est sed. Qui dolor omnis labore et autem ut corrupti optio.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(51, 4, 'Eius similique aperiam numquam vero. Ea voluptatem accusamus unde facere. Omnis deserunt nostrum eos illum hic ipsum. Sed est ea ratione.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(52, 4, 'Praesentium eius nihil fugiat ea ut. Dicta neque doloribus nostrum rerum similique temporibus. Eveniet nemo possimus totam sed et.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(53, 4, 'Voluptatem quisquam perferendis tenetur aut ad sint iusto. Nesciunt et quas eligendi nihil ut amet. Rerum error quis asperiores dolores velit. Blanditiis eius ipsum quos similique id.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(54, 5, 'Possimus quaerat corporis alias cupiditate numquam explicabo facilis. Necessitatibus dolore alias exercitationem harum dicta. Autem delectus officiis tempora occaecati.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(55, 5, 'Quaerat molestiae necessitatibus excepturi aliquam minima quia itaque. Inventore mollitia cumque omnis possimus inventore. Reiciendis quisquam provident consequatur cum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(56, 5, 'Doloribus ut incidunt odit atque quae doloremque aut. Eveniet molestias in vero excepturi dicta ut. Qui quo cum ipsa libero quaerat error perferendis. Temporibus officiis sunt sit voluptas in.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(57, 5, 'Soluta autem minima totam. Possimus eaque odit dignissimos eos id est. Qui id omnis nobis.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(58, 5, 'Impedit voluptas soluta voluptas sed natus eos architecto nihil. Unde odio officia corrupti aliquid et. Dolor sunt quod aspernatur dolor sequi nostrum est.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(59, 6, 'Sunt aliquam qui voluptas eos sunt voluptatem earum quaerat. Repudiandae est magni veniam rem. Dolorum quia doloremque qui harum. Rerum quibusdam iure sunt aut.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(60, 6, 'Qui fugit quisquam necessitatibus nesciunt quia eaque officia. Quo omnis debitis a veritatis perferendis sed. Doloribus ut beatae sint blanditiis deleniti.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(61, 6, 'Doloribus officia nemo exercitationem voluptatem vel ducimus. Voluptas est rerum soluta eius et laboriosam. Consequatur quo reprehenderit amet quia. Quas velit deserunt velit porro at quidem.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(62, 6, 'Quam amet et nemo magnam eius dolores consectetur. Sed molestias molestiae ut quaerat dolorem et. Dolores ipsam itaque voluptas et alias qui. Doloremque ad cumque ea veniam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(63, 6, 'Id voluptas quis consequatur et consequatur. Similique vitae aut aut voluptate qui repellat ipsum. Deleniti labore porro enim eum non consequatur aliquid amet.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(64, 7, 'Perferendis ea et rerum sapiente molestias ut blanditiis tempore. Est voluptas maiores consequatur et eveniet. Incidunt temporibus et odio. Ipsum voluptatum eius voluptas fugiat est ea voluptatem sint...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(65, 7, 'Eaque quo deleniti at in optio exercitationem ut omnis. Ipsum id nesciunt ex velit aperiam rerum. Maiores et corporis sed voluptatibus fugit. Quis voluptatem recusandae quo suscipit.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(66, 7, 'Itaque voluptatum soluta nemo mollitia aliquam. Ducimus delectus velit quibusdam et qui dolor nihil eos. Iusto est doloremque dicta. Quis deleniti ea et molestiae atque illum vel.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(67, 7, 'Dignissimos occaecati accusamus voluptatem ipsum fugiat fuga. Aut qui totam aut aut quia doloribus est. Et quam deleniti ad quis ex maiores quasi. At ab qui qui quis voluptatibus ullam dicta.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(68, 7, 'Molestias officia tempora voluptatem doloremque possimus perspiciatis. Autem nisi sed consequatur at quod. Temporibus ipsum error distinctio odio nostrum reprehenderit distinctio.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(69, 8, 'Natus corrupti nihil sit aut alias ipsum. Est ipsa consequatur illum id. Ut maxime blanditiis explicabo laborum voluptatibus eum aliquid.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(70, 8, 'Eum amet reiciendis fuga id ex. Quae similique non repellendus nihil. Mollitia facere optio aut saepe. Et ipsa et eveniet ab reiciendis quos et.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(71, 8, 'Quod perferendis sit est velit rem. Impedit dolores aspernatur laborum suscipit quo et neque iure. Dolor corrupti ea tempora amet consequatur. Nam pariatur rerum magni deserunt fugit qui. Eius ea quia...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(72, 8, 'Est sit eum consectetur quas eos. Perspiciatis voluptas animi mollitia et nostrum non repellat rerum. Excepturi vel aut reiciendis. Aut deserunt nemo inventore.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(73, 8, 'Rerum eos eaque accusantium dolorem qui minima. Eaque vero porro totam sed consequuntur. Repellendus repellendus aut nihil voluptatem et dolor ad.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(74, 9, 'Minus ipsum ut molestias enim expedita. Placeat aliquid deleniti soluta quas qui qui. Necessitatibus vel non aut voluptatem voluptatum ullam reprehenderit.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(75, 9, 'Magni molestiae quibusdam similique et. Illo officiis sunt aut et corporis excepturi. Unde error et esse iste magnam. Enim reiciendis rerum occaecati eligendi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(76, 9, 'Amet esse quia sed fuga a et molestiae. Illum enim atque eos quibusdam omnis delectus eum. Doloremque animi ut quam molestias. Ipsa ullam natus et qui sequi quae.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(77, 9, 'Nemo facere tenetur a eveniet nihil autem. Sit minus incidunt libero laborum recusandae vel necessitatibus. Nihil quia vero iste maiores omnis eaque. Iste at nobis cupiditate earum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(78, 9, 'Voluptatum quia rerum temporibus. Tempora incidunt eos omnis architecto. Voluptas fuga tempore fugiat ab autem quo sunt quia.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(79, 10, 'Optio dolorem exercitationem voluptate et natus et harum. Dicta sunt quia ut quas tempore nobis est. Et quo omnis officiis.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(80, 10, 'Cum totam est cumque facere ratione et atque. Iusto eum excepturi explicabo officia debitis. Magni odio voluptas recusandae quidem repudiandae illum. Deserunt repellendus occaecati sint aliquam occaec...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(81, 10, 'Amet quasi repellendus cumque sit facere. Doloribus nemo fugiat deserunt et. Nobis rerum minima nemo porro non nostrum qui. Architecto et sint saepe consequatur.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(82, 10, 'Aut culpa maxime ut quo fugit hic. Amet fugiat possimus porro illo et. Dolor ducimus dolorem praesentium aut quia cumque reiciendis. Repudiandae distinctio sunt ipsum corrupti.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(83, 10, 'Voluptatem voluptas fugit quod hic qui. Odio earum ut dolorum dicta modi vero. Recusandae quisquam quasi rerum aut ut.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(84, 11, 'Sed enim veritatis in debitis ut dicta. Ut velit dicta sit at. Sint eius accusantium tempore. Sint distinctio debitis officia incidunt ex veritatis.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(85, 11, 'Recusandae et rem quibusdam eveniet non. Repellat rerum cumque sint inventore quae voluptatem porro perspiciatis. In et tenetur qui. Dignissimos ut quia quas aut iusto accusantium qui.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(86, 11, 'Porro ratione itaque consequatur consectetur quo minima non. Consequatur molestiae distinctio aspernatur sint maiores. Recusandae dolorum ea pariatur voluptatem repellendus laudantium ea ab. Voluptati...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(87, 11, 'Unde facere iusto magnam est commodi. Eos distinctio et eum beatae voluptas nulla. In at voluptatum placeat modi iste.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(88, 11, 'Quo voluptas voluptatem et accusamus nesciunt. Officia dolore fugit quos nihil veniam. Quas corrupti est sunt. Deserunt veritatis distinctio et eos tempora natus cum est.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(89, 12, 'Rerum praesentium nisi blanditiis aliquam consequatur. Sit porro aut unde dicta sit quia et. Quam deleniti rerum officiis iure molestias.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(90, 12, 'Sunt ullam voluptates et. Recusandae omnis ut nemo commodi. Aut excepturi sit ducimus laudantium aut. Eligendi saepe impedit unde nam illum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(91, 12, 'Rem corrupti quos nam consectetur. Facere est rerum ab voluptates accusantium voluptate. Temporibus omnis placeat quam dolor maxime.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(92, 12, 'Eum animi quaerat optio vel aut velit mollitia. Et quod rem tenetur rerum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(93, 12, 'Sit nam quia totam magni hic voluptatem expedita. Eius quidem fugiat qui eligendi hic dignissimos voluptas consequuntur.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(94, 13, 'Odit consequatur eos dolorem explicabo labore corporis error. Quia qui voluptate aut pariatur. Reiciendis consequatur voluptatem est nesciunt totam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(95, 13, 'Facilis eaque perferendis rem modi et illo quia. Molestias corporis assumenda iusto animi et minus nam. Soluta sit occaecati est natus. Aut porro quia ut molestias temporibus et sed cumque.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(96, 13, 'Veritatis nobis eum eligendi architecto eos. Dignissimos dolore eum quos velit. Impedit molestias non sequi qui deserunt id iure. Sint magnam molestiae omnis.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(97, 13, 'Blanditiis veritatis reprehenderit omnis voluptate quasi vero molestiae. Deleniti facere libero quisquam ipsum. Possimus fuga quos doloribus itaque.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(98, 13, 'Reiciendis qui id dignissimos quo. Modi nam autem sed ea ullam quia.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(99, 14, 'Deserunt sunt tempora ut distinctio reprehenderit. Explicabo expedita eveniet accusamus rerum blanditiis fuga aut. Qui dolorem in qui sed excepturi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(100, 14, 'Quae ut aut sed suscipit delectus quam optio. Debitis quo repellendus tempore adipisci. Nisi repellendus consequuntur aut dolorum non nemo aut. Corporis saepe nihil quo voluptatem consequuntur suscipi...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(101, 14, 'Eos in illum quo distinctio nesciunt. Illo ducimus modi fugit. Optio doloremque culpa eaque et. Delectus et maxime dolorum pariatur omnis est eum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(102, 14, 'Ut veritatis reprehenderit blanditiis ducimus possimus necessitatibus earum eaque. Sunt sequi voluptas consequatur dolorem sunt odit sed. Aliquam rerum odit magni dolores quibusdam ex autem. Ex eius d...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(103, 14, 'Quia ea vitae provident enim. Et nihil officiis dolorem. Quisquam sapiente deleniti sit est.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(104, 15, 'Unde qui voluptatibus sunt odio consequatur repudiandae. Et sed excepturi saepe sed. Dolorum voluptas deserunt repellat itaque.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(105, 15, 'Quia exercitationem architecto temporibus sed sequi laborum. Rerum quasi voluptatem molestiae quo non molestiae eius. Culpa corporis totam velit est suscipit vero.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(106, 15, 'Molestiae corrupti voluptatem architecto fuga. Nemo numquam iste quos rerum. Ut dolorem nihil et sunt. Laborum saepe dolorem vitae optio.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(107, 15, 'Adipisci praesentium fugiat hic. Et fuga ut placeat voluptatem. Alias recusandae aut voluptatem sint accusamus rerum. Quidem consequuntur aut laborum sit aut distinctio enim.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(108, 15, 'Quia totam dolorem quam sint sint quas. Cupiditate velit nobis cumque laborum omnis tenetur soluta. Unde eum quisquam dolorem.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(109, 16, 'Quia eos ut ea ut consequatur ut. Necessitatibus consequuntur commodi harum et. Ut ab nostrum nostrum vero modi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(110, 16, 'Dolorem consequatur quae minus nihil nisi. Iusto et reiciendis autem aliquam consequatur. Reiciendis natus blanditiis officiis et labore corporis voluptate. Autem nihil fuga error non ipsum dolores.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(111, 16, 'Voluptatem quasi enim quis dolor. Dicta explicabo provident ea maxime quibusdam sit. Et veritatis repellendus tempora qui nostrum. Omnis voluptates pariatur voluptas cum quis laborum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(112, 16, 'Officiis accusamus explicabo eum. Nemo veniam iste quasi soluta explicabo. Consequatur aut odio voluptatem. Quae assumenda eligendi esse voluptatem corrupti modi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(113, 16, 'Odio necessitatibus qui perferendis repudiandae dolor ad. Vitae quo consectetur delectus harum. Odio dolorem consectetur eveniet esse rerum voluptas sapiente nihil. Officia ut nostrum asperiores incid...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(114, 17, 'Saepe voluptates odio impedit similique. Suscipit aliquid molestias fugiat eos praesentium rerum quod. Autem odit eligendi et impedit. Consectetur id occaecati nam ut.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(115, 17, 'Quis harum quis qui vel. Et quisquam animi qui sunt dolores repudiandae. Quasi occaecati maiores error eligendi sit. Omnis omnis earum quo est possimus sequi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(116, 17, 'Perspiciatis dolorem autem voluptatem debitis totam. Suscipit qui et quia. Omnis temporibus facere laborum aliquid dolore ea.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(117, 17, 'Voluptatem impedit maxime aspernatur voluptatum quos dolore doloremque. Dolorum repudiandae earum voluptas temporibus impedit perferendis odit. Recusandae est nostrum consequatur. Nemo maiores eaque c...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(118, 17, 'Voluptatem cumque delectus ab necessitatibus deleniti totam. Provident et temporibus odio eum autem quos libero. Tempora ad blanditiis et optio quae.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(119, 18, 'Nam tempore qui atque. Maiores beatae quos voluptatem voluptas. Ducimus commodi ut officia explicabo pariatur aut magnam. Tempore quia adipisci et quisquam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(120, 18, 'Rerum est quidem possimus quidem provident necessitatibus. Fugiat vel recusandae vitae beatae. Aut libero aut qui et.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(121, 18, 'Quisquam vel corporis cum minima dolores. Qui aperiam et fugit unde assumenda ducimus qui dolor.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(122, 18, 'Et omnis ratione et facere. Delectus explicabo eaque quia reiciendis facilis eius. Rerum officia quo debitis. Aliquid sit et explicabo quibusdam voluptatibus tempora officia.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(123, 18, 'Aut veniam neque molestiae molestias numquam praesentium veritatis maxime. Quia rerum facere excepturi saepe necessitatibus sequi. Sit repellat ipsum cupiditate nihil. Enim sed necessitatibus temporib...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(124, 19, 'Labore porro architecto quibusdam dicta nesciunt possimus eius. Sint enim eaque id itaque ipsum. Dicta reprehenderit natus consequatur accusantium.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(125, 19, 'Occaecati ducimus eum at numquam. Aut cupiditate dignissimos tempore placeat aut necessitatibus unde. Est dolorem repudiandae quisquam suscipit voluptatibus. Molestias quia nobis aperiam qui enim id d...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(126, 19, 'Laudantium neque rem consectetur. Aliquid quo soluta soluta dignissimos quia. Expedita error tempore earum rerum et saepe. Distinctio odit nemo fuga illo ad necessitatibus et. Quos repudiandae invento...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(127, 19, 'Est eaque exercitationem voluptate aut et eaque praesentium soluta. Quibusdam necessitatibus veritatis saepe ut. Architecto error veniam mollitia repudiandae qui. Quo minus et voluptatibus animi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(128, 19, 'Exercitationem ut et numquam omnis sed rerum consequatur. Necessitatibus voluptate quas quo commodi ad quam animi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(129, 20, 'Qui repellat esse voluptatibus odit voluptas deserunt. Omnis rerum ipsum magnam nihil. Ipsam ea pariatur minus aliquam occaecati adipisci. Deserunt vitae ea perferendis perferendis inventore enim iure...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(130, 20, 'Maxime impedit non et sed. Sapiente praesentium velit veniam est. Temporibus quibusdam aut consequatur quo.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(131, 20, 'Qui sed blanditiis itaque earum consequuntur. Commodi possimus et molestiae repellendus tenetur. Omnis quidem quis dolor modi.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(132, 20, 'Pariatur adipisci qui velit dolorem aut dolorem dolores. Quam aut sed officiis hic. Ipsum non possimus voluptatem sint distinctio.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(133, 20, 'Fuga quasi accusantium enim dolore. Nam veniam est rerum provident. Natus porro officiis aut laboriosam neque eos voluptas commodi. Culpa qui ratione est eos.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(134, 21, 'Accusantium voluptatem odit quis et expedita saepe expedita. Consectetur distinctio qui voluptatum sed quia quos aut. Adipisci pariatur distinctio eos mollitia expedita ipsam voluptatem eius. Voluptat...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(135, 21, 'Dolores sint natus quia distinctio praesentium qui et. Mollitia ut quis atque qui. Eos quasi autem blanditiis necessitatibus vel voluptatem est.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(136, 21, 'Ea neque iure iste natus nesciunt. Pariatur voluptatem dolorum ipsa aperiam. Quia et quasi et doloribus asperiores labore deleniti.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(137, 21, 'Magnam tempora et qui exercitationem deserunt. Voluptatem ut sit qui. Quidem eos et modi tenetur inventore vel ipsum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(138, 21, 'Omnis aliquam quisquam facilis tempora consequuntur qui. Eos debitis impedit commodi rem et debitis. Perspiciatis eos minus sed ut rem.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(139, 22, 'Vero est minima iste veritatis corrupti omnis nesciunt hic. Mollitia quos ullam cumque molestiae aut. Temporibus beatae molestiae eos quia sed voluptatem. Aliquid voluptas nesciunt reiciendis distinct...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(140, 22, 'Nisi labore itaque ut impedit sint. Assumenda ea rem et harum voluptatem maiores qui. Eum hic iste culpa neque voluptates laudantium. Eum dicta aspernatur laboriosam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(141, 22, 'Delectus deserunt ipsam vel consequatur facilis veniam fugiat. Dolorem occaecati sunt omnis aliquid sint. Asperiores qui dolore soluta debitis consequatur. Voluptates vero quaerat nobis tenetur ipsam...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(142, 22, 'Suscipit dignissimos ad amet. Quae tenetur atque hic architecto. Et magni est delectus sit. Quas dignissimos consequatur quae excepturi quas.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(143, 22, 'Molestias suscipit nesciunt rem. Libero rem et rerum libero occaecati. Est debitis praesentium ea molestiae pariatur et. Id ut quia laboriosam ut.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(144, 23, 'Nihil aut nihil et excepturi. Commodi aut quas reprehenderit placeat.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(145, 23, 'Inventore id et consequuntur dignissimos quo dolore. Voluptatem consequatur maxime ut ut. Id doloremque unde corrupti quasi voluptatum architecto eius nam. Expedita et ea debitis assumenda necessitati...', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(146, 23, 'Et et necessitatibus laudantium doloremque sed dolorem. Tenetur facere accusamus optio id tempora autem. Nobis nostrum libero omnis dolores ex rerum.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(147, 23, 'Id voluptate nesciunt et deserunt. Et aperiam eos quis animi omnis. Qui minima aliquam qui recusandae. Recusandae esse ut qui totam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(148, 23, 'Veniam non quas et vero eum autem consequatur. Dolores ratione aut quae sed sed.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(149, 24, 'Fugit doloremque adipisci perspiciatis ullam vel sint. Corrupti nobis id quaerat libero eum. Blanditiis voluptatibus aliquid eum consequatur fugiat.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(150, 24, 'Ut dignissimos vel nisi cumque. Deserunt distinctio quae odio quae qui quo et quisquam. A ipsa velit repellendus porro.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(151, 24, 'Qui molestias ab eos recusandae velit consequuntur. Quo omnis aspernatur excepturi ut. Illo exercitationem temporibus et veritatis. Aut veniam quisquam corporis neque rem quasi quibusdam.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(152, 24, 'Dicta consequatur ut alias neque nostrum quae aut id. Voluptas est porro repellendus.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(153, 24, 'Laudantium dicta atque eos id et sapiente id. Non optio culpa dolorum non quae ratione perferendis dolor. Modi quia tenetur sed saepe. Dolores et itaque natus ea qui ducimus.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(154, 25, 'Voluptatem pariatur voluptas natus. Aliquam dolorum esse labore et quia explicabo voluptatem nobis. Hic eum ex quo laborum non. Aspernatur et omnis et tempora ipsam nihil.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 10),
(155, 25, 'Facilis et reprehenderit facilis. Vero aut modi nihil facere excepturi inventore aut quos. Iste eligendi rem consequuntur qui neque.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(156, 25, 'Repudiandae quaerat dolor molestias. Sit odit dolorem asperiores distinctio. Reprehenderit sed iste dolor qui.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 1),
(157, 25, 'Enim accusantium placeat laboriosam sint ullam modi consectetur quis. Aspernatur blanditiis rerum quae. Id asperiores et itaque laborum deserunt maiores at dolore. Quis placeat vero vel est voluptas....', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(158, 25, 'Minus sunt aut numquam aliquam et earum asperiores. Ut quas deleniti vitae id. Est neque eligendi beatae.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(159, 26, 'Velit aut voluptate ut at voluptatem. Sint voluptas sint qui eligendi odio. Et vel non laudantium temporibus fuga officiis.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(160, 26, 'Eveniet corporis occaecati totam nobis in nulla totam. At atque repudiandae veritatis natus quia et iste. Velit vel quos consequuntur quod qui.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 22),
(161, 26, 'Et reprehenderit vero possimus dolore consequatur necessitatibus est optio. Nihil eos cupiditate dolores quo unde. Omnis labore esse fuga dolorem repellat explicabo. Unde qui accusamus quod.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 9),
(162, 26, 'Fugit consectetur ipsam ut. Odit error cum doloremque rerum fuga saepe maxime nesciunt. Id facilis delectus quia. Suscipit earum hic molestiae impedit ipsam ab.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 23),
(163, 26, 'Earum eveniet rerum nostrum. At quam cumque non similique. Ut sit est ullam sed sunt explicabo cupiditate.', '2024-06-11 10:42:13', '2024-06-11 10:42:13', 21),
(174, 26, '123123123kпоследнйи отзыв', '2024-06-11 16:39:39', '2024-06-11 16:39:39', 21),
(178, 1, 'fsdfsdf', '2024-06-15 09:03:15', '2024-06-15 09:03:15', 23),
(179, 1, 'asdasdasd', '2024-06-15 09:04:14', '2024-06-15 09:04:14', 23),
(180, 1, 'My Review!', '2024-06-15 09:04:50', '2024-06-15 09:04:50', 23),
(181, 1, 'qweqwe134', '2024-06-15 09:06:04', '2024-06-15 09:06:04', 23),
(182, 1, 'qweqwe134', '2024-06-15 09:06:14', '2024-06-15 09:06:14', 23),
(183, 1, 'aasdasd', '2024-06-15 09:06:22', '2024-06-15 09:06:22', 23),
(184, 1, '123123123123', '2024-06-15 09:06:49', '2024-06-15 09:06:49', 23);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pathimage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `pathimage`, `role`) VALUES
(1, 'Prof. Bryce Schimmel', 'freddie.sauer@example.net', '2024-06-08 06:43:12', '$2y$12$0s3QN4.Vcv.nUH9t09YaeOt1W1X02uOVlDeuOeQZ3IxLQXPBlZhm6', 'FYiy4Qs8pb', '2024-06-08 06:43:12', '2024-06-08 06:43:12', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/f6/f69b68feb97b47054e19c7702548674f2bed8148_full.jpg', NULL),
(9, 'Damian Prohaska PhD', 'kavon.konopelski@example.com', '2024-06-08 06:43:12', '$2y$12$0s3QN4.Vcv.nUH9t09YaeOt1W1X02uOVlDeuOeQZ3IxLQXPBlZhm6', 'gyYcitXKuu', '2024-06-08 06:43:12', '2024-06-08 06:43:12', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/f6/f69b68feb97b47054e19c7702548674f2bed8148_full.jpg', NULL),
(10, 'Madge Jacobi', 'alessandro.murray@example.org', '2024-06-08 06:43:12', '$2y$12$0s3QN4.Vcv.nUH9t09YaeOt1W1X02uOVlDeuOeQZ3IxLQXPBlZhm6', '70VlO9gkZS', '2024-06-08 06:43:12', '2024-06-08 06:43:12', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/f6/f6c86468a6568e4b94cd488eac22f46689f92850_full.jpg', NULL),
(21, 'Sergio', 'azekaggg@gmail.com', '2024-06-11 10:25:59', '$2y$12$uYhPD3VMxy67ucn7HeREBOtT2ITpTCcP4jS/Vw3TVmBSlVQYmT0h2', NULL, '2024-06-11 07:25:59', '2024-06-11 07:25:59', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/f6/f69b68feb97b47054e19c7702548674f2bed8148_full.jpg', NULL),
(22, 'Rick', 'Rick@gmail.com', '2024-06-12 16:28:54', '$2y$12$vpeYFKfavWNytuPH5pmfjOUVFmn7JedZ3TsXvyZONh3oXZvTxXkze', NULL, '2024-06-12 13:28:54', '2024-06-12 13:28:54', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/f6/f6e9a46df2eff1c2fe649cfc03b7b40c910ecc04_full.jpg', 'admin'),
(23, 'NoAdmin', 'NoAdmin@gmail.com', '2024-06-12 17:36:33', '$2y$12$gKwyvTKGF87rCXIgzc9QU.LlcCvGkoB.M9hNYZE1rV2p.2aw7DKpm', 'cgjjEejHEAeT38BG96ZPYQvOEiW1O28sLvOSVDHwPUBj9XkZwrU9YNI2N5dx', '2024-06-12 14:36:33', '2024-06-12 14:36:33', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/f6/f6f62dfbba1a9ad9afa36f77925ea7c82390666e_full.jpg', 'user');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_name_unique` (`name`),
  ADD KEY `books_genre_id_foreign` (`genre_id`);

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Індекси таблиці `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Індекси таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Індекси таблиці `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_book_id_foreign` (`book_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблиці `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE SET NULL;

--
-- Обмеження зовнішнього ключа таблиці `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
