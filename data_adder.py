import mysql.connector


#connecting mysql server
database = mysql.connector.connect(
    host="localhost",
    user="root",
    database="hospital")

cur = database.cursor()

#open pipe seperated data file
file  = open('data/data.txt','r')

for line in file:
    #read line by line
    lis = line.split('|')
    lis = lis[1:]
    if(lis[0]=="D"):
        #if it is detail record
        lis[3] = lis[3][:4]+'-'+lis[3][4:6]+'-'+lis[3][6:] #convert date into yyyy-mm-dd format
        lis[4] = lis[4][:4]+'-'+lis[4][4:6]+'-'+lis[4][6:]
        lis[9] = lis[9][4:]+'-'+lis[9][2:4]+'-'+lis[9][:2]
        #insert query
        query = "INSERT INTO `patients` (`Customer_ID`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Date_Of_Birth`, `Active_Customer`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        #values tobe inserted
        val = (lis[2], lis[1], lis[3], lis[4], lis[5], lis[6], lis[7], lis[8], lis[9], lis[10])
        #execution of query
        cur.execute(query,val)
        database.commit()
        #final commit
    

file.close()