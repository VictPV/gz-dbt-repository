with 

source as (

    select * from {{ source('raw', 'facebook') }}

),

renamed as (

    select
        cast(date_date as STRING) AS date_date,
        concat(date_date,"_",campaign_key) AS pk,
        paid_source,
        campaign_key,
        campgn_name AS campaign_name,
        CAST(ads_cost AS FLOAT64) AS ads_cost,
        impression,
        click

    from source

)

select * from renamed
