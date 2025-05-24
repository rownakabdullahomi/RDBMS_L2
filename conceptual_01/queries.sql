ALTER TABLE books ADD COLUMN genre TEXT;

ALTER TABLE books DROP COLUMN genre;

ALTER TABLE books RENAME COLUMN author_name TO author;

SELECT * FROM books;

SELECT title, price FROM books;


SELECT * FROM books WHERE in_stock = TRUE;
SELECT * FROM books WHERE in_stock = FALSE;
SELECT * FROM books WHERE author = 'George Orwell';


SELECT title, LENGTH(title) FROM books;

SELECT COUNT(*) FROM books;

SELECT AVG(price) FROM books;

SELECT MAX(price), MIN(price) FROM books;

SELECT * FROM books WHERE price BETWEEN 150 AND 200;

SELECT * FROM books WHERE title LIKE 'The%';
SELECT * FROM books WHERE author LIKE '%Orwell%';

SELECT * FROM books WHERE title ILIKE 'the%';
SELECT * FROM books WHERE author ILIKE '%orwell%';

SELECT * FROM books WHERE author IN ('J.K. Rowling', 'George Orwell');

SELECT * FROM books LIMIT 4;
SELECT * FROM books LIMIT 4 OFFSET 4;

UPDATE books SET price = price * 1.10;

SELECT author, COUNT(*) FROM books GROUP BY author;

SELECT author, COUNT(*) FROM books GROUP BY author HAVING COUNT(*) > 1;

ALTER TABLE books DROP CONSTRAINT books_publisher_id_fkey;
ALTER TABLE books ADD CONSTRAINT books_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES publishers (id)
ON DELETE CASCADE;



DELETE FROM publishers WHERE id = 3;

SELECT * FROM books;
SELECT * FROM publishers;

SELECT b.title, p.name AS publisher FROM books b INNER JOIN publishers p ON b.publisher_id = p.id;
SELECT b.title, p.name, p.id AS publisher FROM books b LEFT JOIN publishers p ON b.publisher_id = p.id;
SELECT b.title, p.name, p.id AS publisher FROM books b RIGHT JOIN publishers p ON b.publisher_id = p.id;
SELECT b.title, p.name, p.id AS publisher FROM books b FULL JOIN publishers p ON b.publisher_id = p.id;

SELECT CURRENT_DATE;
 








