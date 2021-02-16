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

INSERT INTO employees (emp_id, first_name, last_name, emp_role_id, manager_id) VALUES
(1, "Ashley","Rodiguez", 3, null),
(2, "Kevin","Tupik", 4, null),
(3, "Malia","Brown", 5, 2),
(4, "Sarah","Lourd", 6, 1),
(5, "Tom","Allen", 7, 2);
;
