 
   CREATE OR REPLACE VIEW "MATERIAL_USER_FEATURE_VIEW_76A6934B_11" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			

 
 


/* Macros */

/* endMacros */


    
    

    

    , distinct_served_ids AS (
        SELECT DISTINCT
            user_main_id
        FROM "CHANDU2"."MATERIAL_USER_VAR_TABLE_9F95E1BE_11"
    )

    
        
    
        
        , user_all_var_table_CTE AS (
            SELECT DISTINCT Material_user_var_table_9f95e1be_11.user_main_id as user_main_id
            
                
                     , MATERIAL_USER_VAR_TABLE_9F95E1BE_11.DAYS_ACTIVE 
            
                
                     , MATERIAL_USER_VAR_TABLE_9F95E1BE_11.USER_LIFESPAN 
            
            FROM "CHANDU2"."MATERIAL_USER_VAR_TABLE_9F95E1BE_11"
                
                    
                
        )
        

    

    

    SELECT
    distinct_served_ids.user_main_id
    
        
            
            
                
                 , user_all_var_table_CTE.days_active 
             
                
                 , user_all_var_table_CTE.user_lifespan 
             
            
        
    
    FROM
    distinct_served_ids
    
        
            
                LEFT JOIN user_all_var_table_CTE USING (user_main_id)
            
        
    

    



			
    
        
            
        
    

			);  