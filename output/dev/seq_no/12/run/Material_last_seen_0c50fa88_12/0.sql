
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "LAST_SEEN___MATERIAL_RSTRACKS_2A8B6134_12" AS (

SELECT
    *
FROM
    "CHANDU2"."DEMO_RS_TRACKS"

WHERE
    
        ((
         CAST(timestamp AS TIMESTAMP) <= CAST('2024-08-28T19:03:23.97915Z' AS timestamp)
        )
         OR timestamp IS NULL )
    


);  
                
            
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			












   CREATE OR REPLACE VIEW "MATERIAL_LAST_SEEN_0C50FA88_12_INTERNAL_TRANSIENT_EV_VIEW" AS (
    
        SELECT
            user_main_id,
            ANY_VALUE (last_seen) AS last_seen
        FROM (
    SELECT
        
    
        
        Material_rsTracks_var_table_e3351b8c_12.user_main_id
    
,
        max(cast(timestamp as date))
	
	 AS last_seen
    FROM CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_12
    
        
        
        RIGHT JOIN CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_12 USING
        (user_main_id)
        
        
    
    WHERE 
    
        
        Material_rsTracks_var_table_e3351b8c_12.user_main_id
    
 IS NOT NULL
    
    
    GROUP BY 
    
        
        Material_rsTracks_var_table_e3351b8c_12.user_main_id
    

    
)
        GROUP BY user_main_id
    
);  


			 
	
	END;  
	