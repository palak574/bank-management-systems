-- Create the database
CREATE DATABASE IF NOT EXISTS hubnet;
USE hubnet;

-- Create bank table
CREATE TABLE IF NOT EXISTS bank (
    Name VARCHAR(50) NOT NULL,
    UserName VARCHAR(20) PRIMARY KEY,
    Password VARCHAR(50) NOT NULL,
    DOB DATE,
    Address VARCHAR(100),
    Mobile_Number VARCHAR(10),
    Aadhar_no VARCHAR(12),
    Balance INT DEFAULT 0
);

-- Create transaction table
CREATE TABLE IF NOT EXISTS transaction (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    Credited INT DEFAULT 0,
    Debited INT DEFAULT 0,
    UserName1 VARCHAR(20),
    Date DATETIME,
    FOREIGN KEY (UserName1) REFERENCES bank(UserName) ON DELETE CASCADE
);

-- Create loan table
CREATE TABLE IF NOT EXISTS loan (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(20),
    LoanAmount INT,
    Date DATETIME,
    FOREIGN KEY (UserName) REFERENCES bank(UserName) ON DELETE CASCADE
);
