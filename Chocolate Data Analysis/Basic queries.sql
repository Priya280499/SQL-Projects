show tables;

desc sales;

select * from sales;

select Amount, Boxes , Amount/Boxes as 'Amount per Box' from sales;

select * from sales where Amount>10000 order by Amount asc;
select * from sales where Amount>10000 order by Amount desc;

select * from sales 
where GeoID = 'G1' 
order by PID, Amount asc;

select * from sales
where Amount>10000 and Year(SaleDate)='2022';

select * from sales
where boxes between 0 and 50 
order by boxes desc ;

Select *, weekday(SaleDate) as 'Day of Week' from sales where weekday(SaleDate) =4;
#weekday of friday in number is 4 , starting from monday =0 to sunday =6#

select * from people;
select * from people where Team = 'Delish' or Team = 'Jucies';

select * from people where Team in ('Delish','Jucies');

Select * from people where Salesperson like '%B%' or Salesperson like '%b%';

select SaleDate , Amount ,  
case when Amount>0 and Amount<=1000 then 'low'
when Amount>=1001 and Amount<=5000 then 'mid'
when Amount>=5001 and Amount<=10000 then 'high'
else 'very high'
end as 'Category'
from Sales;
