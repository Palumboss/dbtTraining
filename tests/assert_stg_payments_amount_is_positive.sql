with

payments as(
    select * from {{ref('stg_payments')}}
)

select
    order_id,
    sum(amount) as totoal_amount
    from payments
    group by order_id
    having totoal_amount < 0