
# Covid 19 ETL processes And dashboards. 


## Table of contents
* General info
* Technologies
* Data Sources
* Power bi
* SSIS ETL
* Return data with ml exercise,made with PYTON
* Contact info


## General info
This project has several parts. Each section will have a breakdown of the steps, 


which will also include the sources of information and the installation process, That you can run each part individually.
	
## Technologies
Project is created with:
* Python version: 3.10.0
* Jupyter Notebook.
* Power bi
* SSIS
* MS SQL	

## Data Sources
I used three csv for the projec:-

* time_series_covid19_confirmed_global.csv
* time_series_covid19_deaths_global.csv
* time_series_covid19_recovered_global.csv

All three are taken from:
[github link](https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series)


# Power Bi
##### The Power Bi project takes live data on covid 19, and analyzes and presents them.
It contains the files from above.
You can download the power bi file and open it on your own computer.

## Steps in project execution
### Step number one: 
Was the ETL process that done in Power Query Editor in Power BI. extracted the database From the source above.I cleaned up the information and removed, among other things, columns that were not relevant to the data analysis.I added to each table a column called Status.
I connected the three tables. To create the fact table. And I connected the keys from the other tables to it.
Another sub-step within the ETL process was the creation of a DIM DATE table as a separate date table.


### The First page: 
shows General data of the corona virus from around the world, or by specific countries. By cumulative date and daily date.
The title automatically changes by country.

![page1 pb](https://user-images.githubusercontent.com/93455805/141142413-f5f7cf96-04cf-481c-b9bf-fa4abbbeb5a3.JPG)


### The Second page:
It shows a Corona data comparison of the last three weeks. And if there is an increase in Confirmed / Deaths. It marks the country in red.

![page2 pb](https://user-images.githubusercontent.com/93455805/141199988-06fa1ebf-f5b9-42e2-928f-20bc24984812.JPG)


### The Third page:
shows the ten countries with the highest number of Confirmed / Deaths.

![page3 pb](https://user-images.githubusercontent.com/93455805/141200001-5e2ffe7c-fe2a-4363-8c0f-5fc7c8f7f123.JPG)



## SSIS ETL

## Contact info

#### Made by Meir Ben Yair.

Student at INT College


Mail and Phone Number : 
```
mby777701@gmail.com
```
```
0584777028
```
[Linkedin profile](https://www.linkedin.com/in/meir-ben-yair-63a218225/)



