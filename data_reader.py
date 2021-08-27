import mysql.connector
import pandas as pd

#connecting mysql server
database = mysql.connector.connect(
    host="localhost",
    user="root",
    database="hospital")



# read patients data in pandas dataframe
df = pd.read_sql('SELECT * FROM patients', con=database) 

# set customer id as index
df.set_index(['Customer_ID'], inplace=True)  


def get_country_data(country):
    #Fetching data country wise 
    data = df.loc[df['Country'] == country]
    return data
    

country = "IND"
data = get_country_data(country) #fetching data for india

#exporting into CSV
data.to_csv('data/' + country + ".csv")