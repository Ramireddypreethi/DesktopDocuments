import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="varun")#to show tables we should make database connection,otherwise we get error.
cur=mydb.cursor()
cur.execute("show tables")
for x in cur:
    print(x)
