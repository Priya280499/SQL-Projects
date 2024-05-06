--Q1. Who is the senior most employee based on job title?
Select * from employee order by levels desc limit 1;
	
--Q2. Which countries have the most Invoices?
select count(*) as c,billing_country from invoice group by billing_country order by c desc ;

--Q3. What are top 3 values of total invoice?
select total from invoice 
order by total desc limit 3;

-- Q4. Which city has the best customers? We would like to throw a promotional Music 
--     Festival in the city we made the most money. Write a query that returns one city that has the 
--     highest sum of invoice totals. Return both the city name & sum of all invoice total
Select  sum(total), billing_city from invoice
group by billing_city
order by sum(total) desc
limit 1;

-- Q5. Who is the best customer? The customer who has spent the most money will be declared the best customer. 
--     Write a query that returns the person who has spent the most money
select * from customer;
select * from invoice ;

select c.customer_id , c.first_name as Best_Customer, c.last_name,sum(i.total)
from customer c join invoice i on c.customer_id= i.customer_id
group by c.customer_id
order by sum(i.total) desc
limit 1;








