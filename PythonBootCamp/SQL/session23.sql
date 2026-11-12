INSERT INTO items (id, item, category, price, stock)
VALUES 
  (15, 'Paratha', 'Meal', 40, 25),
  (16, 'Thali', 'Meal', 90, 4);


UPDATE items
SET price = price + 1
WHERE category = 'Snack';

UPDATE items
SET stock = stock - 5
WHERE item = 'Paratha';

UPDATE items
SET stock = stock - 4
WHERE item = 'Thali';


SELECT * 
FROM items 
WHERE stock = 0;


DELETE FROM items 
WHERE stock = 0;


SELECT item, category, price, stock
FROM items
ORDER BY category ASC, item ASC;
