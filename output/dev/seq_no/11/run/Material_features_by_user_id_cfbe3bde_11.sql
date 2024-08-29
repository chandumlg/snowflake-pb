 
   CREATE OR REPLACE VIEW "MATERIAL_FEATURES_BY_USER_ID_CFBE3BDE_11" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			

 
 


/* Macros */

/* endMacros */


    
    

    
    SELECT DISTINCT MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_11.other_id AS user_id
                
             , Material_user_feature_view_76a6934b_11.days_active 
             , Material_user_feature_view_76a6934b_11.user_lifespan 
            FROM "CHANDU2"."MATERIAL_USER_FEATURE_VIEW_76A6934B_11"
            INNER JOIN "CHANDU2"."MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_11"
            ON Material_user_feature_view_76a6934b_11.user_main_id =  MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_11.user_main_id
            WHERE MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_11.other_id_type = 'user_id'



			
    
        
            
        
    

			);  