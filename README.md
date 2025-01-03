# SQL-2

Selections in sql:-
1. Basic Selection
2. Conditional Filtering
3. Pattern Matching with LIKE
4. Escape Characters
5. Advanced Queries

--------------Table  bank ---------------------------------------------

create table bank (id int  primary key,   
name varchar(30),
age int ,
mode varchar(10),
);
 
 --drop table bank;
 INSERT INTO bank(id, name, age, mode)
 VALUES(1, 'nishu' , 22, 'online'),
 (2, 'John', 18,'debit'),
 (3, 'Emma', 50, 'cash'),
 (4, 'Alex', 30, 'online'),
 (5, 'Sophia', 32,'debit'),
 (6, 'Olivia', 28,'cash'),
(7, 'Liam',31, 'online'),
(8, 'Ava', 90,'debit'),
(9, 'Noah', 75,'cash'),
(10, 'Isabella',44, 'online'),
(11, 'Sam', 15,'debit'),
(12 ,'Simran', 17,'cash'),
(13, 'Shero', 36,'debit'),
 (14, 'Si_uel', 22, 'online');
