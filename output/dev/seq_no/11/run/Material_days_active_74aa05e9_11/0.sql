
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "DAYS_ACTIVE___MATERIAL_RSTRACKS_2A8B6134_11" AS (

SELECT
    *
FROM
    "CHANDU2"."DEMO_RS_TRACKS"

WHERE
    
        ((
         CAST(timestamp AS TIMESTAMP) <= CAST('2024-08-28T18:54:19.129975Z' AS timestamp)
        )
         OR timestamp IS NULL )
    


);  
                
            
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_DAYS_ACTIVE_74AA05E9_11_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT
            user_main_id,
            ANY_VALUE (days_active) AS days_active
        FROM (
    SELECT
        
    
        
        Material_rsTracks_var_table_e3351b8c_11.user_main_id
    
,
        count(distinct cast(timestamp as date))
	
	 AS days_active
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_9F95E1BE_11
    
        
        
        RIGHT JOIN CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_11 USING
        (user_main_id)
        
        
    
    WHERE 
    
        
        Material_rsTracks_var_table_e3351b8c_11.user_main_id
    
 IS NOT NULL
    
    
    GROUP BY 
    
        
        Material_rsTracks_var_table_e3351b8c_11.user_main_id
    

    
)
        GROUP BY user_main_id
    
);  


			 
	
	END;  
	