import mysql.connector # type: ignore #for checking the connection
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345") #for making connection
# password is different for everyone
print(mydb)
print(mydb.connection_id)