SELECT *
FROM {{ref("stg_raw__sales")}}
JOIN 
{{ref("stg_raw__product")}}
USING (products_id)
