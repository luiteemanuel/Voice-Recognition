-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/08/2023 às 21:43
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `voice`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `registros`
--

CREATE TABLE `registros` (
  `id` int(10) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `dt_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `registros`
--

INSERT INTO `registros` (`id`, `texto`, `dt_registro`) VALUES
(5, 'WhatsApp, YouTube.', '2023-08-16 20:10:15'),
(6, 'Vamos l&aacute;, est&aacute; testando beleza.', '2023-08-16 20:11:17'),
(7, 'Fala Jo&atilde;o. Beleza, cara, &eacute; meu nome &eacute; Luigi, estou aqui testando isso aqui. Acho que vai ficar registrado aqui no banco de dados. Bora ver?', '2023-08-16 20:12:26'),
(8, 'Vamos testar agora, ver se ele vai entender mais devagar, n&atilde;o &eacute;? &Eacute; meu nome, &eacute; Lu e te exatamente agora ele est&aacute; testando mais tranquilo, tranquilo, n&atilde;o t&aacute; matando o processo. Eu consigo falar melhor show d', '2023-08-16 20:15:54'),
(9, '', '2023-08-16 20:43:00'),
(10, 'Fala Jo&atilde;o, beleza, meu nome &eacute; eu, it, eu estou enviando este e-mail atrav&eacute;s da PE de voz recognition, que eu criei. Respondendo sua pergunta o por que eu me interessei na vaga foi que a elastix parece uma empresa inovadora, que pode c', '2023-08-16 20:56:59'),
(11, 'Fala Jo&atilde;o, beleza, cara, meu nome &eacute; Lu&iacute;s. Estou te enviando um e-mail atrav&eacute;s de API recognition que eu criei. &Eacute; respondendo sua pergunta do que? Por que me interessei na vaga? Foi devido &agrave; baixa, parecia uma empr', '2023-08-16 21:42:39'),
(12, 'Fala Jo&atilde;o, beleza, cara, meu nome &eacute; Lu&iacute;s. Estou te enviando um e-mail atrav&eacute;s de API recognition que eu criei. &Eacute; respondendo sua pergunta do que? Por que me interessei na vaga? Foi devido &agrave; baixa, parecia uma empr', '2023-08-16 21:42:44');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
