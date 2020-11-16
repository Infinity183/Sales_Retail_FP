create table Sales (
	store varchar,
	Dept varchar,
	sale_date date,
	weekly_sales float,
	IsHoliday boolean,
	Id serial,
	Primary Key (Id)
	)
	
copy Sales(store, Dept, sale_date, weekly_sales, IsHoliday)
from 'C:\Users\tyms1\OneDrive\Desktop\Data Bootcamp\Retail_Sales_Final_Project\Retail_Sales_Data\Cleaned_Sales.csv'
delimiter ','
CSV HEADER;	
	

create table Stores (
	store varchar,
	type varchar,
	size int
)

select * from sales
select * from stores
select * from merged_store_sales


SELECT 
s.Store,
s.dept,
s.sale_date,
s.weekly_sales,
t.size
into merged_store_sales
FROM Sales AS s
INNER JOIN Stores AS t ON
s.Store=t.Store;