CREATE DATABASE IF NOT EXISTS ping_db;

USE ping_db;

CREATE TABLE IF NOT EXISTS groups (
  id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(63) NOT NULL
);

CREATE TABLE IF NOT EXISTS devices (
  id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(63) NOT NULL,
	ip VARCHAR(63) NOT NULL,
	start_time TIMESTAMP(3) DEFAULT NOW(3),
	recent_time TIMESTAMP(3) DEFAULT NOW(3) ON UPDATE NOW(3),
	ping INT DEFAULT -1,
	group_id INT NOT NULL,
	FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE
);