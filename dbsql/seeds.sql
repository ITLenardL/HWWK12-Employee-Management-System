USE ems_db;

INSERT INTO department (dept_name) VALUES ('Sales'), ('Engineering'), ('Finance'), ('Legal');

INSERT INTO company_role (title, salary, dept_id) VALUES
("Sales Lead", 100000, 1),
("Salesperson", 80000, 1),
("Lead Engineer", 150000, 2),
("Software Engineer", 120000, 2),
("Accountant", 125000, 3),
("Legal Team Lead", 250000, 4),
("Lawyer", 190000, 4)
;

INSERT INTO employees (first_name, last_name, emp_role_id, manager_id) VALUES
("Ashley","Rodiguez", 3, null),
("Kevin","Tupik", 4, null),
("Malia","Brown", 5, null),
("Sarah","Lourd", 6, null),
("Tom","Allen", 7, null);
;
