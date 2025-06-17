--TO craeate a new oracle connection
-- username= test && password=test any other password is not working.

CREATE USER test IDENTIFIED BY test;


GRANT DBA to test;


SELECT username, account_status FROM dba_users where username='TEST';

SELECT * FROM dba_users;


ALTER USER test ACCOUNT UNLOCK;

