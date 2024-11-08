import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
print(mydb.connection_id)
cur=mydb.cursor()
cur.execute('CREATE TABLE PURCHASE(purchase_id INTEGER(4) PRIMARY KEY,  store_name varchar(20),purchase_amount FLOAT, purchase_date DATE)')
