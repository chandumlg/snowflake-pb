
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "FIRST_SEEN___MATERIAL_RSTRACKS_2A8B6134_7" AS (

SELECT
    *
FROM
    "CHANDU2"."DEMO_RS_TRACKS"

WHERE
    
        ((
         CAST(timestamp AS TIMESTAMP) <= CAST('2024-08-28T02:47:01.275304Z' AS timestamp)
        )
         OR timestamp IS NULL )
    


);  
                
            
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_FIRST_SEEN_8EE49199_7_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT
            user_main_id,
            ANY_VALUE (first_seen) AS first_seen
        FROM (
    SELECT
        
    
        
        Material_rsTracks_var_table_e3351b8c_7.user_main_id
    
,
        min(cast(timestamp as date))
	
	 AS first_seen
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_9F95E1BE_7
    
        
        
        RIGHT JOIN CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_7 USING
        (user_main_id)
        
        
    
    WHERE 
    
        
        Material_rsTracks_var_table_e3351b8c_7.user_main_id
    
 IS NOT NULL
    
    
    GROUP BY 
    
        
        Material_rsTracks_var_table_e3351b8c_7.user_main_id
    

    
)
        GROUP BY user_main_id
    
);  


			 
	
	END;  
	