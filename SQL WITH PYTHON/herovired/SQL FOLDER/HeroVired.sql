create database HeroVired;
create table RGM(
  Name varchar(30) not null,
  college varchar(20) not null,
  session varchar(30) not null,
  contact_no int not null,
  address varchar(70) primary key not null
  );
select * from RGM;  
INSERT INTO RGM VALUES ("pandu","IIT","PYTHON",24149394,"DEWRtWR"),("NIKHILa","IIT","SQL",241493924,"Dwaraka");