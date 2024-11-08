import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="VARUN")
cur=mydb.cursor()
s='delete from varun1 where emp_id=100'
cur.execute(s)
mydb.commit()