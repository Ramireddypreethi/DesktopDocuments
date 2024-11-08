import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
cur=mydb.cursor()
ins='insert into goods(goods_id , manufacture_id , manufacture_date)values (%s,%s,%s)'
a = (1, 1, '2023-04-20'),(2, 1, '2023-04-22'),(3, 2, '2023-04-25'),(4, 3, '2023-04-26')
cur.executemany(ins,a)
mydb.commit()
print("data inserted successfully")