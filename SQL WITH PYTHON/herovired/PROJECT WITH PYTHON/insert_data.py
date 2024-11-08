import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Preethi@12345",database="InventoryControlManagement")
cur=mydb.cursor()
ins='insert into manufacture(manufacture_id ,item_name ,company,item_color ,quantity ,defective_items) values (%s,%s,%s,%s,%s,%s)'
a= [(1, 'wooden chair','GARUD ENTERPRISES' ,'brown', 100, 0), (3, 'wooden table','SS EXPORT','brown', 50, 1),(2, 'red toy','PREETHITOYS','red', 200, 0),(4,'shirt','VARUN','WHITE',300,1)]
cur.executemany(ins,a)
mydb.commit()
print("data inserted successfully")
