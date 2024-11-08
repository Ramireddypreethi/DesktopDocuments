#Delete the defective item, e.g., the shirt which was accidentally purchased by the “ORay” store, manufactured on the date ‘01-04-23’.

import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
print(mydb.connection_id)
cur=mydb.cursor()
s='DELETE FROM purchase WHERE item_name = "shirt" AND purchase_date = "2023-04-01" AND store_name = "ORay"'
cur.execute(s)
mydb.commit()
