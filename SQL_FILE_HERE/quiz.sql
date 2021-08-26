-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Ağu 2021, 13:03:18
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `quiz`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` enum('answer1','answer2','answer3','answer4') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `question_id`, `answer`) VALUES
(1015, 12, 101, 'answer3'),
(1016, 12, 102, 'answer2'),
(1017, 12, 103, 'answer1'),
(1018, 12, 104, 'answer3'),
(1019, 12, 105, 'answer2'),
(1020, 12, 106, 'answer1'),
(1021, 12, 107, 'answer3'),
(1022, 12, 108, 'answer3'),
(1023, 12, 109, 'answer3'),
(1024, 12, 110, 'answer1'),
(1025, 13, 101, 'answer4'),
(1026, 13, 102, 'answer1'),
(1027, 13, 103, 'answer4'),
(1028, 13, 104, 'answer4'),
(1029, 13, 105, 'answer2'),
(1030, 13, 106, 'answer4'),
(1031, 13, 107, 'answer4'),
(1032, 13, 108, 'answer3'),
(1033, 13, 109, 'answer3'),
(1034, 13, 110, 'answer4'),
(1035, 1, 101, 'answer3'),
(1036, 1, 102, 'answer2'),
(1037, 1, 103, 'answer4'),
(1038, 1, 104, 'answer1'),
(1039, 1, 105, 'answer2'),
(1040, 1, 106, 'answer4'),
(1041, 1, 107, 'answer3'),
(1042, 1, 108, 'answer3'),
(1043, 1, 109, 'answer4'),
(1044, 1, 110, 'answer2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_05_224200_create_sessions_table', 1),
(6, '2021_08_07_073924_quiz_migration', 1),
(7, '2021_08_10_011528_questions', 1),
(8, '2021_08_23_000046_answers', 1),
(9, '2021_08_23_110600_result', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` enum('answer1','answer2','answer3','answer4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `image`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`, `created_at`, `updated_at`) VALUES
(101, 11, 'Mustafa Kemal Atatürk, cumhurbaşkanı olduğunda kaç yaşındaydı?', 'uploads/mustafa-kemal-ataturk-cumhurbaskani-oldugunda-kac-yasindaydi.jpg', '44', '47', '42', '45', 'answer3', '2021-08-26 08:37:03', '2021-08-26 08:37:03'),
(102, 11, 'Roma rakamlarında hangi sayı değeri yoktur?', NULL, '1000', '0', '1', '121', 'answer2', '2021-08-26 08:38:58', '2021-08-26 08:38:58'),
(103, 11, 'Hangi ülkenin birden fazla başkenti bulunmaktadır?', 'uploads/hangi-ulkenin-birden-fazla-baskenti-bulunmaktadir.jpg', 'Cezayir', 'Tunus', 'Güney Kore', 'Güney Afrika', 'answer4', '2021-08-26 08:41:08', '2021-08-26 08:41:08'),
(104, 11, 'Türkiye yüz ölçümü olarak dünyada kaçıncı en büyük ülkedir?', 'uploads/turkiye-yuz-olcumu-olarak-dunyada-kacinci-en-buyuk-ulkedir.jpg', '37', '11', '15', '17', 'answer1', '2021-08-26 08:42:24', '2021-08-26 08:42:24'),
(105, 11, 'Avrupa Birliğinin başkenti neresidir?', 'uploads/avrupa-birliginin-baskenti-neresidir.jpg', 'Viyana', 'Brüksel', 'Berlin', 'Paris', 'answer2', '2021-08-26 08:44:31', '2021-08-26 08:44:31'),
(106, 11, 'Yıllarca \"Utanç Duvarı\" olarak da bilinen Berlin duvarı kaç yılında yıkılmıştır?', NULL, '1992', '1990', '1985', '1989', 'answer4', '2021-08-26 08:46:17', '2021-08-26 09:44:46'),
(107, 11, 'Budizmde ulaşılabilecek en üst mertebeye hangi isim verilmektedir?', 'uploads/budizmde-ulasilabilecek-en-ust-mertebeye-hangi-isim-verilmektedir.jpg', 'Keşiş', 'Budha', 'Nirvana', 'Şaman', 'answer3', '2021-08-26 08:47:38', '2021-08-26 08:47:38'),
(108, 11, 'Yüz ölçümü en küçük olan ilimiz aşağıdakilerden hangisidir?', NULL, 'Yalova', 'Bartın', 'Kilis', 'Düzce', 'answer1', '2021-08-26 08:48:32', '2021-08-26 08:48:32'),
(109, 11, '\"Espresso\" tam olarak ne anlama gelmektedir?', 'uploads/espresso-tam-olarak-ne-anlama-gelmektedir.jpg', 'İnce', 'Koyu', 'Sert', 'Hızlı', 'answer4', '2021-08-26 08:49:43', '2021-08-26 08:49:43'),
(110, 11, 'Mustafa Kemal Atatürk\'ün yurt gezilerinde (1935-1938) yılları arasında kullandığı trenin adı nedir?', 'uploads/mustafa-kemal-ataturkun-yurt-gezilerinde-1935-1938-yillari-arasinda-kullandigi-trenin-adi-nedir.jpg', 'Kara Tren', 'Beyaz Tren', 'Anadolu', 'Demir Türk', 'answer2', '2021-08-26 08:52:36', '2021-08-26 08:52:36'),
(111, 12, 'Python\'da \"Hello World\" çıktısını almak için doğru söz dizimi nedir?', NULL, 'echo \"Hello World\"', 'echo \"Hello World\";', 'write(\"Hello World\")', 'print(\"Hello World\")', 'answer4', '2021-08-26 09:22:55', '2021-08-26 09:22:55'),
(112, 12, 'Python kodunuza yorumları nasıl eklersiniz?', NULL, '/* Bu bir yorum */', '# Bu bir yorum', '// Bu bir yorum', '// Bu bir yorum */', 'answer2', '2021-08-26 09:23:55', '2021-08-26 09:23:55'),
(113, 12, 'Hangisi uygun bir değişken adı değildir?', NULL, 'my_var', '_myvar', 'MyVar', '1myvar', 'answer4', '2021-08-26 09:24:54', '2021-08-26 09:24:54'),
(114, 12, 'Python dosyaları için doğru dosya uzantısı nedir?', NULL, '.pyt', '.pt', '.pyth', '.py', 'answer4', '2021-08-26 09:25:40', '2021-08-26 09:25:40'),
(115, 12, 'Python\'da bir x değişkenin veya nesnenin türünü çıkarmak için doğru söz dizimi nedir?', NULL, 'print(type(x))', 'print(typeof x)', 'print(type ,x)', 'print(typeOf(x))', 'answer1', '2021-08-26 09:28:12', '2021-08-26 09:28:12'),
(116, 12, 'Python\'da bir fonksiyon yaratmanın doğru yolu nedir?', NULL, 'create myFunc():', 'def myFunc():', 'function myFunc(){ . . . }', 'new def myFunc():', 'answer2', '2021-08-26 09:29:18', '2021-08-26 09:29:18'),
(117, 12, 'Bir dizgenin hem başındaki hem de sonundaki boşlukları kaldırmak için hangi yöntem kullanılabilir?', NULL, 'len()', 'trim()', 'strip()', 'ptrim()', 'answer3', '2021-08-26 09:30:29', '2021-08-26 09:30:29'),
(118, 12, 'Bir dizeyi büyük harflerle döndürmek için hangi yöntem kullanılabilir?', NULL, 'upper()', 'uppercase()', 'upperCase()', 'toUpper()', 'answer1', '2021-08-26 09:31:19', '2021-08-26 09:31:19'),
(119, 12, 'Bir dizenin parçalarını değiştirmek için hangi yöntem kullanılabilir?', NULL, 'repl()', 'switch()', 'replaceStr()', 'replace()', 'answer4', '2021-08-26 09:32:04', '2021-08-26 09:32:04'),
(120, 12, 'Bu koleksiyonlardan hangisi bir liste (LIST) tanımlar?', NULL, '{\'appple\', \'banana\', \'cherry\'}', '[\'appple\', \'banana\', \'cherry\']', '(\'appple\', \'banana\', \'cherry\')', '{\'fruits\': \'appple\', \'banana\', \'cherry\'}', 'answer2', '2021-08-26 09:33:50', '2021-08-26 09:33:50'),
(121, 13, 'SQL\'in açılımı nedir?', NULL, 'Structured Query Language', 'Strong Query Language', 'Structured Question Language', 'Strong Question Language', 'answer1', '2021-08-26 09:49:30', '2021-08-26 09:49:30'),
(122, 13, 'Veritabanından veri çıkarmak için hangi SQL deyimi kullanılır?', NULL, 'GET', 'OPEN', 'EXTRACT', 'SELECT', 'answer4', '2021-08-26 09:49:54', '2021-08-26 09:49:54'),
(123, 13, 'Veritabanından veri silmek için hangi SQL deyimi kullanılır?', NULL, 'DEL', 'DELETE', 'REMOVE', 'TRASH', 'answer2', '2021-08-26 09:51:05', '2021-08-26 09:51:05'),
(124, 13, 'Veritabanına yeni veri eklemek için hangi SQL deyimi kullanılır?', NULL, 'INSERT NEW', 'INSERT INTO', 'ADD RECORD', 'ADD NEW', 'answer2', '2021-08-26 09:51:37', '2021-08-26 09:51:37'),
(125, 13, 'SQL ile \"Persons\" adlı bir tablodan \"FirstName\" adlı bir sütunu nasıl seçersiniz?', NULL, 'EXTRACT FirstName FROM Persons', 'IMPORT FirstName FROM Persons', 'SELECT FirstName FROM Persons', 'SELECT Persons.FirstName', 'answer3', '2021-08-26 09:52:58', '2021-08-26 09:52:58'),
(126, 13, 'SQL ile \"Persons\" adlı bir tablodaki tüm sütunları nasıl seçersiniz?', NULL, 'SELECT *.Persons', 'SELECT ALL FROM Persons', 'SELECT * FROM Persons', 'SELECT Persons', 'answer3', '2021-08-26 09:54:02', '2021-08-26 09:54:02'),
(127, 13, 'SQL ile, \"FirstName\" sütununun değerinin \"a\" ile başladığı \"Persons\" adlı bir tablodaki tüm kayıtları nasıl seçersiniz?', NULL, 'SELECT * FROM Persons WHERE FirstName=\'%a%\'', 'SELECT * FROM Persons WHERE FirstName = \'a\'', 'SELECT * FROM Persons WHERE FirstName LIKE \'%a\'', 'SELECT * FROM Persons WHERE FirstName LIKE \'a%\'', 'answer4', '2021-08-26 09:55:32', '2021-08-26 09:55:32'),
(128, 13, 'Hangisi SQL içim bir veri tipi değildir?', NULL, 'CHAR', 'BINARY', 'ENUM', 'MESSAGE', 'answer4', '2021-08-26 09:56:58', '2021-08-26 09:56:58'),
(129, 13, 'Yalnızca farklı değerler döndürmek için hangi SQL deyimi kullanılır?', NULL, 'SELECT UNIQUE', 'SELECT DIFFERENT', 'SELECT DISTINCT', 'SELECT JUSTONE', 'answer1', '2021-08-26 09:57:46', '2021-08-26 09:57:46'),
(130, 13, 'Sonuç kümesini sıralamak için hangi SQL anahtar sözcüğü kullanılır?', NULL, 'SORT', 'SORT BY', 'ORDER BY', 'ORDER', 'answer3', '2021-08-26 09:58:14', '2021-08-26 09:58:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `status` enum('publish','draft','passive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `description`, `slug`, `finished_at`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Genel Kültür Seviyeni Ölçmeye Ne Dersin?', 'Genel kültürünüzü ölçmek ve cidden neyi ne kadar biliyorum diye kendinize sormak mı istiyorsunuz? Yanlış bildiğiniz veya dilinizin ucuna gelip unuttuğunuz sorularla dolu bu quize katılmayı unutmayın!', 'genel-kultur-seviyeni-olcmeye-ne-dersin', NULL, 'publish', '2021-08-26 08:33:55', '2021-08-26 09:19:56'),
(12, 'Python Bilginizi Sınayın', 'Python bilginizin ne kadar olduğunu görmek bir quiz kadar uzakta? quize katılın, cevaplarınızı verin ve diğer üyeler arasında bilginiz hangi seviyede ölçün.', 'python-bilginizi-sinayin', NULL, 'publish', '2021-08-26 09:21:53', '2021-08-26 09:34:00'),
(13, 'SQL Bilginizi Ölçün', 'SQL modern projelerin hepsinde bulunan veri tabanı için olmazsa olmaz bir dildir. Bakalım bu alana sen ne kadar hakimsim?', 'sql-bilginizi-olcun', NULL, 'publish', '2021-08-26 09:46:36', '2021-08-26 09:59:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `point` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `results`
--

INSERT INTO `results` (`id`, `user_id`, `quiz_id`, `point`, `correct`, `wrong`, `created_at`, `updated_at`) VALUES
(23, 12, 11, 40, 4, 6, '2021-08-26 09:42:17', '2021-08-26 09:42:17'),
(24, 13, 11, 30, 3, 7, '2021-08-26 09:59:18', '2021-08-26 09:59:18'),
(25, 1, 11, 90, 9, 1, '2021-08-26 11:00:57', '2021-08-26 11:00:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EevRezFUIxCnUMzjHPcSxB67ln1gSTB6Ef1fFWoe', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaE4xbTBoV1ZMMndOTjVUbERCS2RUMHVYc3BueWdYcWtHU1JUdGM3ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYW5lbCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkMkxrRkFEdG44MzRVUVgzVUFza2ZoTzBRUWw1VFJpVlk3Z09KMmRJalQvN05UaTBRTThGVjIiO30=', 1629975762);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Fatih Es', 'es.fatih3316@gmail.com', 'admin', '2021-08-24 20:06:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zDu79sdpFNdmAtyBPVz6s9W3DrQRPomQZU5gottaAQuoy69VNuqpaQml8an2', NULL, NULL, NULL, NULL),
(12, 'Ali Sucu', 'ali.sucu@gmail.com', 'user', NULL, '$2y$10$2LkFADtn834UQX3UAskfhO0QQl5TRiVY7gOJ2dIjT/7NTi0QM8FV2', NULL, NULL, NULL, NULL, NULL, '2021-08-26 09:40:23', '2021-08-26 09:40:23'),
(13, 'Deneme Kullanıcı', 'deneme@gmail.com', 'user', NULL, '$2y$10$m8oiPD6U7ZrPyfpLm65oqOvmksGmd29XVYZZ7EDLxMncCGoruVAdG', NULL, NULL, NULL, NULL, NULL, '2021-08-26 09:58:46', '2021-08-26 09:58:46');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_user_id_foreign` (`user_id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Tablo için indeksler `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`),
  ADD KEY `results_quiz_id_foreign` (`quiz_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1045;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Tablo için AUTO_INCREMENT değeri `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
