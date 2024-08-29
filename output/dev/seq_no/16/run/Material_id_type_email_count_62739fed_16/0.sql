
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_ID_TYPE_EMAIL_COUNT_62739FED_16_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT
            user_main_id,
            ANY_VALUE (id_type_email_count) AS id_type_email_count
        FROM (
    SELECT
        
    
        
        Material_user_id_stitcher_var_table_9494959f_16.user_main_id
    
,
        sum(case when other_id_type = 'user_id' then 1 else 0 end)
	
	 AS id_type_email_count
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_16
    
        
        
        RIGHT JOIN CHANDU2.MATERIAL_USER_ID_STITCHER_VAR_TABLE_9494959F_16 USING
        
            (user_main_id)
        
        
    
    WHERE 
    
        
        Material_user_id_stitcher_var_table_9494959f_16.user_main_id
    
 IS NOT NULL
    
    
    GROUP BY 
    
        
        Material_user_id_stitcher_var_table_9494959f_16.user_main_id
    

    
)
        GROUP BY user_main_id
    
);  


			 
	
	END;  
	