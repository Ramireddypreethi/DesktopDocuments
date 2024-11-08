import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
cur=mydb.cursor()
ins='INSERT INTO sales(sale_id ,store_name ,sale_date,goods_id , profit_margin )values(%s,%s,%s,%s,%s)'
a = (1, 'MyCare', '2023-04-01', 1, 100),(2, 'ORay', '2023-04-03', 2, 50),(3, 'MyKids', '2023-04-05', 3, 75),(4, 'OnlineMart', '2023-04-06', 4, 80)
cur.executemany(ins,a)
mydb.commit()
print("data inserted successfully")