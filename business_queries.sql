/* Q1. List all customers with their account details.*/
SELECT 	c.full_name,
		a.account_id,
        b.branch_name,
        a.balance,
        a.opening_date,
        a.status
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
JOIN branches b
ON a.branch_id = b.branch_id;


/* Q2. Find customers with multiple accounts.*/
SELECT 	c.customer_id,
		c.full_name,
		COUNT(a.account_id) AS Account
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id , c.full_name
HAVING COUNT(a.account_id) > 1;


/* Q3. Calculate the total balance for each customer.*/
SELECT 	c.customer_id,
		c.full_name,
        SUM(a.balance) AS Total_balance
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.full_name;


/* Q4. Show the top 10 customers by account balance.*/
SELECT 	c.customer_id,
		c.full_name,
        SUM(a.balance) AS Account_balance
FROM customers c
INNER JOIN accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY SUM(a.balance) DESC
LIMIT 10;


/* Q5. Count the number of accounts by account type.*/
SELECT 	account_type,
		COUNT(account_id) AS Number_of_accounts
FROM accounts
GROUP BY account_type;


/* Q6. Find the total deposits and withdrawals.*/
SELECT 	transaction_type,
		SUM(amount) AS Total_amount
FROM transactions
GROUP BY transaction_type;


/* Q7. Display monthly transaction totals.*/
SELECT 	MONTHNAME(transaction_date) AS Month,
		YEAR(transaction_date) AS Year,
		SUM(amount) AS Total_transactions
FROM transactions
GROUP BY 
		YEAR(transaction_date), 
        MONTH(transaction_date),
        MONTHNAME(transaction_date)
ORDER BY 
		YEAR(transaction_date),
        MONTH(transaction_date);


/* Q8. Find accounts with no transactions.*/
SELECT	a.account_id,
        c.full_name,
        COUNT(t.transaction_date) AS No_of_transactions
FROM accounts a
LEFT JOIN transactions t
ON a.account_id = t.account_id
JOIN customers c
ON a.customer_id = c.customer_id
GROUP BY a.account_id, c.full_name
HAVING COUNT(t.transaction_date) = 0;


/* Q9. Identify the largest transaction. */
SELECT	a.account_id,
		c.full_name,
		t.transaction_date,
        MAX(t.amount) AS Largest_transaction
FROM accounts a
RIGHT JOIN transactions t
ON a.account_id = t.account_id
JOIN customers c
ON a.customer_id = c.customer_id
GROUP BY t.transaction_date, a.account_id
ORDER BY MAX(t.amount) DESC
LIMIT 1;


/* Q10. Calculate the customers average account balance.*/
SELECT 	AVG(balance)
FROM accounts;


/* Q11. List employees working in each branch.*/
SELECT 	b.branch_name,
        e.employee_name,
        e.designation
FROM branches b
INNER JOIN employees e
ON b.branch_id = e.branch_id;


/* Q12. Count customers in each city.*/
SELECT 	city,
		COUNT(customer_id) AS Number_of_customers
FROM customers
GROUP BY city;


/* Q13. Find inactive accounts.*/
SELECT	a.account_id,
		c.full_name,
        a.account_type,
        a.balance,
		a.status
FROM customers c
RIGHT JOIN accounts a
ON c.customer_id = a.customer_id
WHERE a.status = "Inactive";


/* Q14. Show customers whose balance exceeds ₹100,000.*/
SELECT 	c.customer_id,
		c.full_name,
        a.balance
FROM customers c
RIGHT JOIN accounts a
ON c.customer_id = a.customer_id
WHERE a.balance > 100000;


/* Q15.Rank customers by account balance (using window functions)*/
SELECT 	c.full_name,
		a.balance,
        ROW_NUMBER() OVER(ORDER BY a.balance DESC) AS row_num
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id;