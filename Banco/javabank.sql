-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Set-2017 às 01:03
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javabank`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `Numero` bigint(20) UNSIGNED NOT NULL,
  `Primeiro_Corr` varchar(12) NOT NULL,
  `Segundo_Corr` varchar(12) DEFAULT NULL,
  `Terceiro_Corr` varchar(12) DEFAULT NULL,
  `Saldo` double NOT NULL,
  `Limite` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`Numero`, `Primeiro_Corr`, `Segundo_Corr`, `Terceiro_Corr`, `Saldo`, `Limite`) VALUES
(1, '12345678951', '45678912321', '78945612312', 154, 2000),
(2, '45678912321', '12345678951', '45698712365', 500, 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `correntista`
--

CREATE TABLE `correntista` (
  `CPF` varchar(12) NOT NULL,
  `Nome` varchar(35) NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  `Senha` varchar(10) NOT NULL,
  `Email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `correntista`
--

INSERT INTO `correntista` (`CPF`, `Nome`, `Endereco`, `Senha`, `Email`) VALUES
('12345678951', 'Victor Rodrigues da Silva', 'Rua x', '123', 'vitor1908@gmail.com'),
('45612301232', 'Isabela', 'Rua B', '123', 'isabela@gmail.com'),
('45678912321', 'Edson Valdir', 'Rua A', '123456789', 'edson@gmail.com'),
('45698712345', 'Valdirene', 'Rua A', '12', 'valÂ²hotmail.com'),
('45698712365', 'Lucas', 'Rua 10', '123', 'l@gmail.com'),
('78945612312', 'Leandro', 'Rua y', '123', 'leandro@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `Codigo` bigint(20) UNSIGNED NOT NULL,
  `Nome` varchar(35) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Senha` varchar(10) NOT NULL,
  `Funcao` enum('GERENTE','CAIXA','ATENDENTE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`Codigo`, `Nome`, `Email`, `Senha`, `Funcao`) VALUES
(1, 'José Borges', 'jsborges@gmail.com', '123456', 'GERENTE'),
(2, 'João', 'jp@gmail.com', '456', 'GERENTE'),
(3, 'Gilberto', 'gl@gmail.com', '123', 'ATENDENTE'),
(4, 'Lourdes', 'lourdes@gmail.com', '123456', 'GERENTE'),
(5, 'Ana', 'a@hotmail.com', '456', 'ATENDENTE'),
(6, 'Kiara', 'k@gmail.com', '123456', 'CAIXA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacao`
--

CREATE TABLE `transacao` (
  `Codigo` bigint(20) UNSIGNED NOT NULL,
  `Tipo` enum('deposito','saque','pagto','transf') NOT NULL,
  `Nro_Conta` bigint(20) UNSIGNED NOT NULL,
  `Nro_Conta_Transf` bigint(20) UNSIGNED DEFAULT NULL,
  `Valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`Numero`),
  ADD KEY `Primeiro_Corr` (`Primeiro_Corr`),
  ADD KEY `Segundo_Corr` (`Segundo_Corr`),
  ADD KEY `Terceiro_Corr` (`Terceiro_Corr`);

--
-- Indexes for table `correntista`
--
ALTER TABLE `correntista`
  ADD PRIMARY KEY (`CPF`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `transacao`
--
ALTER TABLE `transacao`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Nro_Conta` (`Nro_Conta`),
  ADD KEY `Nro_Conta_Transf` (`Nro_Conta_Transf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conta`
--
ALTER TABLE `conta`
  MODIFY `Numero` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `Codigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transacao`
--
ALTER TABLE `transacao`
  MODIFY `Codigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `CONTA_ibfk_1` FOREIGN KEY (`Primeiro_Corr`) REFERENCES `correntista` (`CPF`) ON UPDATE CASCADE,
  ADD CONSTRAINT `CONTA_ibfk_2` FOREIGN KEY (`Segundo_Corr`) REFERENCES `correntista` (`CPF`) ON UPDATE CASCADE,
  ADD CONSTRAINT `CONTA_ibfk_3` FOREIGN KEY (`Terceiro_Corr`) REFERENCES `correntista` (`CPF`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `transacao`
--
ALTER TABLE `transacao`
  ADD CONSTRAINT `TRANSACAO_ibfk_1` FOREIGN KEY (`Nro_Conta`) REFERENCES `conta` (`Numero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TRANSACAO_ibfk_2` FOREIGN KEY (`Nro_Conta_Transf`) REFERENCES `conta` (`Numero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
