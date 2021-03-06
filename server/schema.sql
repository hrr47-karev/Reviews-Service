CREATE DATABASE IF NOT EXISTS reviewservice;

USE reviewservice;

CREATE TABLE IF NOT EXISTS hostels (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  hostel_name VARCHAR(64) UNIQUE
);

CREATE TABLE IF NOT EXISTS authors (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  authdescription VARCHAR(64),
  name VARCHAR(64) UNIQUE,
  gender VARCHAR(64),
  age_group VARCHAR(64),
  picture_url TEXT
);

CREATE TABLE IF NOT EXISTS reviews (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  hostel_id INT NOT NULL,
  author_id INT NOT NULL,
  description VARCHAR(255),
  security INT NOT NULL,
  location INT NOT NULL,
  staff INT NOT NULL,
  atmosphere INT NOT NULL,
  cleanliness INT NOT NULL,
  facilities INT NOT NULL,
  value INT NOT NULL,
  total DECIMAL(4,1) NOT NULL,
  created_at DATE NOT NULL,
  FOREIGN KEY (hostel_id) REFERENCES hostels(id),
  FOREIGN KEY (author_id) REFERENCES authors(id)
);

