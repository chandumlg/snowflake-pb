 
   CREATE OR REPLACE VIEW "MATERIAL_FEATURES_BY_USER_ID_036EB2EB_12" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			

 
 


/* Macros */

/* endMacros */


    
    

    
    SELECT DISTINCT MATERIAL_USER_ID_STITCHER_ED62A9A5_12.other_id AS user_id
                
             , Material_user_feature_view_1273093d_12.days_active 
             , Material_user_feature_view_1273093d_12.user_lifespan 
            FROM "CHANDU2"."MATERIAL_USER_FEATURE_VIEW_1273093D_12"
            INNER JOIN "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_12"
            ON Material_user_feature_view_1273093d_12.user_main_id =  MATERIAL_USER_ID_STITCHER_ED62A9A5_12.user_main_id
            WHERE MATERIAL_USER_ID_STITCHER_ED62A9A5_12.other_id_type = 'user_id'



			
    
        
            
        
    

			);  