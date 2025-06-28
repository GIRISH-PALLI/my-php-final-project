-- Drop and create database
DROP DATABASE IF EXISTS student_management;
CREATE DATABASE student_management;
USE student_management;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    course VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'editor', 'viewer') DEFAULT 'admin',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample data for students
INSERT INTO students (student_id, first_name, last_name, email, phone, course) VALUES
('STU001', 'John', 'Doe', 'john.doe@example.com', '1234567890', 'Computer Science'),
('STU002', 'Jane', 'Smith', 'jane.smith@example.com', '0987654321', 'Mathematics'),
('STU003', 'Mike', 'Johnson', 'mike.johnson@example.com', '5555555555', 'Physics');

-- Default admin user (password: admin123)
INSERT INTO users (username, password, role) VALUES ('admin', '$2y$10$wH1QwQwQwQwQwQwQwQwQwOQwQwQwQwQwQwQwQwQwQwQwQwQwQwQwQwQwQwQwQwQw', 'admin'); 