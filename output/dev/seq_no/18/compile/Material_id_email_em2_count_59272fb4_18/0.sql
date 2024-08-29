
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_ID_EMAIL_EM2_COUNT_59272FB4_18_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT
            user_main_id,
            ANY_VALUE (id_email_em2_count) AS id_email_em2_count
        FROM (
    SELECT
        
    
        
        Material_user_id_stitcher_var_table_9494959f_18.user_main_id
    
,
        sum(case when other_id_type = 'email' and other_id='em2@e.com' then 1 else 0 end)
	
	 AS id_email_em2_count
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_18
    
        
        
        RIGHT JOIN CHANDU2.MATERIAL_USER_ID_STITCHER_VAR_TABLE_9494959F_18 USING
        
            (user_main_id)
        
        
    
    WHERE 
    
        
        Material_user_id_stitcher_var_table_9494959f_18.user_main_id
    
 IS NOT NULL
    
    
    GROUP BY 
    
        
        Material_user_id_stitcher_var_table_9494959f_18.user_main_id
    

    
)
        GROUP BY user_main_id
    
);  


			 
	
	END;  
	