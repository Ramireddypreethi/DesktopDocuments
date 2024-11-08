import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="VARUN")
cur=mydb.cursor()
s='update varun1 set salary=salary+100 where emp_id=101'
cur.execute(s)
mydb.commit()