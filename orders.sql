select * from orders;

# Extract month and year from order_date
select extract(year from order_date) as year,
 extract(month from order_date) as month,
 
 # Using SUM for total_revenue
 round(sum(amount),2)as total_revenue,
 
 # Using count for volume
 count(distinct order_id) as order_volume
 from orders
 
 # Group by year and month
 group by year,month
 
 # use order by sorting
 order by year,month
 limit 9;

         