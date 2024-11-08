import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345")
cur=mydb.cursor()
cur.execute("show databases")
for x in cur:
    print(x)