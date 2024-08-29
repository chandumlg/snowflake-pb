
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    

        
    

			
    

   CREATE OR REPLACE TABLE "MATERIAL_USER_ID_STITCHER_VAR_TABLE_9494959F_16" AS ((
        
            SELECT ROW_NUMBER()
            OVER(ORDER BY 1)
            AS input_row_id, MATERIAL_USER_ID_STITCHER_ED62A9A5_16.*
        
        FROM "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_16"
    )
    );  



			
    
        
            
    
        
        
        
    

        
    
 
	
	END;  
	