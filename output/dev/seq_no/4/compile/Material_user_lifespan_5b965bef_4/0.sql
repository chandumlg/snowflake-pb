
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_USER_LIFESPAN_5B965BEF_4_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT * FROM (
    SELECT
        
    
        Material_user_var_table_9f95e1be_4.user_main_id
    
,
        Material_user_var_table_9f95e1be_4.last_seen - Material_user_var_table_9f95e1be_4.first_seen
	
	 AS user_lifespan
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_9F95E1BE_4
    
        
    WHERE 
    
        Material_user_var_table_9f95e1be_4.user_main_id
    
 IS NOT NULL
    
    
)
    
);  


			 
	
	END;  
	