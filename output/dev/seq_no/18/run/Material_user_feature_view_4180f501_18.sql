 
   CREATE OR REPLACE VIEW "MATERIAL_USER_FEATURE_VIEW_4180F501_18" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			

 
 


/* Macros */

/* endMacros */


    
    

    

    , distinct_served_ids AS (
        SELECT DISTINCT
            user_main_id
        FROM "CHANDU2"."MATERIAL_USER_VAR_TABLE_F8AD61B7_18"
    )

    
        
    
        
        , user_all_var_table_CTE AS (
            SELECT DISTINCT Material_user_var_table_f8ad61b7_18.user_main_id as user_main_id
            
                
                     , MATERIAL_USER_VAR_TABLE_F8AD61B7_18.DAYS_ACTIVE 
            
                
                     , MATERIAL_USER_VAR_TABLE_F8AD61B7_18.ID_EMAIL_EM2_COUNT 
            
                
                     , MATERIAL_USER_VAR_TABLE_F8AD61B7_18.USER_LIFESPAN 
            
            FROM "CHANDU2"."MATERIAL_USER_VAR_TABLE_F8AD61B7_18"
                
                    
                
        )
        

    

    

    SELECT
    distinct_served_ids.user_main_id
    
        
            
            
                
                 , user_all_var_table_CTE.days_active 
             
                
                 , user_all_var_table_CTE.id_email_em2_count 
             
                
                 , user_all_var_table_CTE.user_lifespan 
             
            
        
    
    FROM
    distinct_served_ids
    
        
            
                LEFT JOIN user_all_var_table_CTE USING (user_main_id)
            
        
    

    



			
    
        
            
        
    

			);  