show tables;
desc sales;
select * from sales
select SaleDate, Amount, Customers, Amount/Customers as 'divide' from sales

select * from sales
where amount > 10000;

select * from sales
where amount > 10000
order by Amount desc;

select * from sales
where geoid = 'g1'
order by PID, Amount desc;

select * from sales
where amount > 10000 and SaleDate >= '2022-01-01';

select saleDate, amount from sales
where amount >10000 and year(SaleDate)= 2022
order by  Amount desc;

select * from sales
where Boxes> 0 and Boxes<51
order by Boxes desc;

select * from sales
where Boxes between 0 and 50;


select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week' from sales
where weekday(SaleDate) =4;

select * from people;

select * from people
where Team = 'delish' or Team = 'Yummies';

select * from people
where Team in ('delish','Yummies');

select * from people
where Salesperson like 'B%';


select * from people
where Salesperson like '%B%';

select * from sales;

select saleDate, amount,
	   case		when amount < 1000 then 'Under 1k'
				when amount < 5000 then 'Under 5k'
				when amount < 10000 then 'Under 10k'
			else '10k or more'
	   end  as 'Amount Catagory' 
from sales;       