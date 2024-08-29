 
   CREATE OR REPLACE VIEW "MATERIAL_FEATURES_BY_USER_ID_7AC7EF04_18" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			

 
 


/* Macros */

/* endMacros */


    
    

    
    SELECT DISTINCT MATERIAL_USER_ID_STITCHER_ED62A9A5_18.other_id AS user_id
                
             , Material_user_feature_view_4180f501_18.days_active 
             , Material_user_feature_view_4180f501_18.id_email_em2_count 
             , Material_user_feature_view_4180f501_18.user_lifespan 
            FROM "CHANDU2"."MATERIAL_USER_FEATURE_VIEW_4180F501_18"
            INNER JOIN "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_18"
            ON Material_user_feature_view_4180f501_18.user_main_id =  MATERIAL_USER_ID_STITCHER_ED62A9A5_18.user_main_id
            WHERE MATERIAL_USER_ID_STITCHER_ED62A9A5_18.other_id_type = 'user_id'



			
    
        
            
        
    

			);  