CREATE TABLE Features (
	Store varchar,
	Sale_Date date,
	Temperature float,
	Fuel_Price float,
	MarkDown1 float,
	MarkDown2 float,
	MarkDown3 float,
	MarkDown4 float,
	MarkDown5 float,
	Unemployment float,
	IsHoliday boolean,
	Primary Key (Sale_Date, Store)
)

select * from Features 
copy Features(Store, Sale_Date, Temperature,Fuel_Price,
			  MarkDown1, MarkDown2, MarkDown3, MarkDown4, MarkDown5, Unemployment, IsHoliday )
from '/tmp/Features_cleaned.csv'
delimiter ','
CSV HEADER;

create table Sales (
	Store varchar,
	Dept varchar,
	Sale_Date date,
	Weekly_Sales float,
	IsHoliday boolean,
	Primary Key ( Sale_date, Store)
	)
select * from Sales

copy Sales(Store, Dept, Sale_Date,Weekly_Sales,
			 IsHoliday )
from '/tmp/Cleaned_Sales.csv'
delimiter ','
CSV HEADER;
	
create table features (
	Store varchar,
	Sale_Date date,
	Temperature float,
	Fuel_Price float,
	MarkDown1 float,
	MarkDown2 float,
	MarkDown3 float,
	MarkDown4 float,
	MarkDown5 float,
	Unemployment float,
	IsHoliday boolean,
	Primary Key (Sale_Date, Store)
)


SELECT
f.sale_date,
f.store,
f.temperature,
f.fuel_price,
f.markdown1,
f.markdown2,
f.markdown3,
f.markdown4,
f.markdown5,
f.unemployment,
f.isholiday,
s.dept,
s.weekly_sales
FROM features f
INNER JOIN Sales AS s ON
f.sale_date=s.sale_date and 
f.store= s.store






SELECT * FROM features f;
SELECT * FROM Sales s;


