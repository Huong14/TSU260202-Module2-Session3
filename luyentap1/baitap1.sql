CREATE SCHEMA stu_class;

USE stu_class;


CREATE TABLE class(
      `id` INT PRIMARY KEY,
      `name` VARCHAR(50) NOT NULL,
      `teacher` VARCHAR(50) NOT NULL
);

CREATE TABLE student(
      `id` INT PRIMARY KEY,
      `class_id` INT,
      `name` VARCHAR(50) NOT NULL,
      `email` VARCHAR(50) UNIQUE,
      `age` INT CHECK(`age`>=18),
      FOREIGN KEY (class_id) REFERENCES class(id)
);