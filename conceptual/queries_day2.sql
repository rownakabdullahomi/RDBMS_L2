-- Active: 1747460106983@@localhost@5432@conceptual_1
SELECT * FROM publishers;

SELECT * FROM books;

SELECT b.title, b.author, p.name AS publisher FROM books b CROSS JOIN publishers p;

ALTER TABLE publishers ADD COLUMN publisher_id SERIAL;

SELECT * FROM books NATURAL JOIN publishers;

SELECT title, price, author from books
WHERE price > (
    SELECT AVG(price) FROM books
);

SELECT name FROM publishers WHERE id IN (
    SELECT publisher_id FROM books GROUP BY publisher_id HAVING COUNT (*) > 1
)