show tables;
desc sales;
select * from sales;
select SaleDate, Amount, Customers from sales;

select SaleDate, Amount, Boxes, Amount / boxes as 'Amt per box' from sales;

select * from sales
where Amount > 10000
order by Amount desc;

select * from sales
where GeoID = 'g1'
order by PID, Amount desc;

select * from sales
where Amount > 10000 and SaleDate >= '2022-01-01';

select SaleDate, Amount from sales
where Amount > 10000 and year(SaleDate) = 2022
order by Amount desc;

select * from sales
where Boxes between 0 and 50;

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of Week' from sales;

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of Week' from sales
where weekday(SaleDate) = 4;

select * from people;

select * from people
where Team = 'Delish' or Team = 'Jucies';

select * from people
where Team in ('Delish','Jucies');

select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';

select SaleDate, Amount,
	case when Amount < 1000 then 'under 1k'
		 when Amount < 5000 then 'under 5k'
         when Amount < 10000 then 'under 10k'
		else '10k or more'
        end as 'Amt category'
from sales;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID
from sales s 
join people p on p.SPID = s.SPID;

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team, g.Geo
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
join geo g on g.GeoID = s.GeoID
where s.Amount < 500
and	p.Team = ''
and g.Geo in ('New Zealand', 'India')
order by SaleDate;

select GeoID, sum(Amount), avg(Amount), sum(Boxes)
from sales
group by GeoID;

select pr.Category, p.Team, sum(Boxes), sum(Amount)
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where p.Team <> ''
group by pr.Category, p.Team
order by pr.Category, p.Team;

select pr.Product, sum(s.Amount) as 'Total Amt'
from sales s
join products pr on pr.PID = s.PID
group by pr.Product
order by 'Total Amt' desc
limit 10;