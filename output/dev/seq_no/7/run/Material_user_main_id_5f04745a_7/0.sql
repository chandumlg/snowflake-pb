
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "USER_MAIN_ID___MATERIAL_RSTRACKS_2A8B6134_7" AS (

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
                
            
        
        
    
        
        
        
    
        
        
        
    

        
    

			










   CREATE OR REPLACE VIEW "MATERIAL_USER_MAIN_ID_5F04745A_7_INTERNAL_TRANSIENT_IV_VIEW" AS (
    
    
    
    
                SELECT 
                input_row_id, 
                COALESCE(NULL, TempIdsAlias_user_1.user_main_id) AS user_main_id
                FROM CHANDU2.MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_7 
                
                LEFT JOIN CHANDU2.MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_7 AS TempIdsAlias_user_1
                    ON anonymous_id = TempIdsAlias_user_1.other_id
                    AND 'anonymous_id' = TempIdsAlias_user_1.other_id_type
                
                
        
    
);  
			 
	
	END;  
	