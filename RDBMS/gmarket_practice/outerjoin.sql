use bestproducts;

select distinct main_category from ranking;
-- left outer join join후 결합되는 자료가없는 부분은 NaN(결측치)으로 결합(inner join)과 다른부분
select * from customer_table c left outer join order_table o
on c.customer_id = o.customer_id;

use sakila;

select * from customer limit 2;

select count(*) from customer
right outer join address
on customer.address_id = address.address_id
where customer_id is null;

