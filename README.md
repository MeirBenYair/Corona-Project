
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
I used three csv for the projec:

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
![dim date](https://user-images.githubusercontent.com/93455805/141657326-8c401f3a-6be3-4e8f-8bea-fc616f309cb5.JPG)
### Step number two:
At this stage i created the relationships between the DIM tables and the FACT tables (one-to-many relationship). And creation hierarchies in the various tables as needed. 
#### The Star Schme model looks like this:
![Star scaime](https://user-images.githubusercontent.com/93455805/141657535-2960adf2-a9ec-4c90-bcbe-7fc2ae8fdad2.JPG)
### Step number three:
is to build and design the reports in POWER BI.
At the report building stage,I divided the report into three pages.
### The First page: 
shows General data of the corona virus from around the world, or by specific countries. By cumulative date and daily date.
The title automatically changes by country.

![page1](https://user-images.githubusercontent.com/93455805/141700624-0e92b085-59dc-4e3c-b4ca-f0b8a3c5b88e.JPG)

### The Second page:
It shows a Corona data comparison of the last three weeks. And if there is an increase in Confirmed / Deaths. It marks the country in red.

![page2](https://user-images.githubusercontent.com/93455805/141700620-39f3c0f3-a2fa-4c8d-848f-fc2931f57838.JPG)


### The Third page:
It shows the ten countries with the highest number of Confirmed / Deaths.

![page3](https://user-images.githubusercontent.com/93455805/141700623-c2bb6882-169a-427a-9bb6-2df3e1f6513a.JPG)

#### In the process of building the reports I used DAX  and MESURES, such as:
SWITCH ,CALCULATE,Variables,RANKX,VALUES
,DIVIDE,MAX,DATEADD,if,COUNTX,All,SUMX



## SSIS ETL
##### The SSIS project takes live data on covid 19,through Python script and uploads them to DHW.

#### Steps in project execution

### Extraction :
The first step is: to Build three files in Python script, of Conformed,deaths and Recovered.And arrange the data and add a column named Status.

![py](https://user-images.githubusercontent.com/93455805/141704618-b308be3b-e93c-4e14-a14f-3547548a38e8.JPG)

### Transformation :
To be sure that no double information was entered, I used a lookap component that passes only the new Corona information to the destination.

### Loading:
For this stage I built a new database. And three tables. And there I load the information from ssis. 
![db](https://user-images.githubusercontent.com/93455805/141704619-9d01cd9c-0568-4f77-9f45-14245caf193c.JPG)
![db1](https://user-images.githubusercontent.com/93455805/141704613-abfd296f-2b27-471b-8a93-0ff123d59680.JPG)

### Schedule:


![job (1)](https://user-images.githubusercontent.com/93455805/141704616-12272944-fc56-434a-bfb9-181d29af3047.JPG)

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



