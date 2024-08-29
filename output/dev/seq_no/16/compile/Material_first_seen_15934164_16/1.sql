
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
			




    
    
    

    
        
        
            
            
            CREATE OR REPLACE PROCEDURE "MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_ADD_COL_SAME_DATA_TYPE"()
            RETURNS STRING
            LANGUAGE SQL
            AS
            $$
            DECLARE
                DATA_TYPE VARCHAR;
                PRECISION_VAL INT;
                SCALE_VAL INT;
                ALTER_STMT VARCHAR;
            BEGIN
                SELECT DATA_TYPE::VARCHAR, NUMERIC_PRECISION::INT, NUMERIC_SCALE::INT
                INTO DATA_TYPE, PRECISION_VAL, SCALE_VAL
                FROM INFORMATION_SCHEMA.COLUMNS
                WHERE TABLE_NAME = UPPER('MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_TRANSIENT_EV_VIEW')
                AND COLUMN_NAME = UPPER('first_seen')
                AND TABLE_SCHEMA = UPPER('CHANDU2');
                IF (PRECISION_VAL IS NULL OR SCALE_VAL IS NULL) THEN
                    ALTER_STMT := 'ALTER TABLE CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_16 ADD COLUMN FIRST_SEEN_684 ' || DATA_TYPE;
                ELSE
                    ALTER_STMT := 'ALTER TABLE CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_16 ADD COLUMN FIRST_SEEN_684 ' || DATA_TYPE || '(' || PRECISION_VAL || ',' || SCALE_VAL || ')';
                END IF;
                EXECUTE IMMEDIATE ALTER_STMT;
                RETURN 'Column added successfully.';
            END;
            $$;
        
    

    

    

    
        
         
            CALL "MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_ADD_COL_SAME_DATA_TYPE"();
            
                DROP PROCEDURE "MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_ADD_COL_SAME_DATA_TYPE"();
            
        
        UPDATE CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_16 varTable
        SET FIRST_SEEN_684 = MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_TRANSIENT_EV_VIEW.first_seen
        FROM CHANDU2.MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_TRANSIENT_EV_VIEW
        WHERE varTable.user_main_id = MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_TRANSIENT_EV_VIEW.user_main_id;
    

    ALTER TABLE "CHANDU2"."MATERIAL_USER_VAR_TABLE_F8AD61B7_16" RENAME COLUMN FIRST_SEEN_684 TO first_seen;


   DROP VIEW IF EXISTS "MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_TRANSIENT_EV_VIEW";  

/* Handle default setting */



			
    
        
            
    
        
        
        
    
        
        
            
                
   DROP VIEW IF EXISTS "FIRST_SEEN___MATERIAL_RSTRACKS_2A8B6134_16";  
            
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    
 
	
	END;  
	