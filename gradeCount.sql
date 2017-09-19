#create schema
CREATE SCHEMA `gradeCount` DEFAULT CHARACTER SET utf8 ;

#create table
CREATE TABLE `gradeCount`.`user` (
  `username` VARCHAR(10) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `kind` VARCHAR(10) NULL,
  PRIMARY KEY (`username`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC));

CREATE TABLE `gradeCount`.`Course` (
  `cno` VARCHAR(10) NOT NULL,
  `cname` VARCHAR(45) NOT NULL,
  `isRequired` VARCHAR(10) BINARY NOT NULL,
  `credit` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cno`),
  UNIQUE INDEX `username_UNIQUE` (`cno` ASC));

CREATE TABLE `gradeCount`.`SC` (
  `username` VARCHAR(10) NOT NULL,
  `cno` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL);