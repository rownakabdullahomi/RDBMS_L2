CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);