 
   CREATE OR REPLACE VIEW "MATERIAL_FEATURES_BY_USER_ID_D8296B37_14" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			

 
 


/* Macros */

/* endMacros */


    
    

    
    SELECT DISTINCT MATERIAL_USER_ID_STITCHER_ED62A9A5_14.other_id AS user_id
                
             , Material_user_feature_view_61a12954_14.days_active 
             , Material_user_feature_view_61a12954_14.id_type_email_count 
             , Material_user_feature_view_61a12954_14.user_lifespan 
            FROM "CHANDU2"."MATERIAL_USER_FEATURE_VIEW_61A12954_14"
            INNER JOIN "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_14"
            ON Material_user_feature_view_61a12954_14.user_main_id =  MATERIAL_USER_ID_STITCHER_ED62A9A5_14.user_main_id
            WHERE MATERIAL_USER_ID_STITCHER_ED62A9A5_14.other_id_type = 'user_id'



			
    
        
            
        
    

			);  