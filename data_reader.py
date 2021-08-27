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

print(df)