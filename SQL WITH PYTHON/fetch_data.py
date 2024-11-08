import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="VARUN")
cur=mydb.cursor()
f='select * from varun1'
cur.execute(f)
display=cur.fetchall()
for i in display:
    print(i)