import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="VARUN")
cur=mydb.cursor()
t='create table varun1(emp_id integer(5),emp_name varchar(30),salary integer(10))'
cur.execute(t)