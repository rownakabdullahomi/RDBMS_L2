CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE CASCADE
);
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE SET NULL
);
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE SET DEFAULT DEFAULT 2
);

DROP TABLE post;
DROP TABLE "user";

ALTER Table post
    ALTER COLUMN user_id SET NOT NULL;

INSERT INTO
    "user" (username) VALUES
    ('Akash'),
    ('Batash'),
    ('Sagor'),
    ('Nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash.', 2),
('Batash just shared an amazing recipe.', 1),
('Exploring adventures with Sagor.', 4),
('Nodi''s wisdom always leaves me inspired.', 4);

SELECT * FROM "user";
SELECT * FROM post;

INSERT INTO post (title, user_id) VALUES ('test', NULL);

DELETE FROM "user" 
    WHERE id = 4;


-- inner join
SELECT * FROM post
    JOIN "user" on post.user_id = "user".id;

SELECT title, username FROM post
    JOIN "user" on post.user_id = "user".id;

SELECT * FROM post AS p
    JOIN "user" AS u on p.user_id = u.id; 


INSERT INTO post (id, title, user_id) VALUES
(5, 'Enjoying a sunny day with Akash.', NULL);


-- left join / left outer join
SELECT * FROM post AS p
    LEFT JOIN "user" AS u on p.user_id = u.id;


-- right join / right outer join
SELECT * FROM post AS p
    RIGHT JOIN "user" AS u on p.user_id = u.id;


-- full join / full outer join
SELECT * FROM post AS p
    FULL JOIN "user" AS u on p.user_id = u.id;

-- cross join
SELECT * FROM post
    CROSS JOIN "user";

-- natural join
SELECT * FROM post
    NATURAL JOIN "user";