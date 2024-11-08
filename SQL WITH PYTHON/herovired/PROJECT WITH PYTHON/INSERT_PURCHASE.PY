import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
cur=mydb.cursor()
ins='insert into purchase(purchase_id , store_name,purchase_amount,purchase_date)values(%s,%s,%s,%s)'
a = (1, 'ORay', 500, '2023-04-21'), (2, 'MyKids', 1000, '2023-04-22'),(3, 'OnlineMart', 750, '2023-04-23')
cur.executemany(ins,a)
mydb.commit()
print("data inserted successfully")
