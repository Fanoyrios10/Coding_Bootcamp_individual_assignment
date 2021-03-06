CREATE SCHEMA `ind_project_school` ;

CREATE TABLE `courses` (
  `idcourse` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(70) NOT NULL,
  `stream` VARCHAR(50) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  PRIMARY KEY (`idcourse`));

CREATE TABLE `trainers` (
  `idtrainer` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `subject` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idtrainer`));

CREATE TABLE `students` (
  `idstudents` INT NOT NULL AUTO_INCREMENT,
  `first_Name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `tutition_Fees` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idstudents`));

  CREATE TABLE `assignments` (
  `idassignments` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(80) NOT NULL,
  `description` VARCHAR(200) NOT NULL,
  `oral_mark` INT NOT NULL,
  `write_mark` INT NOT NULL,
  `total_mark` INT NOT NULL,
  PRIMARY KEY (`idassignments`));

CREATE TABLE `courses_students` (
  `idcourses` INT NOT NULL,
  `idstudents` INT NOT NULL,
  PRIMARY KEY (`idcourses`, `idstudents`),
  INDEX `idstud2_idx` (`idstudents` ASC) VISIBLE,
  CONSTRAINT `idcor1`
    FOREIGN KEY (`idcourses`)
    REFERENCES `courses` (`idcourse`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idstud1`
    FOREIGN KEY (`idstudents`)
    REFERENCES `students` (`idstudents`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

  CREATE TABLE `courses_trainers` (
  `idcourses` INT NOT NULL,
  `idtrainers` INT NOT NULL,
  PRIMARY KEY (`idcourses`, `idtrainers`),
  INDEX `idcor2_idx` (`idcourses` ASC) VISIBLE,
  INDEX `idtrain2_idx` (`idtrainers` ASC) VISIBLE,
  CONSTRAINT `idcor2`
    FOREIGN KEY (`idcourses`)
    REFERENCES `courses` (`idcourse`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idtrain2`
    FOREIGN KEY (`idtrainers`)
    REFERENCES `trainers` (`idtrainer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `courses_assignments` (
  `idcourses` INT NOT NULL,
  `idassignments` INT NOT NULL,
  PRIMARY KEY (`idcourses`, `idassignments`),
  INDEX `idcours3_idx` (`idcourses` ASC) VISIBLE,
  INDEX `idassign3_idx` (`idassignments` ASC) VISIBLE,
  CONSTRAINT `idcours3`
    FOREIGN KEY (`idcourses`)
    REFERENCES `courses` (`idcourse`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idassign3`
    FOREIGN KEY (`idassignments`)
    REFERENCES `assignments` (`idassignments`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `students_assignments` (
  `idstudents` INT NOT NULL,
  `idassignments` INT NOT NULL,
  `sub_date_time` DATETIME NOT NULL,
  PRIMARY KEY (`idstudents`, `idassignments`),
  INDEX `idstud4_idx` (`idstudents` ASC) VISIBLE,
  INDEX `idassign4_idx` (`idassignments` ASC) VISIBLE,
  CONSTRAINT `idstud4`
    FOREIGN KEY (`idstudents`)
    REFERENCES `students` (`idstudents`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idassign4`
    FOREIGN KEY (`idassignments`)
    REFERENCES `assignments` (`idassignments`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


-- Insert into students table

INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Maksymilian', 'Grant', '1996-01-02', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tamera', 'Barnes', '1996-01-22', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Helena', 'Henry', '1996-05-24', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ronny', 'Mccormik', '1996-02-14', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Shyla', 'Hunt', '1996-10-23', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Eesa', 'Melia', '1996-07-12', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mark', 'Higgins', '1996-09-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Deacon', 'Langley', '1996-06-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Annette', 'Mora', '1996-03-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tia', 'Mcclain', '1996-05-30', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Blanka', 'Waters', '1996-06-07', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Yehuda', 'Richard', '1996-11-29', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ivan', 'Lozano', '1996-01-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tanvir', 'Bradshaw', '1997-01-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Jaxson', 'Daniels', '1997-02-09', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Fatimah', 'Hodges', '1997-03-10', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Taybah', 'Summers', '1997-04-12', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Kamile', 'Boone', '1997-05-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Connor', 'Murray', '1997-06-17', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Caroline', 'Crowther', '1997-07-19', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Frederick', 'Major', '1997-08-21', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Bethanie', 'Sinclair', '1997-09-24', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Aubrey', 'Pemberton', '1997-10-28', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Kavita', 'Pacheco', '1997-11-29', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Reid', 'Dalby', '1997-12-17', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Brax', 'Leigh', '1998-01-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mihai', 'Merritt', '1998-02-04', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Adeline', 'Roberson', '1998-03-08', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Divine', 'Rawlings', '1998-04-11', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Chanel', 'Levy', '1998-05-16', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Forrest', 'Burgess', '1998-06-18', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Roma', 'Sykes', '1998-07-20', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Dollie', 'Rodriguez', '1998-08-22', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Hal', 'Coombes', '1998-09-24', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Uwais', 'Tucker', '1998-10-28', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Luella', 'Sheridan', '1998-11-24', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Haroon', 'Copeland', '1999-03-14', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Isla-Mae', 'Evans', '1999-05-21', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Susanna', 'Kumar', '1999-07-23', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Rima', 'Burris', '1999-11-29', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Maksymilian', 'Grant', '1996-01-02', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tamera', 'Barnes', '1996-01-22', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Helena', 'Henry', '1996-05-24', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ronny', 'Mccormik', '1996-02-14', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Shyla', 'Hunt', '1996-10-23', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Eesa', 'Melia', '1996-07-12', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mark', 'Higgins', '1996-09-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Deacon', 'Langley', '1996-06-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Annette', 'Mora', '1996-03-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tia', 'Mcclain', '1996-05-30', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Blanka', 'Waters', '1996-06-07', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Yehuda', 'Richard', '1996-11-29', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ivan', 'Lozano', '1996-01-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tanvir', 'Bradshaw', '1997-01-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Jaxson', 'Daniels', '1997-02-09', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Fatimah', 'Hodges', '1997-03-10', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Taybah', 'Summers', '1997-04-12', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Kamile', 'Boone', '1997-05-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Connor', 'Murray', '1997-06-17', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Caroline', 'Crowther', '1997-07-19', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Frederick', 'Major', '1997-08-21', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Bethanie', 'Sinclair', '1997-09-24', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Aubrey', 'Pemberton', '1997-10-28', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Kavita', 'Pacheco', '1997-11-29', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Reid', 'Dalby', '1997-12-17', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Brax', 'Leigh', '1998-01-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mihai', 'Merritt', '1998-02-04', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Adeline', 'Roberson', '1998-03-08', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Divine', 'Rawlings', '1998-04-11', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Chanel', 'Levy', '1998-05-16', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Forrest', 'Burgess', '1998-06-18', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Roma', 'Sykes', '1998-07-20', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Dollie', 'Rodriguez', '1998-08-22', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Hal', 'Coombes', '1998-09-24', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Uwais', 'Tucker', '1998-10-28', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Luella', 'Sheridan', '1998-11-24', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Haroon', 'Copeland', '1999-03-14', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Isla-Mae', 'Evans', '1999-05-21', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Susanna', 'Kumar', '1999-07-23', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Rima', 'Burris', '1999-11-29', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Eesa', 'Melia', '1996-07-12', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mark', 'Higgins', '1996-09-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Deacon', 'Langley', '1996-06-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Annette', 'Mora', '1996-03-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tia', 'Mcclain', '1996-05-30', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Blanka', 'Waters', '1996-06-07', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Yehuda', 'Richard', '1996-11-29', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ivan', 'Lozano', '1996-01-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tanvir', 'Bradshaw', '1997-01-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Jaxson', 'Daniels', '1997-02-09', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Fatimah', 'Hodges', '1997-03-10', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Taybah', 'Summers', '1997-04-12', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Kamile', 'Boone', '1997-05-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Connor', 'Murray', '1997-06-17', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Caroline', 'Crowther', '1997-07-19', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Frederick', 'Major', '1997-08-21', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Bethanie', 'Sinclair', '1997-09-24', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ronny', 'Mccormik', '1996-02-14', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Shyla', 'Hunt', '1996-10-23', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Eesa', 'Melia', '1996-07-12', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mark', 'Higgins', '1996-09-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Deacon', 'Langley', '1996-06-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Annette', 'Mora', '1996-03-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tia', 'Mcclain', '1996-05-30', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Blanka', 'Waters', '1996-06-07', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Yehuda', 'Richard', '1996-11-29', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ivan', 'Lozano', '1996-01-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tanvir', 'Bradshaw', '1997-01-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Jaxson', 'Daniels', '1997-02-09', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Fatimah', 'Hodges', '1997-03-10', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Taybah', 'Summers', '1997-04-12', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Kamile', 'Boone', '1997-05-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Connor', 'Murray', '1997-06-17', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Caroline', 'Crowther', '1997-07-19', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Frederick', 'Major', '1997-08-21', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Bethanie', 'Sinclair', '1997-09-24', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Aubrey', 'Pemberton', '1997-10-28', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Kavita', 'Pacheco', '1997-11-29', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Reid', 'Dalby', '1997-12-17', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Brax', 'Leigh', '1998-01-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mihai', 'Merritt', '1998-02-04', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Adeline', 'Roberson', '1998-03-08', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Divine', 'Rawlings', '1998-04-11', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Chanel', 'Levy', '1998-05-16', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Forrest', 'Burgess', '1998-06-18', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Roma', 'Sykes', '1998-07-20', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Dollie', 'Rodriguez', '1998-08-22', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Hal', 'Coombes', '1998-09-24', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Uwais', 'Tucker', '1998-10-28', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Luella', 'Sheridan', '1998-11-24', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Haroon', 'Copeland', '1999-03-14', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Isla-Mae', 'Evans', '1999-05-21', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Susanna', 'Kumar', '1999-07-23', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Rima', 'Burris', '1999-11-29', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Maksymilian', 'Grant', '1996-01-02', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tamera', 'Barnes', '1996-01-22', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Helena', 'Henry', '1996-05-24', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Ronny', 'Mccormik', '1996-02-14', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Shyla', 'Hunt', '1996-10-23', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Eesa', 'Melia', '1996-07-12', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Mark', 'Higgins', '1996-09-19', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Deacon', 'Langley', '1996-06-03', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Annette', 'Mora', '1996-03-14', 'Full time:3000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Tia', 'Mcclain', '1996-05-30', 'Part time:2500€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Blanka', 'Waters', '1996-06-07', 'Online:2000€');
INSERT INTO `students` (`first_Name`, `last_name`, `date_of_birth`, `tutition_Fees`) VALUES ('Yehuda', 'Richard', '1996-11-29', 'Full time:3000€');


-- Insert into trainers table

INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Suman', 'Hamilton', 'History');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Yaseen', 'Beattie', 'Programming');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Mahir', 'Bond', 'Chemistry');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Enya', 'Farley', 'Physics');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Gus', 'Baxter', 'Sociology');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Cooper', 'Bullock', 'Physical Education');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Albus', 'Dumbledore', 'History');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Flitwick', 'Morlein', 'Programming');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Minerva', 'McGonnegal', 'Sociology');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Severus', 'Snape', 'Chemistry');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Rubius', 'Hagrid', 'Physics');
INSERT INTO `trainers` (`first_name`, `last_name`, `subject`) VALUES ('Lauren', 'Simpels', 'Physical Education');

-- Insert into courses table

INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Ancient History 2020-2021', 'History', 'Full Time:3000€', '2020-09-03', '2021-07-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Medieval History 2020-2021', 'History', 'Part time:2500€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Reinasance History 2020-2021', 'History', 'Online:2000€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('JavaScript Programming 2020-2021', 'Programming', 'Full Time:3000€', '2020-09-03', '2021-07-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('C# Programming 2020-2021', 'Programming', 'Part time:2500€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Python Programming 2020-2021', 'Programming', 'Online:2000€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Organic Chemistry 2020-2021', 'Chemistry', 'Full Time:3000€', '2020-09-03', '2021-07-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Atmospheric Chemistry 2020-2021', 'Chemistry', 'Part time:2500€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Food Chemistry 2020-2021', 'Chemistry', 'Online:2000€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Solid State Physics 2020-2021', 'Physics', 'Full Time:3000€', '2020-09-03', '2021-07-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Biological Physics 2020-2021', 'Physics', 'Part time:2500€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Computational Physics 2020-2021', 'Physics', 'Online:2000€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Classical Sociological Theory 2020-2021', 'Sociology', 'Full Time:3000€', '2020-09-03', '2021-07-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Democracy Governance and anticipation 2020-2021', 'Sociology', 'Part time:2500€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Introducing the Social Sciences 2020-2021', 'Sociology', 'Online:2000€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Fitness Through Movement 2020-2021', 'Physical Education', 'Full Time:3000€', '2020-09-03', '2021-07-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Elementary Physical Education 2020-2021', 'Physical Education', 'Part time:2500€', '2020-09-03', '2021-04-10');
INSERT INTO `courses` (`title`, `stream`, `type`, `start_date`, `end_date`) VALUES ('Introduction to Sport Management 2020-2021', 'Physical Education', 'Online:2000€', '2020-09-03', '2021-04-10');

-- Insert into assignments table

INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Ancient Egypt 2020-2021', 'Individual Project for Ancient History Class ', '30', '70', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Ancient Rome 2020-2021', 'Team Project for Ancient History Class ', '30', '70', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Medieval Holy Roman Empire 2020-2021', 'Individual Project for Medieval History Class ', '50', '50', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Kings and Queens of Medieval England 2020-2021', 'Team Project for Medieval History Class', '40', '60', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Napoleonic Wars 2020-2021', 'Individual Project for Reisanance History Class ', '80', '20', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('First British Empire 2020-2021', 'Team Project for Reisanance History Class ', '30', '70', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Breaking Down Objects in JavaScript 2020-2021', 'Individual Project for JavaScript Class ', '10', '90', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Jquery analysis 2020-2021', 'Team Project for JavaScript Class ', '10', '90', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Debbuging in C# 2020-2021', 'Individual Project for C# Class ', '10', '90', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Creating a translator in C# 2020-2021', 'Team Project for C# Class ', '20', '80', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Python Uses 2020-2021', 'Individual Project for Python Class ', '40', '60', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Building API in Python 2020-2021', 'Team Project for Python Class ', '40', '60', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Organic Reactions 2020-2021', 'Individual Project for Organic Chemistry Class ', '10', '90', '100');
UPDATE `assignments` SET `title` = 'Building API in Python 2020-2021' WHERE (`idassignments` = '12');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Intermolecular forces 2020-2021', 'Team Project for Organic Chemistry Class ', '10', '90', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Formation of Precipitation 2020-2021', 'Individual Project for Atmospheric Chemistry', '30', '70', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Solar and Wind Energy 2020-2021', 'Team Project for Atmospheric Chemistry', '30', '70', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Allergen Removal and Transfer 2020-2021', 'Individual Project for Food Chemistry', '20', '80', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Fats in Foods and Overconsumption 2020-2021', 'Team Project for Food Chemistry', '20', '80', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Crystallography 2020-2021', 'Individual Project for Solid State Physics', '50', '50', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Atomic and molecular physics 2020-2021', 'Team Project for Solid State Physics', '50', '50', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Analyzing Ant Rafts 2020-2021', 'Individual Project for Biological Physics', '20', '80', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Photosynthetic Machines 2020-2021', 'Teaml Project for Biological Physics', '20', '80', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Neutron star equation of state 2020-2021', 'Individual Project for Computational Physics', '0', '100', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Heisenberg spin system 2020-2021', 'Team Project for Computational Physics', '0', '100', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Classical Sociological Theory Individual 2020-2021', 'Individual Project for Classical Sociological Theory', '40', '60', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Classical Sociological Theory Team 2020-2021', 'Team Project for Classical Sociological Theory', '40', '60', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Democracy Governance and anticipation Individual 2020-2021', 'Individual Project for Democracy Governance and anticipation', '20', '80', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Democracy Governance and anticipation Team 2020-2021', 'Team Project for Democracy Governance and anticipation', '20', '80', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Introducing the Social Sciences Individual 2020-2021', 'Individual Project for Introducing the Social Sciences', '60', '40', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Introducing the Social Sciences Team 2020-2021', 'Team Project for Introducing the Social Sciences', '60', '40', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Fitness Through Movement Individual 2020-2021', 'Individual Project for Fitness Through Movement', '90', '10', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Fitness Through Movement Team 2020-2021', 'Team Project for Fitness Through Movement', '90', '10', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Elementary Physical Education Individual 2020-2021', 'Individual Project for Elementary Physical Education', '90', '10', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Elementary Physical Education Team 2020-2021', 'Team Project for Elementary Physical Education', '90', '10', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Introduction to Sport Management Individual 2020-2021', 'Individual Project for Introduction to Sport Management', '70', '30', '100');
INSERT INTO `assignments` (`title`, `description`, `oral_mark`, `write_mark`, `total_mark`) VALUES ('Introduction to Sport Management Team 2020-2021', 'Team Project for Introduction to Sport Management', '70', '30', '100');




-- Insert into courses_students table

INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '1');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '2');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '3');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '4');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '5');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '6');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '7');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('1', '8');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '9');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '10');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '11');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '12');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '13');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '14');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '15');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('2', '16');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '17');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '18');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '19');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '20');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '21');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '22');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '23');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('3', '24');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '25');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '26');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '27');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '28');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '29');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '30');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '31');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('4', '32');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '33');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '34');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '35');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '36');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '37');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '38');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '39');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('5', '40');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '41');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '42');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '43');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '44');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '45');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '46');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '47');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('6', '48');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '49');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '50');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '51');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '52');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '53');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '54');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '55');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('7', '56');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '57');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '58');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '59');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '60');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '61');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '62');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '63');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('8', '64');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '65');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '66');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '67');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '68');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '69');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '70');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '71');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('9', '72');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '73');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '74');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '75');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '76');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '77');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '78');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '79');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('10', '80');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '81');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '82');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '83');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '84');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '85');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '86');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '87');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('11', '88');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '89');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '90');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '91');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '92');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '93');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '94');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '95');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('12', '96');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '97');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '98');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '99');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '100');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '101');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '102');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '103');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('13', '104');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '105');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '106');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '107');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '108');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '109');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '110');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '111');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('14', '112');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '113');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '114');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '115');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '116');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '117');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '118');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '119');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('15', '120');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '121');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '122');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '123');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '124');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '125');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '126');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '127');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('16', '128');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '129');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '130');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '131');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '132');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '133');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '134');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '135');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('17', '136');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '137');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '138');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '139');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '140');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '141');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '142');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '143');
INSERT INTO `courses_students` (`idcourses`, `idstudents`) VALUES ('18', '144');

