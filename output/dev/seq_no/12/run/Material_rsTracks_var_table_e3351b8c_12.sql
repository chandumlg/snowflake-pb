
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "RSTRACKS_VAR_TABLE___MATERIAL_RSTRACKS_2A8B6134_12" AS (

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
                
            
        
        
    

        
    

			
    

   CREATE OR REPLACE TABLE "MATERIAL_RSTRACKS_VAR_TABLE_E3351B8C_12" AS ((
        
            SELECT ROW_NUMBER()
            OVER(ORDER BY 1)
            AS input_row_id, RSTRACKS_VAR_TABLE___MATERIAL_RSTRACKS_2A8B6134_12.*
        
        FROM "CHANDU2"."RSTRACKS_VAR_TABLE___MATERIAL_RSTRACKS_2A8B6134_12"
    )
    );  



			
    
        
            
    
        
        
        
    
        
        
            
                
   DROP VIEW IF EXISTS "RSTRACKS_VAR_TABLE___MATERIAL_RSTRACKS_2A8B6134_12";  
            
        
        
    

        
    
 
	
	END;  
	