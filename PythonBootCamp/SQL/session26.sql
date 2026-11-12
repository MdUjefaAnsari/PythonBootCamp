CREATE DATABASE library_db;

USE library_db;

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    copies INT DEFAULT 1 CHECK (copies >= 0)
);


CREATE TABLE members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE loans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,

    FOREIGN KEY (member_id) REFERENCES members(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

INSERT INTO books (title)
VALUES
('Wings of Fire'),
('Godan'),
('Malgudi Days');


INSERT INTO members (name, email)
VALUES
('Anita', 'anita@gmail.com'),
('Bilal', 'bilal@gmail.com'),
('Chitra', 'chitra@gmail.com');



INSERT INTO loans (member_id, book_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(2, 2);


SELECT
    members.name,
    COUNT(loans.book_id) AS num_books
FROM members
LEFT JOIN loans
ON members.id = loans.member_id
GROUP BY members.id, members.name
ORDER BY members.name ASC;



SELECT
    members.name,
    COUNT(loans.book_id) AS num_books
FROM members
INNER JOIN loans
ON members.id = loans.member_id
GROUP BY members.id, members.name
HAVING COUNT(loans.book_id) >= 2;



INSERT INTO loans (member_id, book_id)
VALUES (99, 1);


Cannot add or update a child row:
a foreign key constraint fails