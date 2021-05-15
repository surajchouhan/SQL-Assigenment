s//1
select* from salespeople;

//2
select *from Customers where RATING=100;

//3
select MAX(AMT) from Orders join Salespeople where Orders.SNUM=Salespeople.SNUM;

//4
select *from Orders order by CNUM DESC;

//5
select DISTINCT(SNAME) from Salespeople LEFT JOIN Orders ON Salespeople.SNUM=Orders.SNUM;

//6
Select CNAME from Customers LEFT JOIN Salespeople ON Customers.SNUM=Salespeople.SNUM;

//7
select count(*) AS COUNT ,c.SNUM,s.SNAME from customer c,salespeople s WHERE c.SNUM=s.SNUM GROUP BY c.SNUM ;




//8




//9
select * from Customers where CITY="Sanjose";

//10
Select * from Salespeople INNER JOIN Customers where Salespeople.SNUM=Customers.SNUM AND Salespeople.CITY=Customers.CITY;

//11
Select * from Customers where CITY=Sanjose AND RATING>200;

//12
select SNAME,COMM from Salespeople where CITY="london";

//13
Select ONUM from Salespeople INNER JOIN Orders where Salespeople.SNUM=Orders.SNUM AND salespeople.SNAME="Motika";

//14
Select CNAME from Orders JOIN Customers where Orders.CNUM=Customers.CNUM AND ODATE='1990-03-10';

//15



//16
select * from Orders where Orders AMT>(select MIN(AMT)from Orders where ODATE='1990-06-10);

//17
select SNAME From Salespeople WHERE EXISTS(Select SNUM from Customers where salespeople.SNUM=Customers.SNUM AND RATING=300);

//18
select CNAME from Customers where CNUM>=1000+(select SNUM from Salespeople where SNAME="Serres");

//19


//20
select * from Orders JOIN Salespeople where Orders.SNUM=Salespeople.SNUM AND AMT>3000;

//21


//22
select Customers.CITY from Salesepeople,Customers where Salespeople.NUM=Customers.SNUM AND Salespeople.SNAME="Serres";

//23
Select* from Customers where RATING>200;

//24
select count(Salespeople.SNUM) where Salespeople INNER JOIN Orders where Salespeople.SNUM=Orders.SNUM;
//25



//27
select CNAME,SNAME from Salespeople JOIN Orders where Salespeople.CITY=Orders.CITY;

//28
select SNAME from Salespeople where SNAME like'P__l%';


//29
select* from Orders where SNUM=(select SNUM from Customers where CNAME="Sernose')

//30

//31
//34
select ONUM,AMT from Orders  where AMT>(select AVG(AMT) from orders where ODATE='1990-04-10');

//35
select CNUM,CBANE from Customers where RATING=(select MAX(RATING) from Customers);
//37
select CNAME,RATING From Customers where CITY="Sanjose";

//38
select * from Orders where AMT<(select AVG(AMT)from Orders,Customers where Customers.CITY="Sanjose");
//39
select* from Orders where AMT>(select AVG(AMT) from Orders,Customers where Customer.CNUM=Orders.CNUM);

//40
//42
select count(*) from Customers where RATING>(select AVG(RATING) from Customers where CITY="Sanjose");

//43
select * from Salespeople where CITY="Barcelona" OR CITY="London";

//44

//46
select* from Orders where AMT>(1000.00*65);
//47
//select Orders.ONUM,Customers.CNUM from Orders INNER JOIN Customers where Orders.CNUM=Customers.CNUM;
//48
select* from Customers where RATING>=(Select MIN(RATING) from Customers where Customers.CNUM=(Select SNUM from Salespeople where SNAME="Serres"));
//49
select* from Orders where ODATE='1990-03-10';
select* from Orders where ODATE='1990-04-10';
//50
select*from Customers where RATING>(Select MAX(RATING) from Customers where CITY="Rome");
//51
select * from Customers where RATING>100;
//52
select* from Customers where SNUM=1001;

//53

//54
select * fro Orders where AMT=0 OR AMT=NULL;

//56
select SNAME,COMM from Salespeople;

//57
select CNAME,CITY from Customers where RATING=(Select RATING FROM Customers where CNUM=(Select CNUM from Customers where CNAME="Hoffman"));
//58

//59
select CNAME,RATING from Customers,Orders where AMT>=(select AVG(AMT) from Orders);

//60
select SUM(AMT) from Orders;
//61







