CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
);

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