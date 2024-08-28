CREATE TABLE seles_reps (
    id             NUMBER(4) NOT NULL,
    name           VARCHAR2(30),
    salary         NUMBER(8, 2),
    commission_pct NUMBER(2, 2),
    CONSTRAINT const_sales_reps_id PRIMARY KEY ( id )
);

SELECT
    * FROM seles_reps;


SELECT commission_pct,salary,nvl(commission_pct,0)as "commission_pct"
 FROM seles_reps;
    


    
SELECT
    *
FROM
    all_constraints;

SELECT
    *
FROM
    employees
WHERE
    job_id = 'IT_PROG';

INSERT INTO seles_reps (
    id,
    name,
    salary,
    commission_pct
)
    SELECT
        employee_id,
        last_name,
        salary,
        commission_pct
    FROM
        employees
    WHERE
        job_id LIKE '%SA_REP%';

COMMIT;  
  