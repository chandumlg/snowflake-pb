
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_USER_LIFESPAN_BEACCB45_18_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT * FROM (
    SELECT
        
    
        Material_user_var_table_f8ad61b7_18.user_main_id
    
,
        Material_user_var_table_f8ad61b7_18.last_seen - Material_user_var_table_f8ad61b7_18.first_seen
	
	 AS user_lifespan
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_18
    
        
    WHERE 
    
        Material_user_var_table_f8ad61b7_18.user_main_id
    
 IS NOT NULL
    
    
)
    
);  


			 
	
	END;  
	