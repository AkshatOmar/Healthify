
CREATE DATABASE Healthyfy;

USE Healthyfy;

-- Create the Users table for storing signup and login details
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    confirm_password VARCHAR(255) NOT NULL
);

-- Create the BMI table for storing BMI data
CREATE TABLE BMI (
    bmi_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    weight FLOAT NOT NULL,
    height_in_cm FLOAT NOT NULL,
    bmi_value FLOAT NOT NULL,
    date_recorded TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
