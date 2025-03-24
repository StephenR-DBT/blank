with 

source as (

    select * from {{ source('tpch_now', 'orders') }}

),

renamed as (

    select
        o_orderkey,
        o_orderdate,
        o_ordertime,
        o_custkey,
        o_orderstatus,
        o_totalprice,
        o_orderpriority,
        o_clerk,
        o_shippriority,
        o_comment

    from source

)

select * from renamed
