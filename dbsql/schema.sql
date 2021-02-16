DROP DATABASE IF EXISTS ems_db;
CREATE database ems_db;

USE ems_db;

CREATE TABLE department (
    dept_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(30),
    PRIMARY KEY (dept_id)
);

CREATE TABLE company_role (
    role_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DEC(10,2) NOT NULL,
    dept_id INT,
    PRIMARY KEY (role_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE employees (
    emp_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    emp_role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_role_id) REFERENCES company_role(role_id),
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

