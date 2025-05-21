CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employees2;
$$;

SELECT emp_count();

CREATE OR REPLACE Function delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees2 WHERE employee_id = 30;
$$;

SELECT delete_emp();


CREATE OR REPLACE Function delete_emp_by_id(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees2 WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_by_id(29);