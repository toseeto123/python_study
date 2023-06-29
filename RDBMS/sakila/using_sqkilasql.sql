use sakila;
select * from country;

select * from film limit 10;
select distinct release_year from film;
select * from rental limit 10;
select * from rental where inventory_id = 367;
select count(*) from customer;

select sum(amount), AVG(amount),MAX(amount),MIN(amount) from payment;
select * from rental where inventory_id = 367 and staff_id = 1;

select count(*) from film group by rating;
select * from film limit 1;
select rating from film group by rating;
select rating,count(*) from film group by rating;
select rating,count(*) from film where rating = 'g' or rating = 'pg' group by rating;
select title,rating from film where rating = 'g';
select title,rating from film where rating = 'g' or rating = 'pg' ;
select title,rating,release_year from film where (release_year = 2006 or release_year = 2007) and (rating = 'pg' or rating = 'g');

select rating,avg(rental_rate),count(*) from film group by rating; 

select count(*),rating,avg(rental_rate) from film group by rating order by avg(rental_rate) desc; 
select rating,count(*) as total_films,avg(rental_rate) as avg_rental_rate from film group by rating order by avg_rental_rate desc; 

select 
	rating,
	count(*) as total_films,
    avg(rental_rate) as avg_rental_rate 
from film 
group by rating 
order by avg_rental_rate desc;

select * from film limit 1;

select 
	rating, 
   count(*) as total_films
from film 
where length >= 130 
group by rating
order by count(*) desc;



