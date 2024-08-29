
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
			




    
    
    

    
        
        
            
            
            CREATE OR REPLACE PROCEDURE "MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_ADD_COL_SAME_DATA_TYPE"()
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
                WHERE TABLE_NAME = UPPER('MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_TRANSIENT_EV_VIEW')
                AND COLUMN_NAME = UPPER('user_lifespan')
                AND TABLE_SCHEMA = UPPER('CHANDU2');
                IF (PRECISION_VAL IS NULL OR SCALE_VAL IS NULL) THEN
                    ALTER_STMT := 'ALTER TABLE CHANDU2.MATERIAL_USER_VAR_TABLE_9F95E1BE_6 ADD COLUMN USER_LIFESPAN_705 ' || DATA_TYPE;
                ELSE
                    ALTER_STMT := 'ALTER TABLE CHANDU2.MATERIAL_USER_VAR_TABLE_9F95E1BE_6 ADD COLUMN USER_LIFESPAN_705 ' || DATA_TYPE || '(' || PRECISION_VAL || ',' || SCALE_VAL || ')';
                END IF;
                EXECUTE IMMEDIATE ALTER_STMT;
                RETURN 'Column added successfully.';
            END;
            $$;
        
    

    

    

    
        
         
            CALL "MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_ADD_COL_SAME_DATA_TYPE"();
            
                DROP PROCEDURE "MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_ADD_COL_SAME_DATA_TYPE"();
            
        
        UPDATE CHANDU2.MATERIAL_USER_VAR_TABLE_9F95E1BE_6 varTable
        SET USER_LIFESPAN_705 = MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_TRANSIENT_EV_VIEW.user_lifespan
        FROM CHANDU2.MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_TRANSIENT_EV_VIEW
        WHERE varTable.user_main_id = MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_TRANSIENT_EV_VIEW.user_main_id;
    

    ALTER TABLE "CHANDU2"."MATERIAL_USER_VAR_TABLE_9F95E1BE_6" RENAME COLUMN USER_LIFESPAN_705 TO user_lifespan;


   DROP VIEW IF EXISTS "MATERIAL_USER_LIFESPAN_5B965BEF_6_INTERNAL_TRANSIENT_EV_VIEW";  

/* Handle default setting */



			
    
        
            
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    
 
	
	END;  
	