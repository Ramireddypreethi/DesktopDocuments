import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
print(mydb.connection_id)
cur=mydb.cursor()
t='UPDATE manufacture SET quantity = 500 WHERE item_color = "red" AND manufacture_id IN (SELECT manufacture_id FROM goods WHERE goods_id IN (SELECT goods_id FROM sales WHERE store_name = "MyKids")'

cur.execute(t)
mydb.commit()
