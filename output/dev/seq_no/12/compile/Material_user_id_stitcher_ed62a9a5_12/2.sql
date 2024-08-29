
	
		
   BEGIN

		-- No-op to avoid SQL compilation errors
		
   DROP VIEW IF EXISTS "RUDDERSTACK_NOOP_VIEW";  
		
















   CREATE OR REPLACE TABLE "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_MAPPING" AS (
    SELECT
        node_id, node_id_type, user_main_id, valid_at, first_seen_at, user_main_id_dist, stitching_active
    FROM "MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_FINISHED_MAPPING"
    UNION ALL
    SELECT
        node_id, node_id_type, user_main_id, valid_at, first_seen_at, user_main_id_dist, stitching_active
    FROM "MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_ACTIVE_MAPPING"
);  

/* Update the main_id for a cluster to be the one generated by the earliest id seen in that cluster */


   CREATE OR REPLACE TABLE "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_MAPPING" AS (
    SELECT
        node_id,
        node_id_type,
        FIRST_VALUE(generated_user_main_id) OVER (
            PARTITION BY user_main_id
            ORDER BY ts_mapping ASC, first_seen_at ASC, generated_user_main_id ASC
            ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
        ) AS user_main_id,
        valid_at,
        first_seen_at,
        user_main_id_dist,
        stitching_active
    FROM (
        SELECT
            
    
    'rid' || left(sha1(concat(left(sha1('fe971b24-9572-4005-b22f-351e9c09274d' || NVL(node_id,'')),32),NVL(node_id_type,''))),32)
    
 AS generated_user_main_id,
            CASE
                WHEN first_seen_at IS NULL THEN 1
                ELSE 0
            END AS ts_mapping,
            node_id, node_id_type, user_main_id, valid_at, first_seen_at, user_main_id_dist, stitching_active
        FROM
            "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_MAPPING"
        )
);  


   CREATE OR REPLACE VIEW "MATERIAL_USER_ID_STITCHER_ED62A9A5_12" AS (
    WITH ranked_mappings AS (
        SELECT
            user_main_id,
            node_id AS other_id,
            node_id_type AS other_id_type,
            valid_at,
            first_seen_at,
            ROW_NUMBER() OVER (PARTITION BY node_id, node_id_type, user_main_id ORDER BY COALESCE(valid_at, '9999-12-31') ASC) AS occurance_count
        FROM  "CHANDU2"."MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_MAPPING"
    )
    SELECT
        user_main_id,
        other_id,
        other_id_type,
        valid_at,
        first_seen_at
    FROM ranked_mappings
    WHERE occurance_count = 1

);  


   DROP TABLE IF EXISTS "MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_ACTIVE_MAPPING";  


   DROP TABLE IF EXISTS "MATERIAL_USER_ID_STITCHER_ED62A9A5_12_INTERNAL_FINISHED_MAPPING";  
 
	
	END;  
	