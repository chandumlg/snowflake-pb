 
   CREATE OR REPLACE VIEW "MATERIAL_USER_USERS_WITH_VALID_EMAIL_F285450D_18" AS (





























			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    
        
        
        
    
        
        
        
    
        
        
        
    

        
    

			


    
        
        
        
        SELECT DISTINCT user_main_id FROM CHANDU2.MATERIAL_USER_VAR_TABLE_F8AD61B7_18
        
            
        WHERE
            
                
                    (NOT 
                        Material_user_var_table_f8ad61b7_18.id_email_em2_count >= 1 )
                
                
                
            
        
    


			
    
        
            
        
    

			);  