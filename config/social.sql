-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Aug 2024 um 19:48
-- Server-Version: 10.4.17-MariaDB
-- PHP-Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `social`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(255) NOT NULL,
  `user_from` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) DEFAULT NULL,
  `user_from` varchar(50) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `viewed` varchar(100) DEFAULT NULL,
  `opened` varchar(50) DEFAULT NULL,
  `unknow` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `viewed`, `opened`, `unknow`) VALUES
(2, 'test', 'test', 'hmmm', '2024-08-15 19:47:30', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) DEFAULT NULL,
  `userLoggedIn` varchar(50) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL,
  `viewed` varchar(10) DEFAULT NULL,
  `opened` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL,
  `user_to` varchar(50) DEFAULT NULL,
  `date_added` varchar(50) DEFAULT NULL,
  `deleted` varchar(50) DEFAULT NULL,
  `unknow` varchar(100) DEFAULT NULL,
  `likes` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `deleted`, `unknow`, `likes`, `image`) VALUES
(2, 'hmm', 'test', 'none', '2024-08-15 14:51:07', 'no', 'no', '0', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `trends`
--

INSERT INTO `trends` (`id`, `title`, `hits`) VALUES
(1, 'Hmm', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `num_posts` varchar(100) DEFAULT NULL,
  `num_likes` varchar(100) DEFAULT NULL,
  `user_closed` varchar(50) DEFAULT NULL,
  `friend_array` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Test', 'User', 'test@test.loc', 'test', '098f6bcd4621d373cade4e832627b4f6', '2017-02-02', 'assets/images/profile_pics/defaults/head_deep_blue.png', '1', '0', 'no', ',Test2,'),
(4, 'Test', 'User', 'test2@test.loc', 'Test2', '098f6bcd4621d373cade4e832627b4f6', '2017-02-02', 'assets/images/profile_pics/defaults/head_deep_blue.png', '0', '0', 'no', ',test,');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
