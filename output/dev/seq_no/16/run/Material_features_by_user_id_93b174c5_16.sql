 
   CREATE OR REPLACE VIEW "MATERIAL_FEATURES_BY_USER_ID_93B174C5_16" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			

 
 


/* Macros */

/* endMacros */


    
    

    
    SELECT DISTINCT MATERIAL_USER_ID_STITCHER_ED62A9A5_16.other_id AS user_id
                
             , Material_user_feature_view_e247d55b_16.days_active 
             , Material_user_feature_view_e247d55b_16.id_type_email_count 
             , Material_user_feature_view_e247d55b_16.user_lifespan 
            FROM "CHANDU2"."MATERIAL_USER_FEATURE_VIEW_E247D55B_16"
            INNER JOIN "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_16"
            ON Material_user_feature_view_e247d55b_16.user_main_id =  MATERIAL_USER_ID_STITCHER_ED62A9A5_16.user_main_id
            WHERE MATERIAL_USER_ID_STITCHER_ED62A9A5_16.other_id_type = 'user_id'



			
    
        
            
        
    

			);  