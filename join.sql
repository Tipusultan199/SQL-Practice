select * from sales;

select * from people;


select s.saleDate, s.amount, p.Salesperson, s.SPID, p.SPID
from sales s
join people p on p.SPID =s.SPID;

select s.saleDate, s.amount, p.Salesperson, s.SPID, p.SPID
from sales as s
left join people as p on p.SPID = s.SPID;

select s.saleDate, s.amount, p.Salesperson, pr.product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.pid = s.pid
where s.amount >500
and p.Team = 'delish';

select s.saleDate, s.amount, p.Salesperson, pr.product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.pid = s.pid
where s.amount >500
and p.Team ='';

select s.saleDate, s.amount, p.Salesperson, pr.product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.pid = s.pid
join geo as g on g.GeoID = s.GeoID
where s.amount >500
and p.Team = ''
and g.Geo in ('New Zealand', 'India')
order by s.SaleDate;