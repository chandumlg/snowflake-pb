
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  





























			
    
        
            
    
        
        
        
    
        
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "USER_DEFAULT_ID_STITCHER___MATERIAL_RSTRACKS_2A8B6134_6" AS (

SELECT
    *
FROM
    "CHANDU2"."DEMO_RS_TRACKS"

WHERE
    
        ((
         CAST(timestamp AS TIMESTAMP) <= CAST('2024-08-28T02:36:18.9891Z' AS timestamp)
        )
         OR timestamp IS NULL )
    


);  
                
            
        
        
    
        
        
            
                
                
   CREATE OR REPLACE VIEW "USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6" AS (

SELECT
    *
FROM
    "CHANDU2"."DEMO_RS_IDENTIFIES"

WHERE
    
        ((
         CAST(timestamp AS TIMESTAMP) <= CAST('2024-08-28T02:36:18.9891Z' AS timestamp)
        )
         OR timestamp IS NULL )
    


);  
                
            
        
        
    

        
    

			/* Set template variables */






    








/* Macros */





















/* endMacros */




   BEGIN

    
        
    
        
            
            BEGIN 
    
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW 
        (
            id1 varchar,
            id1_type varchar,
            id2 varchar,
            id2_type varchar,
            valid_at timestamp)
    ;  
        
            
                
        
            
                
                    
                        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" (id1, id1_type, id2, id2_type, valid_at) 
                            WITH temporary_IDedges as (
                            SELECT
                                user_id AS id1_temp,
                                'user_id' AS id1_type,
                                user_id AS id2_temp,
                                'user_id' AS id2_type,
                                CAST(MIN(timestamp) AS timestamp) AS valid_at
                            FROM "CHANDU2"."USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6"
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;  
                
            
                
                    
                        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" (id1, id1_type, id2, id2_type, valid_at) 
                            WITH temporary_IDedges as (
                            SELECT
                                user_id AS id1_temp,
                                'user_id' AS id1_type,
                                anonymous_id AS id2_temp,
                                'anonymous_id' AS id2_type,
                                CAST(MIN(timestamp) AS timestamp) AS valid_at
                            FROM "CHANDU2"."USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6"
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;  
                
            
                
                    
                        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" (id1, id1_type, id2, id2_type, valid_at) 
                            WITH temporary_IDedges as (
                            SELECT
                                user_id AS id1_temp,
                                'user_id' AS id1_type,
                                lower(email) AS id2_temp,
                                'email' AS id2_type,
                                CAST(MIN(timestamp) AS timestamp) AS valid_at
                            FROM "CHANDU2"."USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6"
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;  
                
            
        
            
                
                    
                
            
                
                    
                        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" (id1, id1_type, id2, id2_type, valid_at) 
                            WITH temporary_IDedges as (
                            SELECT
                                anonymous_id AS id1_temp,
                                'anonymous_id' AS id1_type,
                                anonymous_id AS id2_temp,
                                'anonymous_id' AS id2_type,
                                CAST(MIN(timestamp) AS timestamp) AS valid_at
                            FROM "CHANDU2"."USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6"
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;  
                
            
                
                    
                        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" (id1, id1_type, id2, id2_type, valid_at) 
                            WITH temporary_IDedges as (
                            SELECT
                                anonymous_id AS id1_temp,
                                'anonymous_id' AS id1_type,
                                lower(email) AS id2_temp,
                                'email' AS id2_type,
                                CAST(MIN(timestamp) AS timestamp) AS valid_at
                            FROM "CHANDU2"."USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6"
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;  
                
            
        
            
                
                    
                
            
                
                    
                
            
                
                    
                        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" (id1, id1_type, id2, id2_type, valid_at) 
                            WITH temporary_IDedges as (
                            SELECT
                                lower(email) AS id1_temp,
                                'email' AS id1_type,
                                lower(email) AS id2_temp,
                                'email' AS id2_type,
                                CAST(MIN(timestamp) AS timestamp) AS valid_at
                            FROM "CHANDU2"."USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6"
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;  
                
            
        

            
        
    
        
            
                
        
            
                
                    
                        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" (id1, id1_type, id2, id2_type, valid_at) 
                            WITH temporary_IDedges as (
                            SELECT
                                anonymous_id AS id1_temp,
                                'anonymous_id' AS id1_type,
                                anonymous_id AS id2_temp,
                                'anonymous_id' AS id2_type,
                                CAST(MIN(timestamp) AS timestamp) AS valid_at
                            FROM "CHANDU2"."USER_DEFAULT_ID_STITCHER___MATERIAL_RSTRACKS_2A8B6134_6"
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;  
                
            
        

            
        
    

    
   DELETE FROM "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW" WHERE 
        (id1_type NOT IN (
    'anonymous_id', 'email', 'user_id'
) OR id2_type NOT IN (
    'anonymous_id', 'email', 'user_id'
))
    ;  
            
        
            
        
            
        

        
        
            
   CREATE OR REPLACE TABLE "CHANDU2"."MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES" AS (
            SELECT
                id1,
                id1_type,
                id2,
                id2_type,
                LEAST(
                    
    
    'rid' || left(sha1(concat(left(sha1('fe971b24-9572-4005-b22f-351e9c09274d' || NVL(id1,'')),32),NVL(id1_type,''))),32)
    
,
                    
    
    'rid' || left(sha1(concat(left(sha1('fe971b24-9572-4005-b22f-351e9c09274d' || NVL(id2,'')),32),NVL(id2_type,''))),32)
    

                ) AS user_main_id,
                MIN(valid_at) as valid_at
            FROM MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW
            WHERE
                id1 IS NOT NULL
                AND id1_type IS NOT NULL
                AND id2 IS NOT NULL
                AND id2_type IS NOT NULL
            GROUP BY id1, id2, id1_type, id2_type
        );  
        

        DROP TABLE MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES_RAW;

        
   CREATE OR REPLACE TABLE "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING" 
    (
        node_id varchar,
        node_id_type varchar,
        user_main_id varchar,
        valid_at timestamp,
        first_seen_at timestamp,
        user_main_id_dist int,
        stitching_active int)
;  
        
   CREATE OR REPLACE TABLE "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_FINISHED_MAPPING" 
    (
        node_id varchar,
        node_id_type varchar,
        user_main_id varchar,
        valid_at timestamp,
        first_seen_at timestamp,
        user_main_id_dist int,
        stitching_active int)
;  

        
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING" (node_id, node_id_type, user_main_id, valid_at, first_seen_at, user_main_id_dist, stitching_active) 
            SELECT
                id1 AS node_id,
                id1_type AS node_id_type,
                user_main_id,
                valid_at,
                valid_at AS first_seen_at,
                0 AS user_main_id_dist,
                0 AS stitching_active
            FROM
                "CHANDU2"."MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES"
            UNION ALL
            SELECT
                id2 AS node_id,
                id2_type AS node_id_type,
                user_main_id,
                valid_at,
                valid_at AS first_seen_at,
                0 AS user_main_id_dist,
                0 AS stitching_active
            FROM
                "CHANDU2"."MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_EDGES"
        ;  

        
   CREATE OR REPLACE TABLE "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING" AS (
    (SELECT
        node_id,
        node_id_type,
        user_main_id,
        valid_at,
        MIN(first_seen_at) OVER (
            PARTITION BY node_id, node_id_type
        ) AS first_seen_at,
        user_main_id_dist,
        0 AS stitching_active
    FROM (
        SELECT
            node_id,
            node_id_type,
            user_main_id,
            valid_at,
            first_seen_at,
            user_main_id_dist,
            row_number() OVER (
                PARTITION BY node_id, node_id_type, user_main_id
                ORDER BY valid_at ASC, user_main_id_dist ASC, first_seen_at ASC
            ) AS row_number
        FROM CHANDU2.MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING
    )
    WHERE row_number = 1)
);  

        

    /* Set which clusters are actively stitching */
    
   CREATE OR REPLACE TABLE "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING" AS (
    SELECT
        node_id,
        node_id_type,
        user_main_id,
        user_main_id_dist,
        valid_at,
        first_seen_at,
        MAX(stitching_active) OVER (PARTITION BY user_main_id) AS stitching_active
    FROM (
        SELECT
            node_id,
            node_id_type,
            user_main_id,
            user_main_id_dist,
            valid_at,
            first_seen_at,
            CASE
                WHEN min_user_main_id_node = max_user_main_id_node THEN 0
                ELSE 1
                END AS stitching_active
        FROM (
            SELECT
                node_id,
                node_id_type,
                user_main_id,
                user_main_id_dist,
                valid_at,
                first_seen_at,
                MIN(user_main_id) OVER (PARTITION BY node_id, node_id_type) AS min_user_main_id_node,
                MAX(user_main_id) OVER (PARTITION BY node_id, node_id_type) AS max_user_main_id_node
            FROM CHANDU2.MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING
        )
    )
);  

    /* Insert converged clusters into finished table */
    
   INSERT INTO "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_FINISHED_MAPPING" (node_id, node_id_type, user_main_id, valid_at, first_seen_at, user_main_id_dist, stitching_active) 
        SELECT
            node_id,
            node_id_type,
            user_main_id,
            valid_at,
            first_seen_at,
            user_main_id_dist,
            stitching_active
        FROM CHANDU2.MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING
        WHERE stitching_active = 0
    ;  /* Remove converged clusters from active table */
   DELETE FROM "MATERIAL_USER_DEFAULT_ID_STITCHER_1551CC21_6_INTERNAL_ACTIVE_MAPPING" WHERE  stitching_active = 0;  
 END;
        
    

	END;  

			
    
        
            
    
        
        
        
    
        
        
        
    
        
        
            
                
   DROP VIEW IF EXISTS "USER_DEFAULT_ID_STITCHER___MATERIAL_RSTRACKS_2A8B6134_6";  
            
        
        
    
        
        
            
                
   DROP VIEW IF EXISTS "USER_DEFAULT_ID_STITCHER___MATERIAL_RSIDENTIFIES_B0562A4B_6";  
            
        
        
    

        
    
 
	
	END;  
	