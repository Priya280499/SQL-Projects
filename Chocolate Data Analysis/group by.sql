select * from sales; 
select DISTINCT(geoid) from sales;

select geoid, sum(amount) from sales 
group by geoid; 

select geoid, sum(amount), count(Amount) ,avg(Amount) , count(boxes) from sales 
group by geoid; 

select sum(amount), avg(amount) , sum(boxes), g.geo from sales s 
left join geo g on s.GeoID = g.GeoID
group by g.geo; 

select pr.category, p.team, sum(boxes), sum(amount) from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team not in('')
group by pr.category, p.team
order by pr.category, p.team;

select pr.category, p.team, sum(boxes), sum(amount) from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team not in('')
group by pr.category, p.team
having category='Bars'
order by pr.category, p.team;

select pr.product,  sum(s.amount) as 'TOTAL' from sales s
join products pr on pr.pid = s.pid
group by pr.product
order by `total` desc;

#total amount by top 10 products#
select pr.product,  sum(s.amount) as 'TOTAL' from sales s
join products pr on pr.pid = s.pid
group by pr.product
order by `total` desc
LIMIT 10;

select team from people;
select team from people where team not in('') ;