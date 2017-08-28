-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2017 a las 17:45:34
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_rest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clase` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `created_at`, `updated_at`, `nombre`, `apellido`, `clase`, `edad`, `descripcion`) VALUES
(37, '2017-08-28 02:26:13', '2017-08-28 02:26:13', 'Vernie', 'Abernathy', '6-1', 15, 'Qui aut similique ipsum unde et perferendis qui qui. Dolorem possimus nam quidem esse expedita.'),
(38, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Melisa', 'Erdman', '6-4', 16, 'Porro totam omnis quo eligendi voluptates. Magnam vero neque sapiente alias. Quasi qui soluta animi molestiae eligendi eaque odit. Nulla ut maiores minus ut consequatur deserunt dolores.'),
(39, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Evangeline', 'Okuneva', '8-1', 11, 'Et reprehenderit eum recusandae possimus magnam. Quod minus et et repudiandae deleniti. Dignissimos iure amet aliquid autem asperiores.'),
(40, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Verla', 'Cruickshank', '7-3', 14, 'Mollitia repellendus sed provident delectus inventore architecto sint. Enim atque dolorem rerum corporis aperiam. Est soluta voluptatem reiciendis. Sapiente qui vel consequatur dolor totam enim ex.'),
(41, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Solon', 'Pollich', '9-3', 12, 'Natus voluptatem voluptas quae sunt distinctio quia. Dolor optio vel ut nisi itaque in quam nihil. Harum quia provident qui alias.'),
(42, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Destin', 'Altenwerth', '6-5', 16, 'Vel architecto rerum voluptas ut quia minima. Distinctio quod non dolores iusto dolores. Nam tempore iste nihil dolores. Distinctio rerum hic omnis.'),
(43, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Jude', 'Rice', '6-5', 11, 'In maiores cum quia aut vel. Molestiae et ut quo dolorem vel dolores. Iste tempora velit alias. Aperiam qui ut velit ab.'),
(44, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Syble', 'Murazik', '8-5', 11, 'Sed est veniam deleniti eligendi et dicta voluptatem. Asperiores minima quis amet perspiciatis rem aperiam dolor et. Animi dolores soluta est ut asperiores quis error.'),
(45, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Wellington', 'Balistreri', '8-3', 10, 'A corporis quia ipsam aperiam. Aut suscipit et sit minus dignissimos. Doloribus recusandae modi voluptatem sed aut aliquid suscipit esse. Quia quis voluptatibus quia rerum doloremque.'),
(46, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Izabella', 'Schmidt', '6-1', 16, 'Ea ea eligendi voluptatibus cumque ullam dolore explicabo. Corrupti aperiam ea quae qui tempora. Quasi ut magni nesciunt sed. Eligendi pariatur omnis enim tempore similique architecto aut.'),
(47, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Walker', 'Hyatt', '9-2', 16, 'Quia dolorem eligendi et. Nostrum qui consectetur officiis et reiciendis. Sit corrupti ducimus enim soluta quia voluptas totam. Incidunt qui accusantium quod blanditiis repudiandae esse earum.'),
(48, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Grayce', 'Heaney', '8-1', 12, 'Dolorem voluptatem placeat sed esse nisi quam enim. Autem dolor minima aut ex dolore excepturi. Explicabo veritatis quis eaque dolores et magni.'),
(49, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Jocelyn', 'Jacobi', '11-5', 13, 'In eaque in recusandae facilis earum. Ut voluptas est eos modi repellat placeat quam doloribus. Et voluptas et non voluptatem at architecto possimus.'),
(50, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Nikko', 'Purdy', '9-1', 12, 'Explicabo dolores quasi sint consequatur aut. Mollitia delectus iure autem mollitia ea quo. Eum omnis porro ut reprehenderit unde vero ut. Laboriosam laudantium maxime nostrum sunt vitae.'),
(51, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Irving', 'Heathcote', '8-4', 10, 'Fugiat necessitatibus qui sed modi nisi dicta et voluptatem. Dolores et sed odit velit corrupti pariatur. Et labore reiciendis non accusamus.'),
(52, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Jamie', 'McGlynn', '9-1', 12, 'Qui necessitatibus rem et et explicabo. Hic quae et sequi dolorem. Repellat quo magni nobis reprehenderit dolorem.'),
(53, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Sandra', 'Berge', '9-5', 12, 'Rerum sint eos saepe qui possimus. Deleniti est saepe autem animi nihil. Rem culpa placeat ut. Aut est sit dolor. Aut eos quia saepe quis optio.'),
(54, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Estel', 'Hamill', '7-5', 10, 'Incidunt ut ullam suscipit atque atque quo mollitia. Quo aspernatur est eius est dicta accusamus. Nihil quia adipisci aut aut repellat quia aut.'),
(55, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Randall', 'Olson', '10-1', 15, 'Velit harum aut consectetur autem voluptate vel. Ut animi cumque maiores sunt tenetur ea atque. Corporis minus rerum porro et. Aut ipsam harum iure molestiae quod.'),
(56, '2017-08-28 02:26:14', '2017-08-28 02:26:14', 'Pinkie', 'Schuster', '9-2', 10, 'Officiis rerum animi reprehenderit explicabo qui. Aut quidem sunt eos laboriosam sunt. Dolore quos eos eveniet eos voluptas placeat.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
