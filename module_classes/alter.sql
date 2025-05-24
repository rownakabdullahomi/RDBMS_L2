SELECT * FROM person2;

ALTER TABLE person2
    ADD COLUMN email VARCHAR(30) DEFAULT 'default@email.com' NOT NULL;

INSERT INTO person2 VALUES(7, 'Rafiq', 33, 'test@mail.com');

ALTER TABLE person2
    DROP COLUMN email;

ALTER TABLE person2
    RENAME COLUMN age to user_age;


ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(50);


ALTER TABLE person2
    ALTER COLUMN user_age SET NOT NULL;

ALTER TABLE person2
    ALTER COLUMN user_age DROP NOT NULL;

ALTER TABLE person2
    ADD CONSTRAINT unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person2
    DROP CONSTRAINT unique_person2_user_age;

ALTER TABLE person2
    ADD CONSTRAINT pk_person2_user_age PRIMARY KEY(user_age);


