CREATE SCHEMA `ind_project_school` ;

CREATE TABLE `ind_project_school`.`courses` (
  `idcourse` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NOT NULL,
  `stream` VARCHAR(50) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  PRIMARY KEY (`idcourse`));

CREATE TABLE `ind_project_school`.`trainers` (
  `idtrainer` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `subject` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idtrainer`));

CREATE TABLE `ind_project_school`.`students` (
  `idstudents` INT NOT NULL AUTO_INCREMENT,
  `first_Name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `tutition_Fees` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idstudents`));

  CREATE TABLE `ind_project_school`.`assignments` (
  `idassignments` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `sub_date_time` DATETIME NOT NULL,
  `oral_mark` INT NOT NULL,
  `total_mark` INT NOT NULL,
  PRIMARY KEY (`idassignments`));

CREATE TABLE `ind_project_school`.`courses_students` (
  `idcourses` INT NOT NULL,
  `idstudents` INT NOT NULL,
  PRIMARY KEY (`idcourses`, `idstudents`),
  INDEX `idstud2_idx` (`idstudents` ASC) VISIBLE,
  CONSTRAINT `idcor1`
    FOREIGN KEY (`idcourses`)
    REFERENCES `ind_project_school`.`courses` (`idcourse`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idstud1`
    FOREIGN KEY (`idstudents`)
    REFERENCES `ind_project_school`.`students` (`idstudents`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

  CREATE TABLE `ind_project_school`.`courses_trainers` (
  `idcourses` INT NOT NULL,
  `idtrainers` INT NOT NULL,
  PRIMARY KEY (`idcourses`, `idtrainers`),
  INDEX `idcor2_idx` (`idcourses` ASC) VISIBLE,
  INDEX `idtrain2_idx` (`idtrainers` ASC) VISIBLE,
  CONSTRAINT `idcor2`
    FOREIGN KEY (`idcourses`)
    REFERENCES `ind_project_school`.`courses` (`idcourse`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idtrain2`
    FOREIGN KEY (`idtrainers`)
    REFERENCES `ind_project_school`.`trainers` (`idtrainer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `ind_project_school`.`courses_assignments` (
  `idcourses` INT NOT NULL,
  `idassignments` INT NOT NULL,
  PRIMARY KEY (`idcourses`, `idassignments`),
  INDEX `idcours3_idx` (`idcourses` ASC) VISIBLE,
  INDEX `idassign3_idx` (`idassignments` ASC) VISIBLE,
  CONSTRAINT `idcours3`
    FOREIGN KEY (`idcourses`)
    REFERENCES `ind_project_school`.`courses` (`idcourse`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idassign3`
    FOREIGN KEY (`idassignments`)
    REFERENCES `ind_project_school`.`assignments` (`idassignments`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `ind_project_school`.`students_assignments` (
  `idstudents` INT NOT NULL,
  `idassignments` INT NOT NULL,
  PRIMARY KEY (`idstudents`, `idassignments`),
  INDEX `idstud4_idx` (`idstudents` ASC) VISIBLE,
  INDEX `idassign4_idx` (`idassignments` ASC) VISIBLE,
  CONSTRAINT `idstud4`
    FOREIGN KEY (`idstudents`)
    REFERENCES `ind_project_school`.`students` (`idstudents`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idassign4`
    FOREIGN KEY (`idassignments`)
    REFERENCES `ind_project_school`.`assignments` (`idassignments`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

