with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        CONCAT(CAST(orders_id AS STRING),"_",CAST(pdt_id AS STRING)) AS Pkey,
        date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity

    from source

)

select * from renamed
