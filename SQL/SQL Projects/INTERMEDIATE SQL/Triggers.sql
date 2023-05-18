-- Trigegers in SQL are special types of stored procedures that are executed automatically in response to certain events, such as an insert, update, or delete operation on a table.
-- There are two types of triggers in SQL:
-- 1.Before triggers: These triggers are executed before the triggering event occurs, such as a row being inserted, updated, or deleted.
-- 2 After triggers : These triggers are executed after the triggering event occcurs.
CREATE TRIGGER log_changes
AFTER INSERT , UPDATE,DELETE 
ON my_table 
FOR EACH ROW
BEGIN
	IF(INSERTING) THEN 
   		 INSERT INTO log_table (operation, table_name, record_id)
		 VALUES ('INSERT', 'my_table',NEW.id);
    ELSEIF (UPDATING) THEN 
    	 INSERT INTO log_table (operation, table_name, record_id)
         VALUES ('UPDATE', 'my_table', NEW.id);
    ELSEIF (DELETING) THEN
        INSERT INTO log_table (operation, table_name, record_id)
        VALUES ('DELETE', 'my_table', OLD.id);
    END IF;
END;
-- In this example, the trigger logs changes to the my_table table by inserting a record into the log_table table whenever a row is inserted, updated, or deleted from my_table. The NEW and OLD keywords refer to the new and old values of the row being affected by the triggering event.
    