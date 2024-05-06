SELECT * FROM cars.`car dekho`;
use cars;
ALTER TABLE `car dekho` RENAME `car_dekho`;

#Read car data
SELECT * FROM car_dekho;

#Get a count of total records in the table 
select count(*) from car_dekho;

#How many cars are available in 2023?
select count(*) from car_dekho where year=2023;

#How many cars are available in 2020, 2021, 2022?
select count(*),year from car_dekho where year in (2020,2021,2022) group by year;

#Get the Sum of Selling price by year
select sum(selling_price), year from car_dekho
group by year
order by sum(selling_price) desc;

#Get the number of cars in each year 
select count(*),year from car_dekho
group by year;

#How many diesel and petrol cars are there in 2020?
SELECT count(*) FROM car_dekho where fuel = 'Diesel' and year= 2020;
SELECT count(*) FROM car_dekho where fuel = 'Petrol' and year= 2020;

#Print all the fuel cars by year
SELECT count(*),Name,year,fuel FROM car_dekho where fuel = 'Petrol' or fuel ='Diesel' or fuel ='CNG'
group by year,Name,fuel ;

#Which year had more than 100 cars sold
SELECT count(*),year FROM car_dekho 
group by year
having count(*)>100
order by count(*) desc;

#Count of cars sold between 2015 and 2023
SELECT count(*) FROM car_dekho where year between 2015 and 2023 ;

#List of Car details sold between 2015 and 2023
SELECT * FROM car_dekho where year between 2015 and 2023 ;