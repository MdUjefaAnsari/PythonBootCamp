

Part 1: Customer Reports


Report 1: Customer name and item for Pune customers' orders

sql
SELECT c.name, o.item
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
WHERE c.city = 'Pune'
ORDER BY c.name ASC, o.item ASC;
Use code with caution.

Report 2: Name and city of customers who never ordered

sql
SELECT c.name, c.city
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.id IS NULL
ORDER BY c.name ASC;
Use code with caution.

Report 3: ID, item, and amount of orders with no customer

sql
SELECT o.id, o.item, o.amount
FROM customers c
RIGHT JOIN orders o ON c.id = o.customer_id
WHERE c.id IS NULL
ORDER BY o.amount ASC;
Use code with caution.

Report 4: Every customer with their orders

sql
SELECT c.name, o.item, o.amount
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY c.name ASC, o.amount ASC;
Use code with caution.

Part 2: Sales Reports


Query 1: Each city with its total amount, biggest first

sql
SELECT c.city, SUM(o.amount) AS total
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
GROUP BY c.city
ORDER BY total DESC;
Use code with caution.

Query 2: Each item with its number of orders and total

sql
SELECT item, COUNT(*) AS num_orders, SUM(amount) AS total
FROM orders
GROUP BY item
ORDER BY num_orders DESC, item ASC;
