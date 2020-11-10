SHOW datestyle;
SET datestyle = "ISO, DMY";

CREATE TABLE Features (
	Store VARCHAR(30) NOT NULL, 
	Sale_Date DATE NOT NULL DEFAULT CURRENT_DATE,
	Temperature float NOT NULL,
	Fuel_Price float NOT NULL, 
	MarkDown1 float , 
	MarkDown2 float , 
	MarkDown3 float , 
	MarkDown4 float , 
	MarkDown5 float , 
	Unemployment float ,  
	IsHoliday VARCHAR(30) NOT NULL, 
	PRIMARY KEY (Sale_Date, Store)
)
SELECT * FROM Features

copy Features(Store, Sale_Date, Temperature,Fuel_Price,
			  MarkDown1, MarkDown2, MarkDown3, MarkDown4, MarkDown5, Unemployment, IsHoliday )
from '/tmp/Features_cleaned.csv'
delimiter ','
CSV HEADER;
