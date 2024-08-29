
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "FIRST_SEEN___MATERIAL_RSTRACKS_2A8B6134_16" AS (

SELECT
    *
FROM
    "CHANDU2"."DEMO_RS_TRACKS"

WHERE
    
        ((
         CAST(timestamp AS TIMESTAMP) <= CAST('2024-08-29T02:25:20.806756Z' AS timestamp)
        )
         OR timestamp IS NULL )
    


);  
                
            
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_FIRST_SEEN_15934164_16_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT
            user_main_id,
            ANY_VALUE (first_seen) AS first_seen
        FROM (
    SELECT
        
    
        
        Material_rsTracks_var_table_e3351b8c_16.user_main_id
    
,
        min(cast(timestamp as date))
	
	 AS first_seen
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_16
    
        
        
        RIGHT JOIN CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_16 USING
        (user_main_id)
        
        
    
    WHERE 
    
        
        Material_rsTracks_var_table_e3351b8c_16.user_main_id
    
 IS NOT NULL
    
    
    GROUP BY 
    
        
        Material_rsTracks_var_table_e3351b8c_16.user_main_id
    

    
)
        GROUP BY user_main_id
    
);  


			 
	
	END;  
	