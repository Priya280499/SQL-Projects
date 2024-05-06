select people.Salesperson, sales.*,products.Product from sales
left join people on people.SPID = sales.SPID left join products on products.PID=sales.PID;

select people.Salesperson, sales.*,products.Product from sales
left join people on people.SPID = sales.SPID left join products on products.PID=sales.PID
where sales.amount < 1000 order by amount ;

select * from geo; 

select people.Salesperson, sales.*,products.Product, geo.Geo from sales
left join people on people.SPID = sales.SPID 
left join products on products.PID=sales.PID 
left join geo on sales.GeoID = geo.GeoID
where Geo = 'India' or Geo = 'New Zealand';