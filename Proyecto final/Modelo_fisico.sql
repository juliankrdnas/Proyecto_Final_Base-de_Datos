-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema constructora
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema constructora
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `constructora` DEFAULT CHARACTER SET utf8 ;
USE `constructora` ;

-- -----------------------------------------------------
-- Table `constructora`.`Sitios_construccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Sitios_construccion` (
  `idSitios_construccion` INT NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Ubicación` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`idSitios_construccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `constructora`.`Planos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Planos` (
  `Codigo_ID` INT NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Escala` VARCHAR(20) NOT NULL,
  `Fecha_realizacion` DATETIME NOT NULL,
  `Sitios_construccion_idSitios_construccion` INT NOT NULL,
  PRIMARY KEY (`Codigo_ID`),
  INDEX `fk_Planos_Sitios_construccion1_idx` (`Sitios_construccion_idSitios_construccion` ASC) VISIBLE,
  CONSTRAINT `fk_Planos_Sitios_construccion1`
    FOREIGN KEY (`Sitios_construccion_idSitios_construccion`)
    REFERENCES `constructora`.`Sitios_construccion` (`idSitios_construccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `constructora`.`Comprador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Comprador` (
  `idComprador` INT NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `Cantidad_pagar` INT NOT NULL,
  PRIMARY KEY (`idComprador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `constructora`.`Obras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Obras` (
  `ID_obra` INT NOT NULL,
  `Estado` VARCHAR(2) NOT NULL,
  `Planos_Codigo_ID` INT NOT NULL,
  `Comprador_idComprador` INT NOT NULL,
  PRIMARY KEY (`ID_obra`),
  INDEX `fk_Obras_Planos_idx` (`Planos_Codigo_ID` ASC) VISIBLE,
  INDEX `fk_Obras_Comprador1_idx` (`Comprador_idComprador` ASC) VISIBLE,
  CONSTRAINT `fk_Obras_Planos`
    FOREIGN KEY (`Planos_Codigo_ID`)
    REFERENCES `constructora`.`Planos` (`Codigo_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Obras_Comprador1`
    FOREIGN KEY (`Comprador_idComprador`)
    REFERENCES `constructora`.`Comprador` (`idComprador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `constructora`.`Personal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Personal` (
  `idPersonal` INT NOT NULL,
  `Nombre` VARCHAR(150) NOT NULL,
  `Dias_trabajo` INT NOT NULL,
  `Lugar_trabajo` VARCHAR(150) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Obras_ID_obra` INT NOT NULL,
  PRIMARY KEY (`idPersonal`),
  INDEX `fk_Personal_Obras1_idx` (`Obras_ID_obra` ASC) VISIBLE,
  CONSTRAINT `fk_Personal_Obras1`
    FOREIGN KEY (`Obras_ID_obra`)
    REFERENCES `constructora`.`Obras` (`ID_obra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `constructora`.`Cuenta_cobro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Cuenta_cobro` (
  `idCuenta_cobro` INT NOT NULL,
  `Estado` VARCHAR(2) NOT NULL,
  `Valor` INT NOT NULL,
  `Obras_ID_obra` INT NOT NULL,
  PRIMARY KEY (`idCuenta_cobro`),
  INDEX `fk_Cuenta_cobro_Obras1_idx` (`Obras_ID_obra` ASC) VISIBLE,
  CONSTRAINT `fk_Cuenta_cobro_Obras1`
    FOREIGN KEY (`Obras_ID_obra`)
    REFERENCES `constructora`.`Obras` (`ID_obra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `constructora`.`Permisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Permisos` (
  `idPermisos` INT NOT NULL,
  `Fecha` DATETIME NOT NULL,
  `Estado` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`idPermisos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `constructora`.`Obras_has_Permisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `constructora`.`Obras_has_Permisos` (
  `Obras_ID_obra` INT NOT NULL,
  `Permisos_idPermisos` INT NOT NULL,
  PRIMARY KEY (`Obras_ID_obra`, `Permisos_idPermisos`),
  INDEX `fk_Obras_has_Permisos_Permisos1_idx` (`Permisos_idPermisos` ASC) VISIBLE,
  INDEX `fk_Obras_has_Permisos_Obras1_idx` (`Obras_ID_obra` ASC) VISIBLE,
  CONSTRAINT `fk_Obras_has_Permisos_Obras1`
    FOREIGN KEY (`Obras_ID_obra`)
    REFERENCES `constructora`.`Obras` (`ID_obra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Obras_has_Permisos_Permisos1`
    FOREIGN KEY (`Permisos_idPermisos`)
    REFERENCES `constructora`.`Permisos` (`idPermisos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;