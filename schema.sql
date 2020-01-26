DROP DATABASE IF EXISTS companyDB;

CREATE DATABASE companyDB;

USE companyDB;

CREATE TABLE department_table (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE TABLE role_table (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR (30),
    salary DECIMAL,
    deparment_id INT, --NEED TO TURN THIS INTO FOREIGN KEY FOR DEPARTMENT 
    PRIMARY KEY (id)
);

CREATE TABLE employee_table (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR (30),
    last_name VARCHAR (30),
    role_id INT, --NEED TO TURN THIS INTO FOREIGN KEY FOR ROLE
    manager_id INT --TO HOLD REFERNECE TO ANOTHER EMPLOYEE THAT MANAGER OF THE CURRENT EMPLOYEE, CAN BE NULL
);

