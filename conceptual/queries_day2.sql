-- Active: 1747460106983@@localhost@5432@conceptual_1
SELECT * FROM publishers;

SELECT * FROM books;

SELECT b.title, b.author, p.name AS publisher FROM books b CROSS JOIN publishers p;