CREATE SEQUENCE sales_reps_id
  INCREMENT BY 1 START WITH 140 MAXVALUE 99999 
  NOCACHE
  NOCYCLE;
  
 drop SEQUENCE sales_reps_id;
  ROLLBACK;
  
  select sales_reps_id.currval
  from dual;
  
  select sales_reps_id.nextval
  from dual;
  
  INSERT INTO sales_reps VALUES (sales_reps_id.nextval,'Sofiq',60000,0.04);
  
  SELECT
      * FROM sales_reps
      ORDER BY id;
      
  ROLLBACK;