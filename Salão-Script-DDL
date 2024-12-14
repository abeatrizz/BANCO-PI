-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema salão
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema salão
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `salão` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `salão` ;

-- -----------------------------------------------------
-- Table `salão`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Usuario` (
  `Id_Usuario` INT NOT NULL AUTO_INCREMENT,
  `Email` VARCHAR(255) NOT NULL,
  `Senha` VARCHAR(255) NOT NULL,
  `Tipo_Usuario` ENUM('Cliente', 'Funcionário') NOT NULL,
  PRIMARY KEY (`Id_Usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Cliente` (
  `Id_Usuario` INT NOT NULL,
  `CPF` VARCHAR(14) NOT NULL,
  `Telefone` VARCHAR(15) NULL DEFAULT NULL,
  `Nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE INDEX `CPF` (`CPF` ASC) VISIBLE,
  INDEX `fk_Cliente_Usuario1_idx` (`Id_Usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Usuario1`
    FOREIGN KEY (`Id_Usuario`)
    REFERENCES `salão`.`Usuario` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Funcionario` (
  `Id_Usuario` INT NOT NULL,
  `Matricula` VARCHAR(50) NOT NULL,
  `Funcao` VARCHAR(100) NOT NULL,
  `Disponibilidade` TEXT NOT NULL,
  `Nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE INDEX `Matricula` (`Matricula` ASC) VISIBLE,
  INDEX `fk_Funcionario_Usuario1_idx` (`Id_Usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_Usuario1`
    FOREIGN KEY (`Id_Usuario`)
    REFERENCES `salão`.`Usuario` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Agendamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Agendamento` (
  `Id_Agendamento` INT NOT NULL AUTO_INCREMENT,
  `Data` DATE NOT NULL,
  `Hora` TIME NOT NULL,
  `Id_Cliente` INT NOT NULL,
  `Id_Funcionario` INT NOT NULL,
  PRIMARY KEY (`Id_Agendamento`),
  INDEX `fk_Agendamento_Cliente1_idx` (`Id_Cliente` ASC) VISIBLE,
  INDEX `fk_Agendamento_Funcionario1_idx` (`Id_Funcionario` ASC) VISIBLE,
  CONSTRAINT `fk_Agendamento_Cliente1`
    FOREIGN KEY (`Id_Cliente`)
    REFERENCES `salão`.`Cliente` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Agendamento_Funcionario1`
    FOREIGN KEY (`Id_Funcionario`)
    REFERENCES `salão`.`Funcionario` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Categoria` (
  `Id_Categoria` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Id_Categoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Servico` (
  `Id_Servico` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NOT NULL,
  `Descricao` TEXT NULL DEFAULT NULL,
  `Preco` DECIMAL(10,2) NOT NULL,
  `Duracao` INT NOT NULL,
  `Qtd_Profissionais` INT NOT NULL,
  `Disponibilidade` VARCHAR(255) NOT NULL,
  `Id_Categoria` INT NOT NULL,
  PRIMARY KEY (`Id_Servico`),
  INDEX `Id_Categoria` (`Id_Categoria` ASC) VISIBLE,
  CONSTRAINT `servico_ibfk_1`
    FOREIGN KEY (`Id_Categoria`)
    REFERENCES `salão`.`Categoria` (`Id_Categoria`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Atendimento` (
  `Id_Atendimento` INT NOT NULL AUTO_INCREMENT,
  `Id_Agendamento` INT NOT NULL,
  `Id_Servico` INT NOT NULL,
  `TempoGasto` INT NOT NULL,
  `ProdutosUtilizados` TEXT NOT NULL,
  PRIMARY KEY (`Id_Atendimento`),
  INDEX `Id_Servico` (`Id_Servico` ASC) VISIBLE,
  INDEX `fk_atendimento_Agendamento1_idx` (`Id_Agendamento` ASC) VISIBLE,
  CONSTRAINT `atendimento_ibfk_2`
    FOREIGN KEY (`Id_Servico`)
    REFERENCES `salão`.`Servico` (`Id_Servico`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_atendimento_Agendamento1`
    FOREIGN KEY (`Id_Agendamento`)
    REFERENCES `salão`.`Agendamento` (`Id_Agendamento`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Fornecedor` (
  `Id_Fornecedor` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Id_Fornecedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Equipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Equipamento` (
  `Id_Equipamento` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NOT NULL,
  `Id_Fornecedor` INT NOT NULL,
  PRIMARY KEY (`Id_Equipamento`, `Id_Fornecedor`),
  INDEX `fk_equipamento_fornecedor1_idx` (`Id_Fornecedor` ASC) VISIBLE,
  CONSTRAINT `fk_equipamento_fornecedor1`
    FOREIGN KEY (`Id_Fornecedor`)
    REFERENCES `salão`.`Fornecedor` (`Id_Fornecedor`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Feedback`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Feedback` (
  `Id_Feedback` INT NOT NULL AUTO_INCREMENT,
  `Descricao` TEXT NULL DEFAULT NULL,
  `Classificacao` INT NULL DEFAULT NULL,
  `Selo_Cortesia` ENUM('Sim', 'Não') NOT NULL,
  `Selo_Limpeza` ENUM('Sim', 'Não') NOT NULL,
  `Selo_Eficiencia` ENUM('Sim', 'Não') NOT NULL,
  `Selo_Satisfacao` ENUM('Sim', 'Não') NOT NULL,
  `Selo_Orientacao` ENUM('Sim', 'Não') NOT NULL,
  `Id_Atendimento` INT NOT NULL,
  PRIMARY KEY (`Id_Feedback`),
  INDEX `Id_Atendimento` (`Id_Atendimento` ASC) VISIBLE,
  CONSTRAINT `feedback_ibfk_1`
    FOREIGN KEY (`Id_Atendimento`)
    REFERENCES `salão`.`Atendimento` (`Id_Atendimento`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Horario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Horario` (
  `Id_Horario` INT NOT NULL AUTO_INCREMENT,
  `DiaSemana` VARCHAR(20) NOT NULL,
  `HoraInicio` TIME NOT NULL,
  `HoraFim` TIME NOT NULL,
  PRIMARY KEY (`Id_Horario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Funcionario_Horario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Funcionario_Horario` (
  `Id_Horario` INT NOT NULL,
  `Id_Usuario` INT NOT NULL,
  PRIMARY KEY (`Id_Horario`, `Id_Usuario`),
  INDEX `Id_Horario` (`Id_Horario` ASC) VISIBLE,
  INDEX `fk_Funcionario_Horario_Funcionario1_idx` (`Id_Usuario` ASC) VISIBLE,
  CONSTRAINT `funcionario_horario_ibfk_2`
    FOREIGN KEY (`Id_Horario`)
    REFERENCES `salão`.`Horario` (`Id_Horario`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_Funcionario_Horario_Funcionario1`
    FOREIGN KEY (`Id_Usuario`)
    REFERENCES `salão`.`Funcionario` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Notificacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Notificacao` (
  `Id_Notificacao` INT NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(50) NOT NULL,
  `Descricao` TEXT NOT NULL,
  `DataEnvio` DATETIME NOT NULL,
  `Status` ENUM('Enviada', 'Lida') NOT NULL,
  `Id_Cliente` INT NOT NULL,
  PRIMARY KEY (`Id_Notificacao`),
  INDEX `fk_Notificacao_Cliente1_idx` (`Id_Cliente` ASC) VISIBLE,
  CONSTRAINT `fk_Notificacao_Cliente1`
    FOREIGN KEY (`Id_Cliente`)
    REFERENCES `salão`.`Cliente` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Pagamento` (
  `Id_Pagamento` INT NOT NULL AUTO_INCREMENT,
  `Valor` DECIMAL(10,2) NOT NULL,
  `Metodo_Pag` VARCHAR(50) NOT NULL,
  `Data` DATE NOT NULL,
  `Id_Cliente` INT NOT NULL,
  PRIMARY KEY (`Id_Pagamento`),
  INDEX `fk_Pagamento_Cliente1_idx` (`Id_Cliente` ASC) VISIBLE,
  CONSTRAINT `fk_Pagamento_Cliente1`
    FOREIGN KEY (`Id_Cliente`)
    REFERENCES `salão`.`Cliente` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Produto` (
  `Id_Produto` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NOT NULL,
  `Valor` DECIMAL(10,2) NOT NULL,
  `Qtd_Estoque` INT NOT NULL,
  `Id_Fornecedor` INT NOT NULL,
  PRIMARY KEY (`Id_Produto`, `Id_Fornecedor`),
  INDEX `fk_produto_fornecedor1_idx` (`Id_Fornecedor` ASC) VISIBLE,
  CONSTRAINT `fk_produto_fornecedor1`
    FOREIGN KEY (`Id_Fornecedor`)
    REFERENCES `salão`.`Fornecedor` (`Id_Fornecedor`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Produto_Atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Produto_Atendimento` (
  `Id_Atendimento` INT NOT NULL,
  `Id_Produto` INT NOT NULL,
  PRIMARY KEY (`Id_Atendimento`, `Id_Produto`),
  INDEX `Id_Produto` (`Id_Produto` ASC) VISIBLE,
  CONSTRAINT `produto_atendimento_ibfk_1`
    FOREIGN KEY (`Id_Atendimento`)
    REFERENCES `salão`.`Atendimento` (`Id_Atendimento`)
    ON DELETE CASCADE,
  CONSTRAINT `produto_atendimento_ibfk_2`
    FOREIGN KEY (`Id_Produto`)
    REFERENCES `salão`.`Produto` (`Id_Produto`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Servico_Equipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Servico_Equipamento` (
  `Id_Servico` INT NOT NULL,
  `Id_Equipamento` INT NOT NULL,
  PRIMARY KEY (`Id_Servico`, `Id_Equipamento`),
  INDEX `Id_Equipamento` (`Id_Equipamento` ASC) VISIBLE,
  CONSTRAINT `servico_equipamento_ibfk_1`
    FOREIGN KEY (`Id_Servico`)
    REFERENCES `salão`.`Servico` (`Id_Servico`)
    ON DELETE CASCADE,
  CONSTRAINT `servico_equipamento_ibfk_2`
    FOREIGN KEY (`Id_Equipamento`)
    REFERENCES `salão`.`Equipamento` (`Id_Equipamento`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Servico_Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Servico_Produto` (
  `Id_Servico` INT NOT NULL,
  `Id_Produto` INT NOT NULL,
  PRIMARY KEY (`Id_Servico`, `Id_Produto`),
  INDEX `Id_Produto` (`Id_Produto` ASC) VISIBLE,
  CONSTRAINT `servico_produto_ibfk_1`
    FOREIGN KEY (`Id_Servico`)
    REFERENCES `salão`.`Servico` (`Id_Servico`)
    ON DELETE CASCADE,
  CONSTRAINT `servico_produto_ibfk_2`
    FOREIGN KEY (`Id_Produto`)
    REFERENCES `salão`.`Produto` (`Id_Produto`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salão`.`Funcionario_Servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salão`.`Funcionario_Servico` (
  `Id_Funcionario` INT NOT NULL,
  `Id_Servico` INT NOT NULL,
  PRIMARY KEY (`Id_Funcionario`, `Id_Servico`),
  INDEX `fk_Funcionario_Servico_Servico1_idx` (`Id_Servico` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_Servico_Funcionario1`
    FOREIGN KEY (`Id_Funcionario`)
    REFERENCES `salão`.`Funcionario` (`Id_Usuario`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Funcionario_Servico_Servico1`
    FOREIGN KEY (`Id_Servico`)
    REFERENCES `salão`.`Servico` (`Id_Servico`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
