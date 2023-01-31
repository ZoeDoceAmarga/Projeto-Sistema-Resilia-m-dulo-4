-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Jan-2023 às 03:00
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `resilia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `cpf` int(11) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `endereco` varchar(180) DEFAULT NULL,
  `notas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`cpf`, `matricula`, `nome`, `telefone`, `endereco`, `notas`) VALUES
(111111, '255586585', 'Lucas Lumiar', '(21)98575-6577', 'rua abrolhos,555, santo cristo-RJ', 8),
(222222, '687241987', 'Ana Gabriela', '(21)92447-9887', 'rua banana split,777, piedade-RJ', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nome_do_curso` varchar(45) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idCurso`, `nome_do_curso`, `descricao`, `carga_horaria`) VALUES
(1, 'Analise e desenvolvimento de sistema', 'e uma area responsavel por analisar, desenvolver, analisar, projetar, implementar e atualizar sistemas de informacao', 2200),
(2, 'medicina', 'A medicina trabalha com a manutencao e a restauracao da sa?de.', 7200);

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `carga_horaria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `materia`
--

INSERT INTO `materia` (`id_materia`, `nome`, `carga_horaria`) VALUES
(354, 'Programacao Orientada a Objetos', '108'),
(897, 'Direito Cibernetico', '46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `cpf_professor` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero_de_turmas` varchar(100) DEFAULT NULL,
  `numero_de_matricula` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`cpf_professor`, `nome`, `telefone`, `endereco`, `numero_de_turmas`, `numero_de_matricula`) VALUES
(44444411, 'Samanta da Silva', '(22)8987-8787', 'rua m, 88, bairo r -RJ', '2', '56485778'),
(55555511, 'Jose Carlos', '(21)8888-4444', 'rua x,111 , bairro y -RJ', '3', '658587455');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `idTurma` int(11) NOT NULL,
  `sala` varchar(45) DEFAULT NULL,
  `quantidade_de_alunos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`idTurma`, `sala`, `quantidade_de_alunos`) VALUES
(1768, 'sala 10', '21'),
(1878, 'sala 101', '25');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Índices para tabela `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`cpf_professor`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`idTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
