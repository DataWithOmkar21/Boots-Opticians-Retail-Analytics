select count(*) from fact_sales_clean
select count(*) from fact_appointments_clean
select count(*) from dim_store
select count(*) from dim_product
select count(*) from Dim_Customer
select count(*) from dim_service
select count(*) from dim_date

select top 5 * from fact_sales_clean
select top 5 * from fact_appointments_clean
----------------------------------------------------------------------------------------------
select s.sale_id, s.date, st.region, p.category, s.net_revenue
from fact_sales_clean s
join dim_store st on s.store_id = st.store_id
join dim_product p on s.product_id = p.product_id
--------------------------------------------------------------------------------------------
select s.sale_id, s.date, st.region, p.category, s.net_revenue,
    case 
        when s.net_revenue >= 300 then 'High'
        when s.net_revenue >= 100 then 'Medium'
        else 'Low'
    end as revenue_tier
from fact_sales_clean s
join dim_store st on s.store_id = st.store_id
join dim_product p on s.product_id = p.product_id
----------------------------------------------------------------------------------------------
with monthly_revenue as (
    select 
        format(date, 'yyyy-MM') as sale_month,
        sum(net_revenue) as total_revenue
    from fact_sales_clean
    group by format(date, 'yyyy-MM'))
select 
    sale_month,
    total_revenue,
    lag(total_revenue) over (order by sale_month) as prev_month_revenue,
    total_revenue - lag(total_revenue) over (order by sale_month) as revenue_change,round(
        (total_revenue - lag(total_revenue) over (order by sale_month)) * 100.0 
        / lag(total_revenue) over (order by sale_month), 2 ) as mom_growth_pct
from monthly_revenue
order by sale_month
---------------------------------------------------------
select 
st.region,
s.store_id,
sum(s.net_revenue) as total_revenue,
rank() over (partition by st.region order by sum(s.net_revenue) desc) as store_rank
from fact_sales_clean s
join dim_store st on s.store_id = st.store_id
group by st.region, s.store_id
order by st.region, store_rank
------------------------------------------------------------------
select 
p.product_id,
p.category,
sum(s.net_revenue) as total_revenue,
sum(s.quantity) as total_qty_sold
from fact_sales_clean s
join dim_product p on s.product_id = p.product_id
group by p.product_id, p.category
order by total_revenue desc
---------------------------------------------------------------------
select
st.region,
count(*) as total_appointments,
sum(case when a.appointment_status = 'Completed' then 1 else 0 end) as completed,
sum(case when a.appointment_status = 'No-show' then 1 else 0 end) as no_shows,
sum(case when a.converted_to_sale = 1 then 1 else 0 end) as converted,
round(sum(case when a.appointment_status = 'No-show' then 1 else 0 end) * 100.0 / count(*), 2) as noshow_rate_pct,
round(sum(case when a.converted_to_sale = 1 then 1 else 0 end) * 100.0 / count(*), 2) as conversion_rate_pct
from fact_appointments_clean a
join dim_store st on a.store_id = st.store_id
group by st.region
order by st.region
-----------------------------------------------------------------------------
with monthly_revenue as (
    select 
    format(date, 'yyyy-MM') as sale_month,
    sum(net_revenue) as total_revenue
    from fact_sales_clean
    group by format(date, 'yyyy-MM'))
select 
sale_month,
total_revenue,
sum(total_revenue) over (order by sale_month rows between unbounded preceding and current row) as running_total
from monthly_revenue
order by sale_month
----------------------------------------------------------------------------

