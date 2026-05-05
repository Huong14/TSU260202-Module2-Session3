CREATE DATABASE bt2_thuvien;

USE bt2_thuvien;

CREATE TABLE readers(
     id INT PRIMARY KEY,
     `name` VARCHAR(150) NOT NULL,
     age INT,
     email VARCHAR(250) UNIQUE
);

CREATE TABLE books(
      id INT PRIMARY KEY,
      title VARCHAR(250),
      author VARCHAR(150)
);

CREATE TABLE borrowings(
      id_book INT,
      id_reader INT,
      date_borrow DATE,
      date_return DATE,
      FOREIGN KEY (id_book) REFERENCES books(id),
      FOREIGN KEY (id_reader) REFERENCES readers(id)
);

ALTER TABLE borrowings
MODIFY date_borrow DATE NOT NULL;