CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);