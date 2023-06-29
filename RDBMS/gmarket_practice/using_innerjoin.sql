create database bestproducts;

-- group by 와 where절 집계함수는(count,sum,avg,..)는 같이 사용하지못한다  

select provider,count(*)  from items 
group by provider having count(*) >= 100;

select provider, count(*) from items
where 
	provider != '스마일배송' and provider != ''
group by provider having count(*) >= 100
order by count(*) desc
limit 10;

select * from items inner join ranking on ranking.item_code = items.item_code 
where ranking.main_category = 'all' 
order by item_ranking
limit 20;

select provider,count(*) from items inner join ranking on ranking.item_code = items.item_code
where ranking.main_category = 'all'
group by provider;

select * from ranking where sub_category = '패션의류';
select * from items limit 10;

select provider,count(*) from items inner join ranking on ranking.item_code = items.item_code
where ranking.main_category = '패션의류' 
group by provider having  count(*) >= 5;

select provider,count(*) from items inner join ranking on ranking.item_code = items.item_code
where ranking.main_category = '신발/잡화' 
group by provider having  count(*) >= 10
order by count(*) desc;

select avg(ori_price),max(ori_price),min(ori_price),dis_price/discount_percent as dis_price,count(*) from items inner join ranking on ranking.item_code = items.item_code
where ranking.main_category = '화장품/헤어' 
group by provider having  count(*) >= 5;


