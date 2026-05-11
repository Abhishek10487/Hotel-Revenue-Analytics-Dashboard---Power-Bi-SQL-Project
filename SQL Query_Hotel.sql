

With hotels as (
select * from dbo.['2018$']
Union
select * from dbo.['2019$']
Union
select * from dbo.['2020$'])



Select * from hotels
Left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal
