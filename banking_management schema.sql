/*------------------ Customers Table ------------------------*/
CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
    full_name VARCHAR(30),
    gender VARCHAR(8),
    dob DATE NOT NULL,
    phone CHAR(10) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE,
    city VARCHAR(30),
    state VARCHAR(30)
);
/*------------- Operations on Customers Table ---------------*/
SELECT * FROM customers;




/*------------------ Branches Table -------------------------*/
CREATE TABLE branches(
	branch_id INT PRIMARY KEY,
    branch_name VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30)
);
/*------------- Operations on Branches Table ---------------*/
SELECT * FROM branches;



/*-------------------- Accounts Table -----------------------*/
CREATE TABLE accounts(
	account_id INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    account_type VARCHAR(15),
    balance DECIMAL(12.2),
    opening_date DATE,
    status VARCHAR(15)
);
/*----------- Operations on Accounts Table ----------------*/
ALTER TABLE accounts
ADD CONSTRAINT
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE accounts
ADD CONSTRAINT
FOREIGN KEY (branch_id) REFERENCES branches(branch_id);

SELECT * FROM accounts;

/*---------------------- Employees Table --------------------*/
CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
    branch_id INT,
    employee_name VARCHAR(30),
    designation VARCHAR(10),
    salary DECIMAL(10,2),
    hire_date DATE
);
/*----------- Operations on Employee Table ----------------*/
ALTER TABLE employees
ADD CONSTRAINT 
FOREIGN KEY (branch_id) REFERENCES branches(branch_id);

SELECT * FROM employees;

/*-------------------- Transactions Table -------------------*/
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(15),
    account VARCHAR(10),
    description VARCHAR(50)
);
/*------------- Operations on Transactions Table ---------------*/
SELECT * FROM transactions;

ALTER TABLE transactions
MODIFY COLUMN description VARCHAR(15);

ALTER TABLE transactions
RENAME COLUMN account TO amount;


