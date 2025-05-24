ALTER TABLE books ADD COLUMN genre TEXT;

ALTER TABLE books DROP COLUMN genre;

ALTER TABLE books RENAME COLUMN author_name TO author;

SELECT * FROM books;

SELECT title, price FROM books;


SELECT * FROM books WHERE in_stock = TRUE;
SELECT * FROM books WHERE in_stock = FALSE;