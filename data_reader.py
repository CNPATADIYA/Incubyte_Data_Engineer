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
    

data = get_country_data("IND") #fetching data for india
print(data)