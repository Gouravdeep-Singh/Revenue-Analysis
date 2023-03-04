with task as( 
select * from dbo.[2018] 
UNION
select * from dbo.[2019] 
UNION
select * from dbo.[2020]) 

select hotel,country,arrival_date_month,arrival_date_year, (stays_in_week_nights+stays_in_weekend_nights)*adr as revenue,Discount,Cost from task join 
market_segment$ on task.market_segment=market_segment$.market_segment 
join meal_cost$ on meal_cost$.meal=task.meal

