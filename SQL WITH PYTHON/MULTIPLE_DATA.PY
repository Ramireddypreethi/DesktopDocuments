import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="VARUN")
cur=mydb.cursor()
ins='insert into varun1(emp_id,emp_name,salary) values(%s,%s,%s)'#%s means can enter any type of values,here s is string.
n=int(input("enter no of rows:"))
a=[]
for i in range(n):
    b=int(input())
    c=input()
    d=int(input())
    a=[b,c,d]
cur.executemany(ins,a)
mydb.commit()
print("data inserted successfully")
