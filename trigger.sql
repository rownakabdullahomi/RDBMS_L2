CREATE Table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO my_users VALUES ('Mezba', 'mezba@mail.com'), ('Mir', 'mir@mail.com');

SELECT * FROM my_users;

SELECT * FROM deleted_users_audit;

CREATE TABLE deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);



CREATE OR REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
        INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'deleted user audit log created';
        RETURN OLD;
    END
$$




CREATE OR REPLACE TRIGGER save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

DELETE FROM my_users WHERE user_name = 'Mir';