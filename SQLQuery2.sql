

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
 --1. select all 
select * from bank;

 --2. select some col
select id, name from bank;

--3. select limited no. of row 
select top 5* from bank;

-- 4. select distinct value
select distinct mode from bank;

-- 5. select val btw 
select * from bank
where age between 18 and 30;

-- 6. select val in sigle option
select * from bank
where mode = 'cash';

-- 7. select val in multiple option 
select * from bank
where mode in ('online','debit'); 

-- 8. select greter than value
select  * from bank
where mode> 'debit';

-- 9. select by AND operator
select * from bank
where mode= 'cash' and age>30;

--10 . select by AND operator
select * from bank
where mode = 'debit' or age<18;

--11 . select ratio of col 
select *, age/id as ratio from bank;

-- 12. select  for get the current datetime of real time
select * , getdate() from bank;

-- 13. select 1st word with s
select * from bank
where name like 's%'
;

-- 14. select 1st is s and  last is a
select * from bank
where name like 's%a';

-- 14. select ia (mid) word
select * from bank
where name like '%ia%'

-- 15. select first can be anything but 2nd should be i
select * from bank
where name like '_i%';

-- 16(i). select  after 3 either 0 or 1 or 2 or 6 e.g 30 ,31 and 32 36
select * from bank
where age like '3[0126]%';

-- 16(ii). select 
select * from bank
where name like 'S[ao]%';

-- 17. select except of ao can be anything
select * from bank
where name like 'S[^ao]%';

-- 17. select from sa to si ...it can be sa, sb, sc, sd, se, sf,sg,sh,si 
select * from bank
where name like  'S[a-i]%' ;

--18 escape  ESCAPE keyword to define an escape character when you're working with the LIKE clause. 
--This is useful when you want to match special characters that are normally treated as wildcards (such as % or _).
select * from bank
where name like 'Si\_%' escape '\'  --eg: name :- Si_uel