import mysql.connector
import pandas as pd

#connecting mysql server
database = mysql.connector.connect(
    host="localhost",
    user="root",
    database="hospital")

#check database connectivity
database.cursor().execute("select * from patients")