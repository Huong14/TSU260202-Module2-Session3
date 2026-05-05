CREATE DATABASE bt3_sanpham;

USE bt3_sanpham;

CREATE TABLE products(
      id INT PRIMARY KEY,
      name_pro VARCHAR(150) NOT NULL,
      price DECIMAL(10,2) NOT NULL CHECK(price >= 0),
      stock INT NOT NULL
);

CREATE TABLE orders(
      id INT PRIMARY KEY,
      date_or DATE,
      total DECIMAL(10,2) NOT NULL,
      id_pro INT,
      FOREIGN KEY (id_pro) REFERENCES products(id)
);

CREATE TABLE orders_items(
      id_pro INT,
      id_or INT,
      quantity INT,
      PRIMARY KEY (id_pro,id_or),
      FOREIGN KEY (id_pro) REFERENCES products(id),
      FOREIGN KEY (id_or) REFERENCES orders(id)
);