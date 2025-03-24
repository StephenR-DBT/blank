with 

source as (

    select * from {{ source('tpch_now', 'lineitem') }}

),

renamed as (

    select
        l_orderkey,
        l_shipdate,
        l_commitdate,
        l_receiptdate,
        l_partkey,
        l_suppkey,
        l_linenumber,
        l_quantity,
        l_extendedprice,
        l_discount,
        l_tax,
        l_returnflag,
        l_linestatus,
        l_shipinstruct,
        l_shipmode,
        l_comment

    from source

)

select * from renamed
