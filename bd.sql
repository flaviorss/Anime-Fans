-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Mar-2021 às 22:31
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flavio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animes`
--

CREATE TABLE `animes` (
  `id` int(11) NOT NULL,
  `anime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `animes`
--

INSERT INTO `animes` (`id`, `anime`) VALUES
(1, 'Naruto Clássico'),
(2, 'Dragon Ball Super'),
(3, 'Naruto Shippuden'),
(4, 'Avatar: A Lenda de Aang'),
(5, 'Pokémon XY & Z'),
(6, 'Super Onze'),
(7, 'Super Dragon Ball Heroes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_anime` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `data_comentario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_anime`, `comentario`, `data_comentario`) VALUES
(2, 4, 7, 'Ola Mundo', '2019-11-12 16:32:09'),
(3, 5, 4, 'Mundo', '2019-11-12 17:13:24'),
(4, 4, 6, 'Super Onze', '2019-11-13 16:49:02'),
(5, 1, 4, 'oieee\r\n', '2019-11-14 12:31:57'),
(6, 1, 5, 'Pokemon XY & Z', '2019-11-14 17:28:24'),
(7, 4, 7, 'Super Dragon Ball Heroes', '2019-11-15 13:42:18'),
(8, 7, 7, 'Adoro esse anime!!!', '2019-11-15 18:31:26'),
(9, 7, 7, 'Top d+', '2019-11-15 18:43:43'),
(10, 1, 7, 'Incrível !!!', '2019-11-17 22:12:35'),
(11, 1, 4, 'Top d++', '2019-11-18 07:09:46'),
(12, 1, 2, 'Adoro esse anime!!', '2019-11-18 14:15:04'),
(13, 1, 3, 'Top', '2019-11-18 14:16:53'),
(14, 4, 5, 'Pikachu', '2019-11-18 15:16:47'),
(15, 8, 5, '++', '2019-11-19 14:55:33'),
(16, 8, 1, 'naruto...', '2019-11-19 15:06:44'),
(17, 15, 1, 'flávio é corno', '2019-11-22 10:16:19'),
(18, 17, 2, 'Top', '2019-11-26 10:07:26'),
(19, 1, 7, 'MIAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu!!', '2019-12-02 08:24:20'),
(20, 21, 3, 'Cruzeiro vai ser rebaixado\r\n', '2019-12-03 09:20:06'),
(21, 20, 3, 'Partiu Serie B', '2019-12-03 09:20:19'),
(22, 20, 3, 'Cruzeiro é time,\r\nVasco é seleção!!', '2019-12-03 09:21:00'),
(23, 21, 3, 'não ganha nem a série b\r\n', '2019-12-03 09:21:03'),
(24, 22, 3, '\"TIME GRANDE NÃO CAI\"\r\n- cruzeirense, 2018', '2019-12-03 09:23:17'),
(25, 22, 3, 'kkkkkkkkkkkkkkkkkkkcruzeirokkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', '2019-12-03 09:23:29'),
(26, 22, 3, 'se sua vida tá ruim, imagina a de quem dizia que o cruzeiro não ia cair\r\n', '2019-12-03 09:23:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ep_anime`
--

CREATE TABLE `ep_anime` (
  `id` int(11) NOT NULL,
  `id_anime` int(11) NOT NULL,
  `nome_ep` varchar(200) DEFAULT NULL,
  `link_ep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ep_anime`
--

INSERT INTO `ep_anime` (`id`, `id_anime`, `nome_ep`, `link_ep`) VALUES
(1, 7, 'Super Dragon Ball Heroes - Episódio 01', 'https://mystream.to/watch/u3lfbqs4q7ll'),
(2, 7, 'Super Dragon Ball Heroes - Episódio 02', 'https://mystream.to/watch/1gvtj45ybg36'),
(3, 7, 'Super Dragon Ball Heroes - Episódio 03', 'https://mystream.to/watch/q6pgd6p35sul'),
(4, 7, 'Super Dragon Ball Heroes - Episódio 04', 'https://mystream.to/watch/0x9cmdyxs599'),
(5, 7, 'Super Dragon Ball Heroes - Episódio 05', 'https://mystream.to/watch/x9xo8adqz6zu'),
(6, 7, 'Super Dragon Ball Heroes - Episódio 06', 'https://mystream.to/watch/ty2eiz5zfbfw'),
(7, 7, 'Super Dragon Ball Heroes - Episódio 07', 'https://mystream.to/watch/rncfp28ud3ya'),
(8, 7, 'Super Dragon Ball Heroes - Episódio 08', 'https://mystream.to/watch/s9r8widucpau'),
(9, 7, 'Super Dragon Ball Heroes - Episódio 09', 'https://mystream.to/watch/nkjad24yopyz'),
(10, 7, 'Super Dragon Ball Heroes - Episódio 10', 'https://mystream.to/watch/y2bv583tjw7e'),
(11, 7, 'Super Dragon Ball Heroes - Episódio 11', 'https://mystream.to/watch/kwcmuahdi9mc'),
(12, 7, 'Super Dragon Ball Heroes - Episódio 12', 'https://mystream.to/watch/b49h9irhl9yd'),
(13, 7, 'Super Dragon Ball Heroes - Episódio 13', 'https://mystream.to/watch/gs86dmv7t5ad'),
(14, 7, 'Super Dragon Ball Heroes - Episódio 14', 'https://mystream.to/watch/1ntbig7fntou'),
(15, 7, 'Super Dragon Ball Heroes - Episódio 15', 'https://mystream.to/watch/3wnefds8ehvf'),
(16, 4, 'Avatar: A Lenda de Aang - Episódio 01', 'https://mystream.to/watch/h5841d13mtvx'),
(17, 4, 'Avatar: A Lenda de Aang - Episódio 02', 'https://mystream.to/watch/r5coszrpt1x4'),
(18, 4, 'Avatar: A Lenda de Aang - Episódio 03', 'https://mystream.to/watch/8eauawu7z6c9'),
(19, 4, 'Avatar: A Lenda de Aang - Episódio 04', 'https://mystream.to/watch/nbf7onnfq6iw'),
(20, 4, 'Avatar: A Lenda de Aang - Episódio 05', 'https://mystream.to/watch/ww5fc64q9sgu'),
(21, 4, 'Avatar: A Lenda de Aang - Episódio 06', 'https://mystream.to/watch/g8j5u5a0xyo7'),
(22, 4, 'Avatar: A Lenda de Aang - Episódio 07', 'https://mystream.to/watch/tbkpx4r2yep6'),
(23, 4, 'Avatar: A Lenda de Aang - Episódio 08', 'https://mystream.to/watch/n07mzvjvk2z8'),
(24, 4, 'Avatar: A Lenda de Aang - Episódio 09', 'https://mystream.to/watch/jgbjshtttl9m'),
(25, 4, 'Avatar: A Lenda de Aang - Episódio 10', 'https://mystream.to/watch/k6thtork7sc5'),
(26, 4, 'Avatar: A Lenda de Aang - Episódio 11', 'https://mystream.to/watch/8ijyb1ob37hz'),
(27, 4, 'Avatar: A Lenda de Aang - Episódio 12', 'https://mystream.to/watch/ybr1vi6io5a7'),
(28, 4, 'Avatar: A Lenda de Aang - Episódio 13', 'https://mystream.to/watch/ckconw6caufm'),
(29, 4, 'Avatar: A Lenda de Aang - Episódio 14', 'https://mystream.to/watch/wi4jj59vj1wi'),
(30, 4, 'Avatar: A Lenda de Aang - Episódio 15', 'https://mystream.to/watch/p8f0geh5k70u'),
(31, 4, 'Avatar: A Lenda de Aang - Episódio 16', 'https://mystream.to/watch/jcfd3kmz6qc8'),
(32, 4, 'Avatar: A Lenda de Aang - Episódio 17', 'https://mystream.to/watch/162ucqwwjqhz'),
(33, 4, 'Avatar: A Lenda de Aang - Episódio 18', 'https://mystream.to/watch/mzfti3o262ih'),
(34, 4, 'Avatar: A Lenda de Aang - Episódio 19', 'https://mystream.to/watch/yk2v2p2wepaz'),
(35, 4, 'Avatar: A Lenda de Aang - Episódio 20', 'https://mystream.to/watch/imo5xucfzqgu'),
(36, 4, 'Avatar: A Lenda de Aang - Episódio 21', 'https://mystream.to/watch/e895qgc3ohug'),
(37, 4, 'Avatar: A Lenda de Aang - Episódio 22', 'https://mystream.to/watch/jrxh90g7n734'),
(38, 4, 'Avatar: A Lenda de Aang - Episódio 23', 'https://mystream.to/watch/a3z8v07zn7yn'),
(39, 4, 'Avatar: A Lenda de Aang - Episódio 24', 'https://mystream.to/watch/immd822xtmcb'),
(40, 4, 'Avatar: A Lenda de Aang - Episódio 25', 'https://mystream.to/watch/kvu70psiza5l'),
(41, 4, 'Avatar: A Lenda de Aang - Episódio 26', 'https://mystream.to/watch/0ene1y01go8t'),
(42, 4, 'Avatar: A Lenda de Aang - Episódio 27', 'https://mystream.to/watch/9p6prw2qmbm8'),
(43, 4, 'Avatar: A Lenda de Aang - Episódio 28', 'https://mystream.to/watch/ukfojak4fjf7'),
(44, 4, 'Avatar: A Lenda de Aang - Episódio 29', 'https://mystream.to/watch/eftvbfizqcqu'),
(45, 4, 'Avatar: A Lenda de Aang - Episódio 30', 'https://mystream.to/watch/9aj4xioymv2n'),
(46, 4, 'Avatar: A Lenda de Aang - Episódio 31', 'https://mystream.to/watch/ep98mgrpou3p'),
(47, 4, 'Avatar: A Lenda de Aang - Episódio 32', 'https://mystream.to/watch/1a5ft5wsi9z4'),
(48, 4, 'Avatar: A Lenda de Aang - Episódio 33', 'https://mystream.to/watch/337w9ngoa1q0'),
(49, 4, 'Avatar: A Lenda de Aang - Episódio 34', 'https://mystream.to/watch/e90twpah7ym2'),
(50, 4, 'Avatar: A Lenda de Aang - Episódio 35', 'https://mystream.to/watch/tozptroksgjp'),
(51, 4, 'Avatar: A Lenda de Aang - Episódio 36', 'https://mystream.to/watch/6l76fdouyxjm'),
(52, 4, 'Avatar: A Lenda de Aang - Episódio 37', 'https://mystream.to/watch/xg6inkqulg5s'),
(53, 4, 'Avatar: A Lenda de Aang - Episódio 38', 'https://mystream.to/watch/52dtzwi8qe4p'),
(54, 4, 'Avatar: A Lenda de Aang - Episódio 39', 'https://mystream.to/watch/j45obut2qc8l'),
(55, 4, 'Avatar: A Lenda de Aang - Episódio 40', 'https://mystream.to/watch/8sext3tezsfk'),
(56, 4, 'Avatar: A Lenda de Aang - Episódio 41', 'https://mystream.to/watch/ewzf63377kro'),
(57, 4, 'Avatar: A Lenda de Aang - Episódio 42', 'https://mystream.to/watch/kedaxg5fx2pr'),
(58, 4, 'Avatar: A Lenda de Aang - Episódio 43', 'https://mystream.to/watch/aumeofzihkji'),
(59, 4, 'Avatar: A Lenda de Aang - Episódio 44', 'https://mystream.to/watch/jfnhtl14yo7t'),
(60, 4, 'Avatar: A Lenda de Aang - Episódio 45', 'https://mystream.to/watch/1ktm8t0xy2iq'),
(61, 4, 'Avatar: A Lenda de Aang - Episódio 46', 'https://mystream.to/watch/ksb6anuqndv0'),
(62, 4, 'Avatar: A Lenda de Aang - Episódio 47', 'https://mystream.to/watch/8q2sdl2upis7'),
(63, 4, 'Avatar: A Lenda de Aang - Episódio 48', 'https://mystream.to/watch/0ewxr7lpeivl'),
(64, 4, 'Avatar: A Lenda de Aang - Episódio 49', 'https://mystream.to/watch/q2bwjvio0lxh'),
(65, 4, 'Avatar: A Lenda de Aang - Episódio 50', 'https://mystream.to/watch/hvjzw0exy52b'),
(66, 4, 'Avatar: A Lenda de Aang - Episódio 51', 'https://mystream.to/watch/ddsw6536na0i'),
(67, 4, 'Avatar: A Lenda de Aang - Episódio 52', 'https://mystream.to/watch/ll50wy0a3m72'),
(68, 4, 'Avatar: A Lenda de Aang - Episódio 53', 'https://mystream.to/watch/ys135ng10tmk'),
(69, 4, 'Avatar: A Lenda de Aang - Episódio 54', 'https://mystream.to/watch/ad58tienzk2k'),
(70, 4, 'Avatar: A Lenda de Aang - Episódio 55', 'https://mystream.to/watch/j6tvwha9rz10'),
(71, 4, 'Avatar: A Lenda de Aang - Episódio 56', 'https://mystream.to/watch/cjjr0tbma369'),
(72, 4, 'Avatar: A Lenda de Aang - Episódio 57', 'https://mystream.to/watch/ok1wekc3620y'),
(73, 4, 'Avatar: A Lenda de Aang - Episódio 58', 'https://mystream.to/watch/ruzkhez58mt1'),
(74, 4, 'Avatar: A Lenda de Aang - Episódio 59', 'https://mystream.to/watch/xyl9xu410rfj'),
(75, 4, 'Avatar: A Lenda de Aang - Episódio 60', 'https://mystream.to/watch/ynzq0nc3sf65'),
(76, 4, 'Avatar: A Lenda de Aang - Episódio 61', 'https://mystream.to/watch/0trc6m7ntbat'),
(77, 6, 'Super Onze - Episódio 01', 'https://mystream.to/watch/arek8mzewwp5'),
(78, 6, 'Super Onze - Episódio 02', 'https://mystream.to/watch/kj19tc8auu3x'),
(79, 6, 'Super Onze - Episódio 03', 'https://mystream.to/watch/vyyf0b81o5xh'),
(80, 6, 'Super Onze - Episódio 04', 'https://mystream.to/watch/kk8gssjtvj8j'),
(81, 6, 'Super Onze - Episódio 05', 'https://mystream.to/watch/fwdv1tcg06xx'),
(82, 6, 'Super Onze - Episódio 06', 'https://mystream.to/watch/kjtpog091j4x'),
(83, 6, 'Super Onze - Episódio 07', 'https://mystream.to/watch/p1v25tz01nb5'),
(84, 6, 'Super Onze - Episódio 08', 'https://mystream.to/watch/wd3yf7nvmjxn'),
(85, 6, 'Super Onze - Episódio 09', 'https://mystream.to/watch/ekv355onml6s'),
(86, 6, 'Super Onze - Episódio 10', 'https://mystream.to/watch/ufil5lkziwve'),
(87, 6, 'Super Onze - Episódio 11', 'https://mystream.to/watch/5edivebsc5zq'),
(88, 6, 'Super Onze - Episódio 12', 'https://mystream.to/watch/4yrr3da3gz2h'),
(89, 6, 'Super Onze - Episódio 13', 'https://mystream.to/watch/c1s3onuuq8d8'),
(90, 6, 'Super Onze - Episódio 14', 'https://mystream.to/watch/x0siwpaofbmq'),
(91, 6, 'Super Onze - Episódio 15', 'https://mystream.to/watch/sxhdps6xwv68'),
(92, 6, 'Super Onze - Episódio 16', 'https://mystream.to/watch/jspju4ou136x'),
(93, 6, 'Super Onze - Episódio 17', 'https://mystream.to/watch/lbm20smbxlqs'),
(94, 6, 'Super Onze - Episódio 18', 'https://mystream.to/watch/otqkvmqm6u0b'),
(95, 6, 'Super Onze - Episódio 19', 'https://mystream.to/watch/l4z1ebptn4ui'),
(96, 6, 'Super Onze - Episódio 20', 'https://mystream.to/watch/i9mpu3fr8hyv'),
(97, 6, 'Super Onze - Episódio 21', 'https://mystream.to/watch/edz7uf2q7fpj'),
(98, 6, 'Super Onze - Episódio 22', 'https://mystream.to/watch/yzjrdl6yuom6'),
(99, 6, 'Super Onze - Episódio 23', 'https://mystream.to/watch/m5rfon15l1ke'),
(100, 6, 'Super Onze - Episódio 24', 'https://mystream.to/watch/fu7lru9bk53n'),
(101, 6, 'Super Onze - Episódio 25', 'https://mystream.to/watch/uwj0p05vz2xv'),
(102, 6, 'Super Onze - Episódio 26', 'https://mystream.to/watch/dofbs6irvtn4'),
(103, 6, 'Super Onze - Episódio 27', 'https://mystream.to/watch/m0ckrim2o32u'),
(104, 6, 'Super Onze - Episódio 28', 'https://mystream.to/watch/jj4373f5ovr4'),
(105, 6, 'Super Onze - Episódio 29', 'https://mystream.to/watch/va18y4o8jncc'),
(106, 6, 'Super Onze - Episódio 30', 'https://mystream.to/watch/t0dlevqhhnn2'),
(107, 6, 'Super Onze - Episódio 31', 'https://mystream.to/watch/q83l9j4ea4ed'),
(108, 6, 'Super Onze - Episódio 32', 'https://mystream.to/watch/t6j22rjvijrv'),
(109, 6, 'Super Onze - Episódio 33', 'https://mystream.to/watch/rjxrvrvwfqn5'),
(110, 6, 'Super Onze - Episódio 34', 'https://mystream.to/watch/iv7nd1u2ddfo'),
(111, 6, 'Super Onze - Episódio 35', 'https://mystream.to/watch/q9yvigok3eko'),
(112, 6, 'Super Onze - Episódio 36', 'https://mystream.to/watch/unzwepjsu2fm'),
(113, 6, 'Super Onze - Episódio 37', 'https://mystream.to/watch/sxf8tgby5a71'),
(114, 6, 'Super Onze - Episódio 38', 'https://mystream.to/watch/yn2sq40qrfm5'),
(115, 6, 'Super Onze - Episódio 39', 'https://mystream.to/watch/qjkm1nj8h2br'),
(116, 6, 'Super Onze - Episódio 40', 'https://mystream.to/watch/kxsz4fydb5yb'),
(117, 6, 'Super Onze - Episódio 41', 'https://mystream.to/watch/5o3xah4l53qp'),
(118, 6, 'Super Onze - Episódio 42', 'https://mystream.to/watch/dm379pps2u35'),
(119, 6, 'Super Onze - Episódio 43', 'https://mystream.to/watch/goa4rzqzv039'),
(120, 6, 'Super Onze - Episódio 44', 'https://mystream.to/watch/mtc6dwm682ur'),
(121, 6, 'Super Onze - Episódio 45', 'https://mystream.to/watch/v6u0zs249npd'),
(122, 6, 'Super Onze - Episódio 46', 'https://mystream.to/watch/syx7n93hnmzy'),
(123, 6, 'Super Onze - Episódio 47', 'https://mystream.to/watch/6749avo51lxz'),
(124, 6, 'Super Onze - Episódio 48', 'https://mystream.to/watch/ktgcn9s2dh3l'),
(125, 6, 'Super Onze - Episódio 49', 'https://mystream.to/watch/ox012m084y55'),
(126, 6, 'Super Onze - Episódio 50', 'https://mystream.to/watch/vahozrscig8u'),
(127, 6, 'Super Onze - Episódio 51', 'https://mystream.to/watch/jag5tujeg0iz'),
(128, 6, 'Super Onze - Episódio 52', 'https://mystream.to/watch/iirlmb0bffp6'),
(129, 6, 'Super Onze - Episódio 53', 'https://mystream.to/watch/mwn4kvpci2pv'),
(130, 6, 'Super Onze - Episódio 54', 'https://mystream.to/watch/n7j6odxncaz9'),
(131, 6, 'Super Onze - Episódio 55', 'https://mystream.to/watch/7nh606tqg5bc'),
(132, 6, 'Super Onze - Episódio 56', 'https://mystream.to/watch/kvi3e43w73bv'),
(133, 6, 'Super Onze - Episódio 57', 'https://mystream.to/watch/fe5k75lkxc21'),
(134, 6, 'Super Onze - Episódio 58', 'https://mystream.to/watch/t2axkcelh1i0'),
(135, 6, 'Super Onze - Episódio 59', 'https://mystream.to/watch/gztbnprimymo'),
(136, 6, 'Super Onze - Episódio 60', 'https://mystream.to/watch/zrc17qbdgy08'),
(137, 6, 'Super Onze - Episódio 61', 'https://mystream.to/watch/eel9t07v99cv'),
(138, 6, 'Super Onze - Episódio 62', 'https://mystream.to/watch/n8sl9tbj7gkb'),
(139, 6, 'Super Onze - Episódio 63', 'https://mystream.to/watch/x23291a184sq'),
(140, 6, 'Super Onze - Episódio 64', 'https://mystream.to/watch/p6c2hrs7mfdq'),
(141, 6, 'Super Onze - Episódio 65', 'https://mystream.to/watch/v5agwug69c5r'),
(142, 6, 'Super Onze - Episódio 66', 'https://mystream.to/watch/phxv66z3pmh6'),
(143, 6, 'Super Onze - Episódio 67', 'https://mystream.to/watch/9f7et9bl6zg3'),
(144, 7, 'Super Dragon Ball Heroes - Episódio 16', 'https://mystream.to/watch/ru2l5baotgz2'),
(145, 5, 'Pokémon XY & Z - Episódio 01', 'https://mystream.to/watch/2zzhjhg7721f'),
(146, 5, 'Pokémon XY & Z - Episódio 02', 'https://mystream.to/watch/9ww9jtcmhc63'),
(147, 5, 'Pokémon XY & Z - Episódio 03', 'https://mystream.to/watch/2o8twey8gnlq'),
(148, 5, 'Pokémon XY & Z - Episódio 04', 'https://mystream.to/watch/moh2hapnu1q7'),
(149, 5, 'Pokémon XY & Z - Episódio 05', 'https://mystream.to/watch/kuilzzcdemj1'),
(150, 3, 'Naruto Shippuden - Episódio 01', 'https://mystream.to/watch/v6zbpc93wonb'),
(151, 3, 'Naruto Shippuden - Episódio 02', 'https://mystream.to/watch/pfir7dd79lc7'),
(152, 3, 'Naruto Shippuden - Episódio 03', 'https://mystream.to/watch/lqv1ryk1ow98'),
(153, 3, 'Naruto Shippuden - Episódio 04', 'https://mystream.to/watch/9jzg97rcujsi'),
(154, 3, 'Naruto Shippuden - Episódio 05', 'https://mystream.to/watch/xd21ad2q1goo'),
(155, 3, 'Naruto Shippuden - Episódio 06', 'https://mystream.to/watch/qexjyhqedr2c'),
(156, 3, 'Naruto Shippuden - Episódio 07', 'https://mystream.to/watch/1owcjg1qtlrj'),
(157, 3, 'Naruto Shippuden - Episódio 08', 'https://mystream.to/watch/lzmw7xk08al6'),
(158, 3, 'Naruto Shippuden - Episódio 09', 'https://mystream.to/watch/50jptq4bcixh'),
(159, 3, 'Naruto Shippuden - Episódio 10', 'https://mystream.to/watch/z7l58njllwkl'),
(160, 3, 'Naruto Shippuden - Episódio 11', 'https://mystream.to/watch/26swx92vuk7k'),
(161, 3, 'Naruto Shippuden - Episódio 12', 'https://mystream.to/watch/fhij5yji1rdr'),
(162, 3, 'Naruto Shippuden - Episódio 13', 'https://mystream.to/watch/fejrjdblnwwl'),
(163, 3, 'Naruto Shippuden - Episódio 14', 'https://mystream.to/watch/oi5rzhbs5xyp'),
(164, 3, 'Naruto Shippuden - Episódio 15', 'https://mystream.to/watch/etop4cc6ukws'),
(165, 3, 'Naruto Shippuden - Episódio 16', 'https://mystream.to/watch/u40xpq87rivs'),
(166, 3, 'Naruto Shippuden - Episódio 17', 'https://mystream.to/watch/yfbm0p5pl79h'),
(167, 3, 'Naruto Shippuden - Episódio 18', 'https://mystream.to/watch/hf8oml3yi1q4'),
(168, 3, 'Naruto Shippuden - Episódio 19', 'https://mystream.to/watch/yllqr0taljjw'),
(169, 3, 'Naruto Shippuden - Episódio 20', 'https://mystream.to/watch/a6e74p05lwkf'),
(170, 3, 'Naruto Shippuden - Episódio 21', 'https://mystream.to/watch/ny70qbptazm8'),
(171, 3, 'Naruto Shippuden - Episódio 22', 'https://mystream.to/watch/046moxbnabsb'),
(172, 3, 'Naruto Shippuden - Episódio 23', 'https://mystream.to/watch/7ywpf1zevwuu'),
(173, 3, 'Naruto Shippuden - Episódio 24', 'https://mystream.to/watch/82u03n7fovsl'),
(174, 3, 'Naruto Shippuden - Episódio 25', 'https://mystream.to/watch/1lebhijvvq5g'),
(175, 3, 'Naruto Shippuden - Episódio 26', 'https://mystream.to/watch/8gmhiewgvlrb'),
(176, 3, 'Naruto Shippuden - Episódio 27', 'https://mystream.to/watch/9pjeza64oufb'),
(177, 3, 'Naruto Shippuden - Episódio 28', 'https://mystream.to/watch/fa3ntzaq6h5j'),
(178, 3, 'Naruto Shippuden - Episódio 29', 'https://mystream.to/watch/eme9y228y0ri'),
(179, 3, 'Naruto Shippuden - Episódio 30', 'https://mystream.to/watch/ntdu2jxyqqpo'),
(180, 3, 'Naruto Shippuden - Episódio 31', 'https://mystream.to/watch/crgd3nwy5jme'),
(181, 3, 'Naruto Shippuden - Episódio 32', 'https://mystream.to/watch/asr9q5wwiil6'),
(182, 3, 'Naruto Shippuden - Episódio 33', 'https://mystream.to/watch/d7tgv6t7t289'),
(183, 3, 'Naruto Shippuden - Episódio 34', 'https://mystream.to/watch/7fpr6i2kc67v'),
(184, 3, 'Naruto Shippuden - Episódio 35', 'https://mystream.to/watch/wuzgh0oaszhr'),
(185, 3, 'Naruto Shippuden - Episódio 36', 'https://mystream.to/watch/36eebhgnrm2j'),
(186, 3, 'Naruto Shippuden - Episódio 37', 'https://mystream.to/watch/hvpopyvaw69k'),
(187, 3, 'Naruto Shippuden - Episódio 38', 'https://mystream.to/watch/8np9mxw5epje'),
(188, 3, 'Naruto Shippuden - Episódio 39', 'https://mystream.to/watch/jafkjzva6iim'),
(189, 3, 'Naruto Shippuden - Episódio 40', 'https://mystream.to/watch/oshx9nbkqkk4'),
(190, 3, 'Naruto Shippuden - Episódio 41', 'https://mystream.to/watch/r7ez0p0lxu9v'),
(191, 3, 'Naruto Shippuden - Episódio 42', 'https://mystream.to/watch/we767brwk78a'),
(192, 3, 'Naruto Shippuden - Episódio 43', 'https://mystream.to/watch/d5gia9jcwj0k'),
(193, 3, 'Naruto Shippuden - Episódio 44', 'https://mystream.to/watch/2lkukinw8doc'),
(194, 3, 'Naruto Shippuden - Episódio 45', 'https://mystream.to/watch/81mvuq7b3so4'),
(195, 3, 'Naruto Shippuden - Episódio 46', 'https://mystream.to/watch/degqcd249h7l'),
(196, 3, 'Naruto Shippuden - Episódio 47', 'https://mystream.to/watch/sgq7gr3d9voi'),
(197, 3, 'Naruto Shippuden - Episódio 48', 'https://mystream.to/watch/3b0t6w5jkxn8'),
(198, 3, 'Naruto Shippuden - Episódio 49', 'https://mystream.to/watch/s834dnfnk0kx'),
(199, 3, 'Naruto Shippuden - Episódio 50', 'https://mystream.to/watch/vaffiabtgopz'),
(200, 3, 'Naruto Shippuden - Episódio 51', 'https://mystream.to/watch/d6wc7p0dx44o'),
(201, 3, 'Naruto Shippuden - Episódio 52', 'https://mystream.to/watch/t0jo5t08zneo'),
(202, 2, 'Dragon Ball Super - Episódio 01', 'https://mystream.to/watch/jmvh84oo78e2'),
(203, 2, 'Dragon Ball Super - Episódio 02', 'https://mystream.to/watch/qfumjs94pv3x'),
(204, 2, 'Dragon Ball Super - Episódio 03', 'https://mystream.to/watch/o393b44adci0'),
(205, 2, 'Dragon Ball Super - Episódio 04', 'https://mystream.to/watch/dew17dsesjey'),
(206, 2, 'Dragon Ball Super - Episódio 05', 'https://mystream.to/watch/4jiqte0v4688'),
(207, 2, 'Dragon Ball Super - Episódio 06', 'https://mystream.to/watch/19ovw9t56vca'),
(208, 2, 'Dragon Ball Super - Episódio 07', 'https://mystream.to/watch/utun92kccpzw'),
(209, 2, 'Dragon Ball Super - Episódio 08', 'https://mystream.to/watch/as6hkjpwn123'),
(210, 2, 'Dragon Ball Super - Episódio 09', 'https://mystream.to/watch/en7xz1ff7ka5'),
(211, 2, 'Dragon Ball Super - Episódio 10', 'https://mystream.to/watch/ogni7nmfexk7'),
(212, 2, 'Dragon Ball Super - Episódio 11', 'https://mystream.to/watch/gos42tnu79nu'),
(213, 2, 'Dragon Ball Super - Episódio 12', 'https://mystream.to/watch/mr6pctsagpcf'),
(214, 2, 'Dragon Ball Super - Episódio 13', 'https://mystream.to/watch/g31gum6hb7z5'),
(215, 2, 'Dragon Ball Super - Episódio 14', 'https://mystream.to/watch/dz6xw431bn63'),
(216, 2, 'Dragon Ball Super - Episódio 15', 'https://mystream.to/watch/22n0iw6eflk8'),
(217, 2, 'Dragon Ball Super - Episódio 16', 'https://mystream.to/watch/qzrtf7gv3ue8'),
(218, 2, 'Dragon Ball Super - Episódio 17', 'https://mystream.to/watch/bl4oezn4drtv'),
(219, 2, 'Dragon Ball Super - Episódio 18', 'https://mystream.to/watch/c8dtzhyr5hqc'),
(220, 2, 'Dragon Ball Super - Episódio 19', 'https://mystream.to/watch/tnnvxi7fr6b9'),
(221, 2, 'Dragon Ball Super - Episódio 20', 'https://mystream.to/watch/nxgqb02ushiq'),
(222, 2, 'Dragon Ball Super - Episódio 21', 'https://mystream.to/watch/2epsf7u2eehy'),
(223, 2, 'Dragon Ball Super - Episódio 22', 'https://mystream.to/watch/jm1hwnpsz2wr'),
(224, 2, 'Dragon Ball Super - Episódio 23', 'https://mystream.to/watch/o8ttfrimi0s8'),
(225, 2, 'Dragon Ball Super - Episódio 24', 'https://mystream.to/watch/zlykrgy7np2y'),
(226, 2, 'Dragon Ball Super - Episódio 25', 'https://mystream.to/watch/e0i36qe2f8hk'),
(227, 2, 'Dragon Ball Super - Episódio 26', 'https://mystream.to/watch/1crixly9eh14'),
(228, 2, 'Dragon Ball Super - Episódio 27', 'https://mystream.to/watch/anlbw2iljahk'),
(229, 2, 'Dragon Ball Super - Episódio 28', 'https://mystream.to/watch/v95oybq2zqhk'),
(230, 2, 'Dragon Ball Super - Episódio 29', 'https://mystream.to/watch/1jt4c4gze0p5'),
(231, 2, 'Dragon Ball Super - Episódio 30', 'https://mystream.to/watch/snpfka5yp8a6'),
(232, 2, 'Dragon Ball Super - Episódio 31', 'https://mystream.to/watch/ye4b36kfnoz3'),
(233, 2, 'Dragon Ball Super - Episódio 32', 'https://mystream.to/watch/gn1gfngd7oql'),
(234, 2, 'Dragon Ball Super - Episódio 33', 'https://mystream.to/watch/eeix7tbjdwnx'),
(235, 2, 'Dragon Ball Super - Episódio 34', 'https://mystream.to/watch/bn3ax73m5t8q'),
(236, 2, 'Dragon Ball Super - Episódio 35', 'https://mystream.to/watch/nwpntlwc7vng'),
(237, 2, 'Dragon Ball Super - Episódio 36', 'https://mystream.to/watch/tk4vpkxjzamv'),
(238, 2, 'Dragon Ball Super - Episódio 37', 'https://mystream.to/watch/6l9ndsfw0ngq'),
(239, 2, 'Dragon Ball Super - Episódio 38', 'https://mystream.to/watch/cjsloz7vexun'),
(240, 2, 'Dragon Ball Super - Episódio 39', 'https://mystream.to/watch/dlokgckfav2v'),
(241, 2, 'Dragon Ball Super - Episódio 40', 'https://mystream.to/watch/xapxwrozlnl2'),
(242, 2, 'Dragon Ball Super - Episódio 41', 'https://mystream.to/watch/gx7lkcvyften'),
(243, 2, 'Dragon Ball Super - Episódio 42', 'https://mystream.to/watch/5jwvhgbl0txa'),
(244, 2, 'Dragon Ball Super - Episódio 43', 'https://mystream.to/watch/mj4z641m96uu'),
(245, 2, 'Dragon Ball Super - Episódio 44', 'https://mystream.to/watch/qnin69ga9xvy'),
(246, 2, 'Dragon Ball Super - Episódio 45', 'https://mystream.to/watch/xjo50cuiwfrw'),
(247, 2, 'Dragon Ball Super - Episódio 46', 'https://mystream.to/watch/nlbiyegl89ss'),
(248, 2, 'Dragon Ball Super - Episódio 47', 'https://mystream.to/watch/rlvceukhzkrz'),
(249, 2, 'Dragon Ball Super - Episódio 48', 'https://mystream.to/watch/c24vb4imdbsh'),
(250, 2, 'Dragon Ball Super - Episódio 49', 'https://mystream.to/watch/ppzou5nljlss'),
(251, 2, 'Dragon Ball Super - Episódio 50', 'https://mystream.to/watch/333bossr1xdx'),
(252, 2, 'Dragon Ball Super - Episódio 51', 'https://mystream.to/watch/r4oe26180l7g'),
(253, 2, 'Dragon Ball Super - Episódio 52', 'https://mystream.to/watch/friu44throbq'),
(254, 2, 'Dragon Ball Super - Episódio 53', 'https://mystream.to/watch/kpdk1bcoat0h'),
(255, 2, 'Dragon Ball Super - Episódio 54', 'https://mystream.to/watch/t6mekvy58jwr'),
(256, 2, 'Dragon Ball Super - Episódio 55', 'https://mystream.to/watch/m31nkugs3ucl'),
(257, 2, 'Dragon Ball Super - Episódio 56', 'https://mystream.to/watch/0lqo3fb6c1f0'),
(258, 2, 'Dragon Ball Super - Episódio 57', 'https://mystream.to/watch/cfxygoja8yaz'),
(259, 2, 'Dragon Ball Super - Episódio 58', 'https://mystream.to/watch/d56vv0hmwt73'),
(260, 2, 'Dragon Ball Super - Episódio 59', 'https://mystream.to/watch/wwten0ac6u6n'),
(261, 2, 'Dragon Ball Super - Episódio 60', 'https://mystream.to/watch/hatt4px66s8x'),
(262, 2, 'Dragon Ball Super - Episódio 61', 'https://mystream.to/watch/gn0l4l9d8gyb'),
(263, 2, 'Dragon Ball Super - Episódio 62', 'https://mystream.to/watch/b4cz3zydvo61'),
(264, 2, 'Dragon Ball Super - Episódio 63', 'https://mystream.to/watch/3hdo5334jrg9'),
(265, 2, 'Dragon Ball Super - Episódio 64', 'https://mystream.to/watch/s75ay80vx0zi'),
(266, 2, 'Dragon Ball Super - Episódio 65', 'https://mystream.to/watch/et6vf45p4wf1'),
(267, 2, 'Dragon Ball Super - Episódio 66', 'https://mystream.to/watch/hb6z1teg09j9'),
(268, 2, 'Dragon Ball Super - Episódio 67', 'https://mystream.to/watch/scyv1i4a9izd'),
(269, 2, 'Dragon Ball Super - Episódio 68', 'https://mystream.to/watch/uxoeh6vj368m'),
(270, 2, 'Dragon Ball Super - Episódio 69', 'https://mystream.to/watch/6k924svyb5p0'),
(271, 2, 'Dragon Ball Super - Episódio 70', 'https://mystream.to/watch/j1v490ix7zb2'),
(272, 2, 'Dragon Ball Super - Episódio 71', 'https://mystream.to/watch/tx2j899v3ree'),
(273, 2, 'Dragon Ball Super - Episódio 72', 'https://mystream.to/watch/fy1q69zwmmsr'),
(274, 2, 'Dragon Ball Super - Episódio 73', 'https://mystream.to/watch/pvnz6aivjebf'),
(275, 2, 'Dragon Ball Super - Episódio 74', 'https://mystream.to/watch/hir76tbxqj5k'),
(276, 2, 'Dragon Ball Super - Episódio 75', 'https://mystream.to/watch/nn6qr16h1tk8'),
(277, 2, 'Dragon Ball Super - Episódio 76', 'https://mystream.to/watch/iz1pvw3v8i10'),
(278, 2, 'Dragon Ball Super - Episódio 77', 'https://mystream.to/watch/j40xny3z4zgo'),
(279, 2, 'Dragon Ball Super - Episódio 78', 'https://mystream.to/watch/dia53epvaag2'),
(280, 2, 'Dragon Ball Super - Episódio 79', 'https://mystream.to/watch/tx9f16t67rxg'),
(281, 2, 'Dragon Ball Super - Episódio 80', 'https://mystream.to/watch/8q1g6pz6veo3'),
(282, 2, 'Dragon Ball Super - Episódio 81', 'https://mystream.to/watch/03ob5ooeugbc'),
(283, 2, 'Dragon Ball Super - Episódio 82', 'https://mystream.to/watch/xcj016s3w79n'),
(284, 2, 'Dragon Ball Super - Episódio 83', 'https://mystream.to/watch/sdzo3u0s5dum'),
(285, 2, 'Dragon Ball Super - Episódio 84', 'https://mystream.to/watch/rs3df4l26ufp'),
(286, 3, 'Naruto Shippuden - Episódio 53', 'https://mystream.to/watch/auzw5jkhdj6l'),
(287, 3, 'Naruto Shippuden - Episódio 54', 'https://mystream.to/watch/ywj7m0v4i01p'),
(288, 3, 'Naruto Shippuden - Episódio 55', 'https://mystream.to/watch/otel0kptpurn'),
(289, 3, 'Naruto Shippuden - Episódio 56', 'https://mystream.to/watch/1vrh0cbtzj6t'),
(290, 3, 'Naruto Shippuden - Episódio 57', 'https://mystream.to/watch/htqc4uus2miu'),
(291, 3, 'Naruto Shippuden - Episódio 58', 'https://mystream.to/watch/evtcl9o720cw'),
(292, 3, 'Naruto Shippuden - Episódio 59', 'https://mystream.to/watch/v7qmbsbv8ddf'),
(293, 3, 'Naruto Shippuden - Episódio 60', 'https://mystream.to/watch/uio0p5hgh4kk'),
(294, 3, 'Naruto Shippuden - Episódio 61', 'https://mystream.to/watch/ap6m8vo70di2'),
(295, 3, 'Naruto Shippuden - Episódio 62', 'https://mystream.to/watch/xjjo3fho27c0'),
(296, 3, 'Naruto Shippuden - Episódio 63', 'https://mystream.to/watch/q32gywjkb8hs'),
(297, 3, 'Naruto Shippuden - Episódio 64', 'https://mystream.to/watch/ta2c5z2gfq1r'),
(298, 3, 'Naruto Shippuden - Episódio 65', 'https://mystream.to/watch/s7ri62nhdn7z'),
(299, 3, 'Naruto Shippuden - Episódio 66', 'https://mystream.to/watch/gix0ibcad6w0'),
(300, 3, 'Naruto Shippuden - Episódio 67', 'https://mystream.to/watch/yppx8r24f8ow'),
(301, 3, 'Naruto Shippuden - Episódio 68', 'https://mystream.to/watch/or6jn4teh6fm'),
(302, 3, 'Naruto Shippuden - Episódio 69', 'https://mystream.to/watch/08d636i59bh5'),
(303, 3, 'Naruto Shippuden - Episódio 70', 'https://mystream.to/watch/qpo5630niegu'),
(304, 3, 'Naruto Shippuden - Episódio 71', 'https://mystream.to/watch/3nuz715tpl0w'),
(305, 3, 'Naruto Shippuden - Episódio 72', 'https://mystream.to/watch/4rtuh8hfnuak'),
(306, 3, 'Naruto Shippuden - Episódio 73', 'https://mystream.to/watch/wdw7c2toex1u'),
(307, 3, 'Naruto Shippuden - Episódio 74', 'https://mystream.to/watch/vc885ipweruq'),
(308, 3, 'Naruto Shippuden - Episódio 75', 'https://mystream.to/watch/myn46vvh3x14'),
(309, 3, 'Naruto Shippuden - Episódio 76', 'https://mystream.to/watch/t0hbru48ngqj'),
(310, 3, 'Naruto Shippuden - Episódio 77', 'https://mystream.to/watch/himzqjpai3co'),
(311, 3, 'Naruto Shippuden - Episódio 78', 'https://mystream.to/watch/zbnld4ex5y03'),
(312, 3, 'Naruto Shippuden - Episódio 79', 'https://mystream.to/watch/x9ugyt20ulr8'),
(313, 3, 'Naruto Shippuden - Episódio 80', 'https://mystream.to/watch/jhdja3a8ozih'),
(314, 3, 'Naruto Shippuden - Episódio 81', 'https://mystream.to/watch/xg6717eohw67'),
(315, 3, 'Naruto Shippuden - Episódio 82', 'https://mystream.to/watch/wasv457homqa'),
(316, 3, 'Naruto Shippuden - Episódio 83', 'https://mystream.to/watch/ibxhqoewppq4'),
(317, 3, 'Naruto Shippuden - Episódio 84', 'https://mystream.to/watch/h8acnda4dagt'),
(318, 3, 'Naruto Shippuden - Episódio 85', 'https://mystream.to/watch/freot3gynp4p'),
(319, 3, 'Naruto Shippuden - Episódio 86', 'https://mystream.to/watch/dfbvsui4pojm'),
(320, 3, 'Naruto Shippuden - Episódio 87', 'https://mystream.to/watch/3x3h6juxxeub'),
(321, 3, 'Naruto Shippuden - Episódio 88', 'https://mystream.to/watch/3sh3j8g8f5f4'),
(322, 3, 'Naruto Shippuden - Episódio 89', 'https://mystream.to/watch/8ngfgy29s7ld'),
(323, 3, 'Naruto Shippuden - Episódio 90', 'https://mystream.to/watch/8s8daazh54yd'),
(324, 3, 'Naruto Shippuden - Episódio 91', 'https://mystream.to/watch/3v9wgmtonv7w'),
(325, 3, 'Naruto Shippuden - Episódio 92', 'https://mystream.to/watch/ayt9oo85gnxv'),
(326, 3, 'Naruto Shippuden - Episódio 93', 'https://mystream.to/watch/o0xxhhpt74dm'),
(327, 3, 'Naruto Shippuden - Episódio 94', 'https://mystream.to/watch/avqzsrccp2hn'),
(328, 3, 'Naruto Shippuden - Episódio 95', 'https://mystream.to/watch/5tekt3jkkej3'),
(329, 3, 'Naruto Shippuden - Episódio 96', 'https://mystream.to/watch/sof7zkolol45'),
(330, 3, 'Naruto Shippuden - Episódio 97', 'https://mystream.to/watch/q2x831nikf0x'),
(331, 3, 'Naruto Shippuden - Episódio 98', 'https://mystream.to/watch/nbog0r5um185'),
(332, 3, 'Naruto Shippuden - Episódio 99', 'https://mystream.to/watch/z41v3looqg5y'),
(333, 3, 'Naruto Shippuden - Episódio 100', 'https://mystream.to/watch/lw9qyxbvkdrz'),
(334, 3, 'Naruto Shippuden - Episódio 101', 'https://mystream.to/watch/b7811waj31qp'),
(335, 3, 'Naruto Shippuden - Episódio 102', 'https://mystream.to/watch/c6gq2bt052f5'),
(336, 3, 'Naruto Shippuden - Episódio 103', 'https://mystream.to/watch/5mx1akszbrh5'),
(337, 3, 'Naruto Shippuden - Episódio 104', 'https://mystream.to/watch/1s50o4o7gcx3'),
(338, 3, 'Naruto Shippuden - Episódio 105', 'https://mystream.to/watch/3k8jbciapthv'),
(339, 3, 'Naruto Shippuden - Episódio 106', 'https://mystream.to/watch/fn1h90dymbsa'),
(340, 3, 'Naruto Shippuden - Episódio 107', 'https://mystream.to/watch/6b8hjhkpct8p'),
(341, 3, 'Naruto Shippuden - Episódio 108', 'https://mystream.to/watch/toozgrtif3la'),
(342, 3, 'Naruto Shippuden - Episódio 109', 'https://mystream.to/watch/wzr3nnmay8gd'),
(343, 3, 'Naruto Shippuden - Episódio 110', 'https://mystream.to/watch/bag8zi9djoay'),
(344, 3, 'Naruto Shippuden - Episódio 111', 'https://mystream.to/watch/c01xs1kj7mj5'),
(345, 3, 'Naruto Shippuden - Episódio 112', 'https://mystream.to/watch/qia6wbaghbkq'),
(346, 2, 'Dragon Ball Super - Episódio 85', 'https://mystream.to/watch/q5lv48dnxvah'),
(347, 2, 'Dragon Ball Super - Episódio 86', 'https://mystream.to/watch/d37qpsmusrco'),
(348, 2, 'Dragon Ball Super - Episódio 87', 'https://mystream.to/watch/1x87yt1tl3j4'),
(349, 2, 'Dragon Ball Super - Episódio 88', 'https://mystream.to/watch/zv0rdery36eu'),
(350, 2, 'Dragon Ball Super - Episódio 89', 'https://mystream.to/watch/jv8pn2eeoiih'),
(351, 2, 'Dragon Ball Super - Episódio 90', 'https://mystream.to/watch/73eu5j45p9qw'),
(352, 2, 'Dragon Ball Super - Episódio 91', 'https://mystream.to/watch/novckjf1rucw'),
(353, 2, 'Dragon Ball Super - Episódio 92', 'https://mystream.to/watch/h0s0nxa7op9v'),
(354, 2, 'Dragon Ball Super - Episódio 93', 'https://mystream.to/watch/7vlaigaljypo'),
(355, 2, 'Dragon Ball Super - Episódio 94', 'https://mystream.to/watch/zk5xywezrn4h'),
(356, 2, 'Dragon Ball Super - Episódio 95', 'https://mystream.to/watch/y6xkfnx0qwjs'),
(357, 2, 'Dragon Ball Super - Episódio 96', 'https://mystream.to/watch/9cmtx6ztzfk4'),
(358, 2, 'Dragon Ball Super - Episódio 97', 'https://mystream.to/watch/0718viigscis'),
(359, 2, 'Dragon Ball Super - Episódio 98', 'https://mystream.to/watch/ne95bqnt870s'),
(360, 2, 'Dragon Ball Super - Episódio 99', 'https://mystream.to/watch/5z88nn9im2ml'),
(361, 2, 'Dragon Ball Super - Episódio 100', 'https://mystream.to/watch/bjje9ef5mdw8'),
(362, 2, 'Dragon Ball Super - Episódio 101', 'https://mystream.to/watch/1y16beuof6r6'),
(363, 2, 'Dragon Ball Super - Episódio 102', 'https://mystream.to/watch/gud5upoz3a7c'),
(364, 2, 'Dragon Ball Super - Episódio 103', 'https://mystream.to/watch/b94ajk7u7j7e'),
(365, 2, 'Dragon Ball Super - Episódio 104', 'https://mystream.to/watch/8rdam5mstl05'),
(366, 2, 'Dragon Ball Super - Episódio 105', 'https://mystream.to/watch/1lh5acfnaazn'),
(367, 2, 'Dragon Ball Super - Episódio 106', 'https://mystream.to/watch/wtrfio8gppa4'),
(368, 2, 'Dragon Ball Super - Episódio 107', 'https://mystream.to/watch/x9y0n5hjnpzj'),
(369, 2, 'Dragon Ball Super - Episódio 108', 'https://mystream.to/watch/m4bl2ho9doxk'),
(370, 2, 'Dragon Ball Super - Episódio 109', 'https://mystream.to/watch/ysn9tigyyo4m'),
(371, 2, 'Dragon Ball Super - Episódio 110', 'https://mystream.to/watch/hdqrulkik5sg'),
(372, 2, 'Dragon Ball Super - Episódio 111', 'https://mystream.to/watch/m6s1zd0sbin8'),
(373, 2, 'Dragon Ball Super - Episódio 112', 'https://mystream.to/watch/bh8hn3cp0csm'),
(374, 2, 'Dragon Ball Super - Episódio 113', 'https://mystream.to/watch/u7dy2h3g5ky8'),
(375, 2, 'Dragon Ball Super - Episódio 114', 'https://mystream.to/watch/fgejxw1f9sbr'),
(376, 2, 'Dragon Ball Super - Episódio 115', 'https://mystream.to/watch/kc8kh9x5yhty'),
(377, 2, 'Dragon Ball Super - Episódio 116', 'https://mystream.to/watch/0en078wq7cup'),
(378, 2, 'Dragon Ball Super - Episódio 117', 'https://mystream.to/watch/9kuld27173kx'),
(379, 2, 'Dragon Ball Super - Episódio 118', 'https://mystream.to/watch/o1o5d22r5eb9'),
(380, 2, 'Dragon Ball Super - Episódio 119', 'https://mystream.to/watch/t2znltv2z32s'),
(381, 2, 'Dragon Ball Super - Episódio 120', 'https://mystream.to/watch/7rlhklmx09vv'),
(382, 2, 'Dragon Ball Super - Episódio 121', 'https://mystream.to/watch/meti6om7qesl'),
(383, 2, 'Dragon Ball Super - Episódio 122', 'https://mystream.to/watch/mzyqmf74dxis'),
(384, 2, 'Dragon Ball Super - Episódio 123', 'https://mystream.to/watch/klqgy16udmdr'),
(385, 2, 'Dragon Ball Super - Episódio 124', 'https://mystream.to/watch/g0wsh3pvp26r'),
(386, 2, 'Dragon Ball Super - Episódio 125', 'https://mystream.to/watch/7rr92b1p9l6g'),
(387, 2, 'Dragon Ball Super - Episódio 126', 'https://mystream.to/watch/fxsjxb1xli85'),
(388, 2, 'Dragon Ball Super - Episódio 127', 'https://mystream.to/watch/kdnz6di2b2pz'),
(389, 2, 'Dragon Ball Super - Episódio 128', 'https://mystream.to/watch/nmd7tfyq7tyx'),
(390, 2, 'Dragon Ball Super - Episódio 129', 'https://mystream.to/watch/9qpsskhtcpaq'),
(391, 2, 'Dragon Ball Super - Episódio 130', 'https://mystream.to/watch/4b7j0k1jgmsf'),
(392, 2, 'Dragon Ball Super - Episódio 131', 'https://mystream.to/watch/t80ldbfblgl9'),
(393, 1, 'Naruto Clássico - Episódio 01', 'https://mystream.to/watch/j2lnncdv10hw'),
(394, 1, 'Naruto Clássico - Episódio 02', 'https://mystream.to/watch/316gy67kgiij'),
(395, 1, 'Naruto Clássico - Episódio 03', 'https://mystream.to/watch/ll4yvusrezk0'),
(396, 1, 'Naruto Clássico - Episódio 04', 'https://mystream.to/watch/bwjmib4ekd6x'),
(397, 1, 'Naruto Clássico - Episódio 05', 'https://mystream.to/watch/7s75s12kgmvi'),
(398, 1, 'Naruto Clássico - Episódio 06', 'https://mystream.to/watch/1j5sijbm6vkj'),
(399, 1, 'Naruto Clássico - Episódio 07', 'https://mystream.to/watch/1znqhzpwr3xv'),
(400, 1, 'Naruto Clássico - Episódio 08', 'https://mystream.to/watch/et1rtx8vhsg2'),
(401, 1, 'Naruto Clássico - Episódio 09', 'https://mystream.to/watch/j8c6u95ubhgw'),
(402, 1, 'Naruto Clássico - Episódio 10', 'https://mystream.to/watch/e7lce6sp5j8o'),
(403, 1, 'Naruto Clássico - Episódio 11', 'https://mystream.to/watch/6brkiqddlcl7'),
(404, 1, 'Naruto Clássico - Episódio 12', 'https://mystream.to/watch/eox6dy9kbbge'),
(405, 1, 'Naruto Clássico - Episódio 13', 'https://mystream.to/watch/sotuqkcp7766'),
(406, 1, 'Naruto Clássico - Episódio 14', 'https://mystream.to/watch/20ywhd987hrl'),
(407, 1, 'Naruto Clássico - Episódio 15', 'https://mystream.to/watch/y5vz27xnlb20'),
(408, 1, 'Naruto Clássico - Episódio 16', 'https://mystream.to/watch/8t4d7dvc02e9'),
(409, 1, 'Naruto Clássico - Episódio 17', 'https://mystream.to/watch/waed1arik4md'),
(410, 1, 'Naruto Clássico - Episódio 18', 'https://mystream.to/watch/1qpxzrv5e68z'),
(411, 1, 'Naruto Clássico - Episódio 19', 'https://mystream.to/watch/2aaomkivn6b8'),
(412, 1, 'Naruto Clássico - Episódio 20', 'https://mystream.to/watch/ryoswx45iccf'),
(413, 1, 'Naruto Clássico - Episódio 21', 'https://mystream.to/watch/y03o6pzuw89k'),
(414, 1, 'Naruto Clássico - Episódio 22', 'https://mystream.to/watch/mjsls135bmm3'),
(415, 1, 'Naruto Clássico - Episódio 23', 'https://mystream.to/watch/cne3kxpr9gpx'),
(416, 1, 'Naruto Clássico - Episódio 24', 'https://mystream.to/watch/g1k67mj3mfsw'),
(417, 1, 'Naruto Clássico - Episódio 25', 'https://mystream.to/watch/sajd8gqy9zk6'),
(418, 1, 'Naruto Clássico - Episódio 26', 'https://mystream.to/watch/a9vq9u423c68'),
(419, 1, 'Naruto Clássico - Episódio 27', 'https://mystream.to/watch/0e0txq6queev'),
(420, 1, 'Naruto Clássico - Episódio 28', 'https://mystream.to/watch/n11zpljhgok1'),
(421, 1, 'Naruto Clássico - Episódio 29', 'https://mystream.to/watch/hkhvr6l47vr4'),
(422, 1, 'Naruto Clássico - Episódio 30', 'https://mystream.to/watch/4hr9dseqe7y3'),
(423, 1, 'Naruto Clássico - Episódio 31', 'https://mystream.to/watch/tdqdlo32wl1p'),
(424, 1, 'Naruto Clássico - Episódio 32', 'https://mystream.to/watch/034o2wzeqeoo'),
(425, 1, 'Naruto Clássico - Episódio 33', 'https://mystream.to/watch/kimia53qqx1n'),
(426, 1, 'Naruto Clássico - Episódio 34', 'https://mystream.to/watch/luomuyphofbm'),
(427, 1, 'Naruto Clássico - Episódio 35', 'https://mystream.to/watch/o9nynwda4tc6'),
(428, 1, 'Naruto Clássico - Episódio 36', 'https://mystream.to/watch/a5405pp3miph'),
(429, 1, 'Naruto Clássico - Episódio 37', 'https://mystream.to/watch/jml38mk9sb8m'),
(430, 1, 'Naruto Clássico - Episódio 38', 'https://mystream.to/watch/oqbcdu668o4f'),
(431, 1, 'Naruto Clássico - Episódio 39', 'https://mystream.to/watch/cou3bme9ztt4'),
(432, 1, 'Naruto Clássico - Episódio 40', 'https://mystream.to/watch/yln0qqei18ky'),
(433, 1, 'Naruto Clássico - Episódio 41', 'https://mystream.to/watch/km97jpqcwd5t'),
(434, 1, 'Naruto Clássico - Episódio 42', 'https://mystream.to/watch/pvhyyou4stu3'),
(435, 1, 'Naruto Clássico - Episódio 43', 'https://mystream.to/watch/b4j9c4g624tb'),
(436, 1, 'Naruto Clássico - Episódio 44', 'https://mystream.to/watch/dosces6hx6s4'),
(437, 1, 'Naruto Clássico - Episódio 45', 'https://mystream.to/watch/3d0m0bzmxokm'),
(438, 1, 'Naruto Clássico - Episódio 46', 'https://mystream.to/watch/49rqzmptka21'),
(439, 1, 'Naruto Clássico - Episódio 47', 'https://mystream.to/watch/pufcxheb7338'),
(440, 1, 'Naruto Clássico - Episódio 48', 'https://mystream.to/watch/4eana9zyypjg'),
(441, 1, 'Naruto Clássico - Episódio 49', 'https://mystream.to/watch/k57tivs6e8jk'),
(442, 1, 'Naruto Clássico - Episódio 50', 'https://mystream.to/watch/4kjda4lovc6m'),
(443, 1, 'Naruto Clássico - Episódio 51', 'https://mystream.to/watch/h5l01h29ikfk'),
(444, 1, 'Naruto Clássico - Episódio 52', 'https://mystream.to/watch/rrdjkhuwz4cn'),
(445, 1, 'Naruto Clássico - Episódio 53', 'https://mystream.to/watch/qh262dwyaphk'),
(446, 1, 'Naruto Clássico - Episódio 54', 'https://mystream.to/watch/25jvlcwpjyl7'),
(447, 1, 'Naruto Clássico - Episódio 55', 'https://mystream.to/watch/92wkor67yrou'),
(448, 1, 'Naruto Clássico - Episódio 56', 'https://mystream.to/watch/josvoes2iiua'),
(449, 1, 'Naruto Clássico - Episódio 57', 'https://mystream.to/watch/h2bd3omwlp5b'),
(450, 1, 'Naruto Clássico - Episódio 58', 'https://mystream.to/watch/8gwiebvx3zh8'),
(451, 1, 'Naruto Clássico - Episódio 59', 'https://mystream.to/watch/t73g8xbuvt8j'),
(452, 1, 'Naruto Clássico - Episódio 60', 'https://mystream.to/watch/4h3sfq5pijre'),
(453, 1, 'Naruto Clássico - Episódio 61', 'https://mystream.to/watch/qws5qmo3gt6h'),
(454, 1, 'Naruto Clássico - Episódio 62', 'https://mystream.to/watch/vlf2a188qbvo'),
(455, 1, 'Naruto Clássico - Episódio 63', 'https://mystream.to/watch/zl9yh5v1jtai'),
(456, 1, 'Naruto Clássico - Episódio 64', 'https://mystream.to/watch/sg2etwce0reh'),
(457, 1, 'Naruto Clássico - Episódio 65', 'https://mystream.to/watch/xs9lktiv5mr0'),
(458, 1, 'Naruto Clássico - Episódio 66', 'https://mystream.to/watch/tip12eo35sqc'),
(459, 1, 'Naruto Clássico - Episódio 67', 'https://mystream.to/watch/thf625bet4gg'),
(460, 1, 'Naruto Clássico - Episódio 68', 'https://mystream.to/watch/nid4n3rpt268'),
(461, 1, 'Naruto Clássico - Episódio 69', 'https://mystream.to/watch/tqxrrrbpg28h'),
(462, 1, 'Naruto Clássico - Episódio 70', 'https://mystream.to/watch/sjz6w01j8m0u'),
(463, 1, 'Naruto Clássico - Episódio 71', 'https://mystream.to/watch/q98kf273lk63'),
(464, 1, 'Naruto Clássico - Episódio 72', 'https://mystream.to/watch/hihb0fqryqaz'),
(465, 1, 'Naruto Clássico - Episódio 73', 'https://mystream.to/watch/yufn4yirhyxq'),
(466, 1, 'Naruto Clássico - Episódio 74', 'https://mystream.to/watch/1ct1eha959ag'),
(467, 1, 'Naruto Clássico - Episódio 75', 'https://mystream.to/watch/laqhrvdblb76');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `id_ep_anime` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `favoritos`
--

INSERT INTO `favoritos` (`id`, `id_ep_anime`, `id_usuario`) VALUES
(2, 7, 4),
(4, 8, 5),
(5, 12, 5),
(6, 4, 4),
(8, 15, 4),
(9, 10, 4),
(10, 4, 5),
(11, 7, 5),
(12, 21, 5),
(13, 9, 5),
(15, 59, 4),
(16, 44, 4),
(17, 109, 4),
(25, 156, 4),
(26, 9, 7),
(27, 202, 7),
(36, 166, 4),
(37, 165, 1),
(38, 202, 10),
(39, 234, 10),
(40, 155, 13),
(42, 138, 13),
(43, 202, 15),
(44, 393, 15),
(45, 394, 15),
(46, 399, 17),
(47, 393, 19),
(48, 203, 1),
(49, 205, 1),
(50, 138, 1),
(54, 16, 1),
(55, 159, 1),
(56, 401, 23),
(57, 402, 23),
(58, 206, 1),
(59, 204, 1),
(60, 202, 1),
(61, 33, 1),
(62, 205, 24);

-- --------------------------------------------------------

--
-- Estrutura da tabela `opinioes`
--

CREATE TABLE `opinioes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mensagem` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `opinioes`
--

INSERT INTO `opinioes` (`id`, `nome`, `email`, `mensagem`) VALUES
(1, 'Rodrigo', 'rr@gmail', 'Ola Mundo!!!!!!!!!!!'),
(2, 'rtrtr', 'flawyovidal492@gmail.com', 'sdhbdghgdhdthtsdehdhdjhdsejhhhdshsdhtdeh'),
(3, 'Flavio', 'ff@gmail.com', 'Gostei do Site!!!!'),
(4, 'Flavio', 'ff@gmail.com', 'Site top d++');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `icone` varchar(255) NOT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `icone`, `senha`) VALUES
(1, 'flavio', 'ff@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'Flávio', 'fgfg@hotmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'livinha', 'l@l', '', '202cb962ac59075b964b07152d234b70'),
(4, 'Rodrigo', 'rr@gmail', '', '202cb962ac59075b964b07152d234b70'),
(5, 'Santos', 'ss@gmail', '', '202cb962ac59075b964b07152d234b70'),
(6, 'caio', 'c@a', '', '698d51a19d8a121ce581499d7b701668'),
(7, 'Silveira', 'silveira@gmail.com', '', '202cb962ac59075b964b07152d234b70'),
(8, 'lucas', 'lucas@hotmail.com', '', '202cb962ac59075b964b07152d234b70'),
(9, 'Ste', 'ste@gmail.com', '', '202cb962ac59075b964b07152d234b70'),
(10, 'Clayton', 'c@g', '', '202cb962ac59075b964b07152d234b70'),
(11, 'm', 'm@gmail.com', '', '202cb962ac59075b964b07152d234b70'),
(12, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(13, 'Flavio RSS', 'flavio@gmail.com', '', '72dc3308031edeb195bf292c0a8239de'),
(14, 'Rafael', 'r@gmail.com', '', '35cd2d0d62d9bc5e60a3ca9f7593b05b'),
(15, 'fimose', 'edio@edio', '', '13201a84b9b84970c479b3cae24cc0c3'),
(16, 'nay', 'nay@gmail.com', '', '79d3f42ed60bb21b8cbf1b9da8dd82d7'),
(17, 'Felipe', 'filipe@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b'),
(18, 'Mikaele', 'mikaele@gmail.com', '', '202cb962ac59075b964b07152d234b70'),
(19, 'gabriela', 'gabibibiana@gmail.com', '', 'ba8f3385d13f0bda22b82908092f5963'),
(20, 'Nayanne', 'nay@gg', '', '202cb962ac59075b964b07152d234b70'),
(21, 'chico', 'c@c', '', '202cb962ac59075b964b07152d234b70'),
(22, 'edio', 'fi@mose', '', '13201a84b9b84970c479b3cae24cc0c3'),
(23, 'flavio++', 'fr@g', '', '202cb962ac59075b964b07152d234b70'),
(24, 'olavio', 'olavio@gmail.com', '', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_anime` (`id_anime`);

--
-- Indexes for table `ep_anime`
--
ALTER TABLE `ep_anime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anime` (`id_anime`);

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ep_anime` (`id_ep_anime`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `opinioes`
--
ALTER TABLE `opinioes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animes`
--
ALTER TABLE `animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ep_anime`
--
ALTER TABLE `ep_anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `opinioes`
--
ALTER TABLE `opinioes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_anime`) REFERENCES `animes` (`id`);

--
-- Limitadores para a tabela `ep_anime`
--
ALTER TABLE `ep_anime`
  ADD CONSTRAINT `ep_anime_ibfk_1` FOREIGN KEY (`id_anime`) REFERENCES `animes` (`id`);

--
-- Limitadores para a tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`id_ep_anime`) REFERENCES `ep_anime` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
