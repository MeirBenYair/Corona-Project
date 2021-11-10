import pandas as pd

url_Confirmed= pd.read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv")
url_Confirmed.drop('Province/State',axis=1,inplace=True)
confirmed=pd.melt(frame=url_Confirmed,id_vars=['Country/Region','Lat','Long'],var_name='date',value_name='value')
confirmed['status']='Recovered'
confirmed.to_csv('Recovered.csv', index=False, encoding='utf-8')
