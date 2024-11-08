-- finding second largest salary from manager table
select name,salary from manager1 order by salary desc limit 1,1;
-- finding third largest salary from manager table
select name,salary from manager1 order by salary desc limit 2,1;-- it will work when there is duplicates but give wrong output.
-- finding the largest salary
select max(salary) from manager;
select name,salary from manager1 order by salary limit 2,1;-- if there are duplicate salary it will give give wrong output
create table orderss(
order_id int,
order_date date,
cus_id int
);

create table customer1(
cus_id int,
cus_name varchar(30),
contact_name varchar(31),
country varchar(30)
);

INSERT INTO customer1 VALUES (101,"PARI","AMMA","INDIA"),(102,"PARIMALA","ATTA","INDIA"),(103,"MADHAV","DADA","BHUTAN"),(104,"VARUN","CHIMP","SOUTH AFRICA");

INSERT INTO orderss VALUES (201,"2022-04-26",101),(202,"2022-04-20",102),(203,"2024-09-2",103),(204,"2028-08-8",104);

-- inner joins
select orderss.order_id,customer1.cus_name,orderss.order_date from orderss inner join customer1 on orderss.cus_id=customer1.cus_id;
-- both above and below cases are same in different way.
select order_id,cus_name,order_date from orderss o,customer1 c where o.cus_id=c.cus_id;
create table staff(
id int,
name varchar(20),
age int,
package int);

create table payment(
payint int,
date_ date,
sid int,
amount int);

insert into staff values(201,"pinky",23,100000),(202,"anik",34,120000),(203,"aman",32,130000),(204,"preethi",20,123000);

insert into payment values(101,"2023-03-3",201,12000),(102,"2022-08-9",202,13000),(103,"2021-06-26",205,13000),(104,"2020-09-9",206,15000);

select id,name,age,amount from staff s,payment p where s.id=p.sid;-- using normal joins.
                                                                  -- if id name are same in both table and if u are trying to print it then we should mention table name like "select s.id......"
                                                                  -- s,p are alias name
alter table orderss add ship_id int;
select * from orderss;
update orderss set ship_id=1234 where order_id=201;
update orderss set ship_id=2222 where order_id=202;
update orderss set ship_id=1111 where order_id=203;
update orderss set ship_id=3333 where order_id=204;

create table shipping(
shipping_id int,
name varchar(20));

insert into shipping values(1234,"dtvc"),(1111,"xys"),(8888,"oko"),(3333,"ret");

select * from shipping;

-- joining of 3 tables orderss,customer1,shipping

select  orderss.order_id,customer1.cus_name,shipping.name from
((orderss inner join customer1 on orderss.cus_id=customer1.cus_id)
inner join shipping on orderss.ship_id=shipping.shipping_id);

-- left join with 3 tables


select customer1.cus_name,orderss.order_id from customer1
left join orderss on customer1.cus_id=orderss.cus_id;-- we will get all the rows commom with customer id
		
select * from orderss;
select * from customer1;-- we can select all these things at a time
select * from shipping;

select order_date,cus_name,country from customer1 right join orderss on customer1.cus_id = orderss.cus_id;-- display all the data from right table and common data from both table

select cus_name,country,order_id from customer1 
left join orderss on customer1.cus_id=orderss.cus_id order by customer1.cus_name;

select cus_name,country,order_id from customer1 
left join orderss on customer1.cus_id=orderss.cus_id where customer1.cus_name like "p%" order by customer1.cus_name;

-- FULL JOIN
select customer1.cus_name,orderss.order_id from customer1 left join orderss on customer1.cus_id = orderss.cus_id;

select customer1.cus_name,orderss.order_id from customer1 right join orderss on customer1.cus_id = orderss.cus_id;

select customer1.cus_name,orderss.order_id from customer1 full join orderss on customer1.cus_id = orderss.cus_id;-- full join not working.

select customer1.cus_name,orderss.order_id from customer1 left join orderss on customer1.cus_id = orderss.cus_id
union
select customer1.cus_name,orderss.order_id from customer1 right join orderss on customer1.cus_id = orderss.cus_id;

select cus_name,orderss.order_id from customer1 full join orderss on cus_id = orderss.cus_id;-- full join not working. DOUBT

CREATE TABLE TEST(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
C2 VARCHAR(40) NOT NULL,
C3 VARCHAR(40) DEFAULT 'SOFTWARE ENGINEER');
-- AUTOMATICALLY ID IS INCREMENTED BY 1
-- 2 PRIMARY KEYS CAN'T BE
ALTER TABLE TEST AUTO_INCREMENT=100;
