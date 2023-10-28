-- Exercício 4 ( João Rodrigo | CET-8493 | UFCD-5410 )

-- Criação da base de dados cinemas

CREATE DATABASE cinemas;
USE cinemas;

-- Criação das tabelas

CREATE TABLE `diretor` (
  `idDiretor` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
);

CREATE TABLE `filme` (
  `idfilme` int(11) NOT NULL,
  `nomeBR` varchar(45) DEFAULT NULL,
  `nomeEN` varchar(45) DEFAULT NULL,
  `anoLancamento` int(11) DEFAULT NULL,
  `diretor_idDiretor` int(11) DEFAULT NULL,
  `sinopse` text DEFAULT NULL,
  `genero_idgenero` int(11) DEFAULT NULL
);

CREATE TABLE `filme_exibido_sala` (
  `filme_idfilme` int(11) NOT NULL,
  `sala_idSala` int(11) NOT NULL,
  `horario_idhorario` int(11) NOT NULL
);

CREATE TABLE `filme_has_premiacao` (
  `filme_idfilme` int(11) NOT NULL,
  `premiacao_idpremiacao` int(11) NOT NULL,
  `ganhou` tinyint(1) DEFAULT NULL
);

CREATE TABLE `funcao` (
  `idfuncao` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
);

CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `carteiraTrabalho` int(11) DEFAULT NULL,
  `dataContracao` date DEFAULT NULL,
  `salario` float DEFAULT NULL
);

CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
);

CREATE TABLE `horario` (
  `idhorario` int(11) NOT NULL,
  `horario` time DEFAULT NULL
);

CREATE TABLE `horario_trabalho_funcionario` (
  `horario_idhorario` int(11) NOT NULL,
  `funcionario_idfuncionario` int(11) NOT NULL,
  `funcao_idfuncao` int(11) DEFAULT NULL
);

CREATE TABLE `premiacao` (
  `idpremiacao` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
);

CREATE TABLE `sala` (
  `idSala` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `capacidade` int(11) DEFAULT NULL
);

-- Chaves das tabelas

ALTER TABLE `diretor`
  ADD PRIMARY KEY (`idDiretor`);

ALTER TABLE `filme`
  ADD PRIMARY KEY (`idfilme`),
  ADD KEY `diretor_idDiretor` (`diretor_idDiretor`),
  ADD KEY `genero_idgenero` (`genero_idgenero`);

ALTER TABLE `filme_exibido_sala`
  ADD PRIMARY KEY (`filme_idfilme`,`sala_idSala`,`horario_idhorario`),
  ADD KEY `horario_idhorario` (`horario_idhorario`),
  ADD KEY `sala_idSala` (`sala_idSala`);

ALTER TABLE `filme_has_premiacao`
  ADD PRIMARY KEY (`filme_idfilme`,`premiacao_idpremiacao`),
  ADD KEY `premiacao_idpremiacao` (`premiacao_idpremiacao`);

ALTER TABLE `funcao`
  ADD PRIMARY KEY (`idfuncao`);

ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idfuncionario`);

ALTER TABLE `genero`
  ADD PRIMARY KEY (`idgenero`);

ALTER TABLE `horario`
  ADD PRIMARY KEY (`idhorario`);

ALTER TABLE `horario_trabalho_funcionario`
  ADD PRIMARY KEY (`horario_idhorario`,`funcionario_idfuncionario`),
  ADD KEY `funcionario_idfuncionario` (`funcionario_idfuncionario`),
  ADD KEY `funcao_idfuncao` (`funcao_idfuncao`);

ALTER TABLE `premiacao`
  ADD PRIMARY KEY (`idpremiacao`);

ALTER TABLE `sala`
  ADD PRIMARY KEY (`idSala`);

ALTER TABLE `filme`
  ADD CONSTRAINT `filme_ibfk_1` FOREIGN KEY (`diretor_idDiretor`) REFERENCES `diretor` (`idDiretor`),
  ADD CONSTRAINT `filme_ibfk_2` FOREIGN KEY (`genero_idgenero`) REFERENCES `genero` (`idgenero`);

ALTER TABLE `filme_exibido_sala`
  ADD CONSTRAINT `filme_exibido_sala_ibfk_1` FOREIGN KEY (`horario_idhorario`) REFERENCES `horario` (`idhorario`),
  ADD CONSTRAINT `filme_exibido_sala_ibfk_2` FOREIGN KEY (`sala_idSala`) REFERENCES `sala` (`idSala`),
  ADD CONSTRAINT `filme_exibido_sala_ibfk_3` FOREIGN KEY (`filme_idfilme`) REFERENCES `filme` (`idfilme`);

ALTER TABLE `filme_has_premiacao`
  ADD CONSTRAINT `filme_has_premiacao_ibfk_1` FOREIGN KEY (`filme_idfilme`) REFERENCES `filme` (`idfilme`),
  ADD CONSTRAINT `filme_has_premiacao_ibfk_2` FOREIGN KEY (`premiacao_idpremiacao`) REFERENCES `premiacao` (`idpremiacao`);

ALTER TABLE `horario_trabalho_funcionario`
  ADD CONSTRAINT `horario_trabalho_funcionario_ibfk_1` FOREIGN KEY (`horario_idhorario`) REFERENCES `horario` (`idhorario`),
  ADD CONSTRAINT `horario_trabalho_funcionario_ibfk_2` FOREIGN KEY (`funcionario_idfuncionario`) REFERENCES `funcionario` (`idfuncionario`),
  ADD CONSTRAINT `horario_trabalho_funcionario_ibfk_3` FOREIGN KEY (`funcao_idfuncao`) REFERENCES `funcao` (`idfuncao`);