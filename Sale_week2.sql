create database Sale_week2;
use Sale_week2;
select * from sales;

-- All Lagos transactions.
select * from sales 
where Region = "Lagos";

-- Transactions with recorded revenue above 10,000.
select *
from sales 
where Revenue > 10000;

-- Transactions with missing revenue
select *
from sales 
where Revenue is Null;

-- Refund transactions.
select * 
from sales 
where `Transaction-type` = 'Refund';

-- Transactions dated during February 2026.
select *
from sales 
where `Date` >= '02/02/2026' and `Date` < '02/24/2026';

-- Lagos transactions during February with revenue above 10,000.
select *
from sales 
where Region = 'Lagos'
and `Date` >= '02/02/2026' 
and `Date` < '02/24/2026'
and Revenue > 10000;

-- Transactions with recorded revenue, sorted from highest
Select *
From sales
Where revenue Is not null
Order by revenue Desc;
-- revenue to lowest.
Select *
From sales
Order by Revenue desc;