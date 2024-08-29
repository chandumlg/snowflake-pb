
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
			



    
    
    

    
        
        
            
            
            CREATE OR REPLACE PROCEDURE "MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_ADD_COL_SAME_DATA_TYPE"()
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
                WHERE TABLE_NAME = UPPER('MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_TRANSIENT_IV_VIEW')
                AND COLUMN_NAME = UPPER('user_main_id')
                AND TABLE_SCHEMA = UPPER('CHANDU2');
                IF (PRECISION_VAL IS NULL OR SCALE_VAL IS NULL) THEN
                    ALTER_STMT := 'ALTER TABLE CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_4 ADD COLUMN USER_MAIN_ID_495 ' || DATA_TYPE;
                ELSE
                    ALTER_STMT := 'ALTER TABLE CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_4 ADD COLUMN USER_MAIN_ID_495 ' || DATA_TYPE || '(' || PRECISION_VAL || ',' || SCALE_VAL || ')';
                END IF;
                EXECUTE IMMEDIATE ALTER_STMT;
                RETURN 'Column added successfully.';
            END;
            $$;
        
    

    

    

    
        
         
            CALL "MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_ADD_COL_SAME_DATA_TYPE"();
            
                DROP PROCEDURE "MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_ADD_COL_SAME_DATA_TYPE"();
            
        
        UPDATE CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_4 varTable
        SET USER_MAIN_ID_495 = MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_TRANSIENT_IV_VIEW.user_main_id
        FROM CHANDU2.MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_TRANSIENT_IV_VIEW
        WHERE varTable.input_row_id = MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_TRANSIENT_IV_VIEW.input_row_id;
    

    ALTER TABLE "CHANDU2"."MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_4" RENAME COLUMN USER_MAIN_ID_495 TO user_main_id;


   DROP VIEW IF EXISTS "MATERIAL_USER_MAIN_ID_5F04745A_4_INTERNAL_TRANSIENT_IV_VIEW";  


			
    
        
            
    
        
        
        
    
        
        
            
                
   DROP VIEW IF EXISTS "USER_MAIN_ID___MATERIAL_RSTRACKS_2A8B6134_4";  
            
        
        
    
        
        
        
    
        
        
        
    

        
    
 
	
	END;  
	