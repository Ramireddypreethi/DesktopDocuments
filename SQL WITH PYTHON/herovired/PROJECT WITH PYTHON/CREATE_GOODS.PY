import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
print(mydb.connection_id)
cur=mydb.cursor()
cur.execute('CREATE TABLE GOODS(goods_id INTEGER(4) PRIMARY KEY, manufacture_id INTEGER, manufacture_date DATE,FOREIGN KEY(manufacture_id) REFERENCES manufacture(manufacture_id))')
