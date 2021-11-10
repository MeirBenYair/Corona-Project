import pandas as pd


url_Deaths=pd.read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv")

url_Deaths.drop('Province/State',axis=1,inplace=True)

Deaths=pd.melt(frame=url_Deaths,id_vars=['Country/Region','Lat','Long'],var_name='date',value_name='value')
Deaths['status']='Deaths'

Deaths.to_csv('Deaths.csv', index=False, encoding='utf-8')