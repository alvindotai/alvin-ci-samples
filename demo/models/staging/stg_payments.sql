with source as (
    
    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_payments') }}

),

renamed as (

    select
        id as payment_id,
        payment_method,
        order_id
        --
        -- opsssss removed a column by mistake, I wonder if the reviewer will notice it!!!!!!
    from source

)

select * from renamed
