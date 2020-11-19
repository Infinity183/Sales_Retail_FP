# Retail Sales and Machine Learning

# Overview:
Machine Learning is an extremely useful tool that uses statistics in order to find patterns in large sets of data. With this in mind our project goes into a deep dive of existing "Retail Sales" data with machine learning applications. The datasets can be found at https://www.kaggle.com/manjeetsingh/retaildataset?select=stores+data-set.csv 

# Process:
## Data Sets 
 * Three csv files: Sales, Features and Stores. 

## Data Clean up/ Libraries
* Libraries: Pandas, Seaborn, Matplotlib, Numpy,Scipy, and OS. 
* Clean up: getting rid of unecessary columns, sorting values, changing column names, grouping by necessary variables, and merging necessary tables using PostgresSQL.
## Models
* Linear Regression
* K-nearest neighbors classifier
* Random Forest 
* ARIMA

# Conclusions:
* Based on our findings, the temperature, fuel price and unemployment categories are not useful features in predicting markdowns and sales.

* Markdowns have a strong correlation with weekly sales and from our KNN model we gather that markdowns are greater on dates that are “Not on holidays”. We can use this information to target specific dates that are not on holidays in a Time series model to figure out the best dates for markdowns. 

* Predictive time series models for average weekly sales are not very accurate for our data, due to the limited year range and moderately erratic annual sales trends.

* In the data provided, the relationship we found through tests and analysis between size and total sales looks reasonable. However, it would have been more accurate with more data points. 

# Website:
For a detailed description about the Models we used and findings please visit our website at:
https://akplesa.github.io/Sales_Retail_FP/index.html