-- Insert into courses_trainers table

INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('1', '1');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('2', '7');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('3', '7');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('4', '2');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('5', '8');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('6', '8');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('7', '3');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('8', '9');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('9', '9');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('10', '4');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('11', '10');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('12', '10');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('13', '5');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('14', '11');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('15', '11');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('16', '6');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('17', '12');
INSERT INTO `courses_trainers` (`idcourses`, `idtrainers`) VALUES ('18', '12');

-- Insert into courses_assignments table

INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('1', '1');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('1', '2');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('2', '3');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('2', '4');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('3', '5');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('3', '6');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('4', '7');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('4', '8');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('5', '9');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('5', '10');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('6', '11');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('6', '12');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('7', '13');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('7', '14');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('8', '15');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('8', '16');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('9', '17');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('9', '18');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('10', '19');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('10', '20');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('11', '21');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('11', '22');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('12', '23');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('12', '24');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('13', '25');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('13', '26');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('14', '27');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('14', '28');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('15', '29');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('15', '30');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('16', '31');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('16', '32');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('17', '33');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('17', '34');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('18', '35');
INSERT INTO `courses_assignments` (`idcourses`, `idassignments`) VALUES ('18', '36');


-- Insert into students_assignments table

INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('1', '1', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('2', '2', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('3', '2', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('4', '2', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('5', '1', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('6', '2', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('7', '2', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('8', '2', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('9', '3', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('10', '4', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('11', '4', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('12', '4', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('13', '3', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('14', '4', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('15', '4', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('16', '4', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('17', '5', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('18', '6', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('19', '6', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('20', '6', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('21', '5', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('22', '6', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('23', '6', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('24', '6', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('25', '7', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('26', '8', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('27', '8', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('28', '8', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('29', '7', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('30', '8', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('31', '8', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('32', '8', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('33', '9', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('34', '10', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('35', '10', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('36', '10', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('37', '9', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('38', '10', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('39', '10', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('40', '10', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('41', '11', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('42', '12', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('43', '12', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('44', '12', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('45', '11', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('46', '12', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('47', '12', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('48', '12', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('49', '13', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('50', '14', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('51', '14', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('52', '14', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('53', '13', '2021-02-15 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('54', '14', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('55', '14', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('56', '14', '2021-02-19 14:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('57', '15', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('58', '16', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('59', '16', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('60', '16', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('61', '15', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('62', '16', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('63', '16', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('64', '16', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('65', '17', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('66', '18', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('67', '18', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('68', '18', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('69', '17', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('70', '18', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('71', '18', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('72', '18', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('73', '19', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('74', '20', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('75', '20', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('76', '20', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('77', '19', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('78', '20', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('79', '20', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('80', '20', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('81', '21', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('82', '22', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('83', '22', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('84', '22', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('85', '21', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('86', '22', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('87', '22', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('88', '22', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('89', '23', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('90', '24', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('91', '24', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('92', '24', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('93', '23', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('94', '24', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('95', '24', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('96', '24', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('97', '25', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('98', '26', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('99', '26', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('100', '26', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('101', '25', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('102', '26', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('103', '26', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('104', '26', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('105', '27', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('106', '28', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('107', '28', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('108', '28', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('109', '27', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('110', '28', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('111', '28', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('112', '28', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('113', '29', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('114', '30', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('115', '30', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('116', '30', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('117', '29', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('118', '30', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('119', '30', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('120', '30', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('121', '31', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('122', '32', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('123', '32', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('124', '32', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('125', '31', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('126', '32', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('127', '32', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('128', '32', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('129', '33', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('130', '34', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('131', '34', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('132', '34', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('133', '33', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('134', '34', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('135', '34', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('136', '34', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('137', '35', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('138', '36', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('139', '36', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('140', '36', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('141', '35', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('142', '36', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('143', '36', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('144', '36', '2021-02-19 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('145', '35', '2021-02-15 14:00:00');
INSERT INTO `students_assignments` (`idstudents`, `idassignments`, `sub_date_time`) VALUES ('146', '35', '2021-02-15 14:00:00');
