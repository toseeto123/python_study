use bestproducts;

select * from items limit 1;
select * from ranking limit 1;

select AVG(dis_price),avg(discount_percent) from items
join ranking on items.item_code =ranking.item_code
group by main_category, sub_category;

select provider,count(*), avg(dis_price),avg(discount_percent) from items
group by provider
order by count(*) desc;

select provider,main_category,avg(dis_price),avg(discount_percent),count(*) from items
join ranking on items.item_code = ranking.item_code
group by main_category,provider 
having count(*) >= 20;

select
 main_category,avg(dis_price), avg(discount_percent)
from items
join ranking on items.item_code = ranking.item_code
where dis_price >= 50000
group by main_category;

select 
	main_category,sub_category,
    avg(dis_price),avg(discount_percent)
from items
join ranking on items.item_code = ranking.item_code
group by main_category,sub_category;

select 
	provider,count(*),avg(dis_price),avg(discount_percent)
from items
group by provider
order by count(*) desc;

select 
	provider,main_category,count(*),avg(dis_price),avg(discount_percent)
from items
join ranking on items.item_code=ranking.item_code
group by main_category,provider having count(*) >= 20;

select 
	main_category,avg(dis_price),avg(discount_percent)
from items
join ranking on items.item_code=ranking.item_code
where dis_price >= 50000
group by main_category;
