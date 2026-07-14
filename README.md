# 🏦 Banking Management System | MySQL Project 1

## 📌 Project Overview

The **Banking Management System** is a beginner-friendly SQL project built using **MySQL**. It simulates a real-world banking database and demonstrates how relational databases are designed and queried to solve business problems.

The project covers database design, table relationships, SQL queries, and business analysis using realistic banking data.

---

## 🎯 Objectives

* Design a relational database for a banking system.
* Implement Primary Key and Foreign Key relationships.
* Practice SQL queries from beginner to intermediate level.
* Analyze banking data using SQL.

---

## 🛠️ Tech Stack

* MySQL
* MySQL Workbench
* Notepad(To view questions)
* GitHub

---

## 🗂️ Database Schema

The database consists of the following tables:

### Customers

* customer_id (PK)
* full_name
* gender
* dob
* phone
* email
* city
* state

### Branches

* branch_id (PK)
* branch_name
* city
* state

### Accounts

* account_id (PK)
* customer_id (FK)
* branch_id (FK)
* account_type
* balance
* opening_date
* status

### Transactions

* transaction_id (PK)
* account_id (FK)
* transaction_date
* transaction_type
* amount
* description

### Employees

* employee_id (PK)
* branch_id (FK)
* employee_name
* designation
* salary
* hire_date

---

## 🔗 Database Relationships

* One Customer → Many Accounts
* One Branch → Many Accounts
* One Account → Many Transactions
* One Branch → Many Employees

---

## 📊 Dataset

| Table        | Records |
| ------------ | ------: |
| Customers    |   1,000 |
| Branches     |      20 |
| Accounts     |   2,000 |
| Transactions |  10,000 |
| Employees    |     300 |

---

## 💼 Business Questions Solved

* List all customers with their account details.
* Find customers with multiple accounts.
* Calculate the total balance for each customer.
* Count the number of accounts by account type.
* Find the total deposits and withdrawals.
* Display monthly transaction totals.
* Find accounts with no transactions.
* Identify the largest transaction.
* Calculate the average account balance.
* List employees working in each branch.
* Count customers in each city.
* Find inactive accounts.
* Display customers whose balance exceeds ₹100,000.
* Rank customers by account balance using window functions.

---

## 📁 Project Structure

```text
Banking-Management-System/
│
├── README.md
├── banking_management schema.sql
├── business_queries.sql
├── customers.csv
├── branches.csv
├── accounts.csv
├── transactions.csv
├── employees.csv
└── ER Diagram.png
```

---

## 🚀 SQL Concepts Used

* DDL (CREATE DATABASE, CREATE TABLE)
* Primary Keys
* Foreign Keys
* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* Aggregate Functions
* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Subqueries
* Window Functio

---

## 📚 Learning Outcomes

Through this project, I learned how to:

* Design a relational database.
* Create relationships using primary and foreign keys.
* Write SQL queries to solve business problems.
* Use joins to combine data from multiple tables.
* Apply aggregate functions for reporting.
* Use window functions for ranking and analysis.

---

## 📸 Project Preview

Include screenshots of:

* Database schema (ER Diagram)
* SQL table structure
* Query results

---

## 👨‍💻 Author

**Aryan Sharma**

This project is part of my SQL learning journey and demonstrates practical database design and data analysis using MySQL.
