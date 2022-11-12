--Uc1 create AddressBook Database
create database Address_book_service

--Uc2 Cteate Table
create table employee_payroll
( 
first_name varchar(25),
last_name varchar(30),
address varchar(200),
city varchar(25),
state varchar(30),
zip varchar(6),
Phone_number varchar(15),
email varchar(50)
)

--uc3 Insert records
insert into employee_Payroll values

('kumar','vivek','Gurhatta','Patna','Bihar',800008,9934776820,'ikumarvivek786@gmail.com'),
('Shashi','kumar','VijayNagar','Muzaffarpur','Bihar',800001,1234567896,'Shashi1234@gmail.com'),
('Rakesh','kumar','Patliputra','patna','Bihar',800002,9912000001,'rakesh@gmail.com'),
('Harsh','kumar','Kankerbagh','Ara','Bihar',800003,9141253625,'Harsh@gmail.com');

--uc4 Ability To Update Using Name

update employee_payroll set zip = 800005 where first_name = 'Harsh'

select * from employee_payroll

--uc5 Ability To Delete Using Name

Delete from employee_payroll where first_name = 'Harsh'


--uc6 Retrive person by state or city

select * from employee_payroll where city = 'Muzaffarpur' and  state = 'Bihar'

--uc7 Count by city or state

select state, City, count(State) as 'Count by State', count(City) as 'Count by City' from employee_payroll
group by State, City;

--uc8 
--retrives contacts of person in city 'Patna' in ascending order by FirstName
select * from employee_payroll
where City = 'Patna'
order by First_Name asc;

--uc9
--alter address book to add Name and Type
Alter table employee_payroll
Add Name varchar(100), Type varchar(100)

update employee_payroll set Name = 'Friend',Type = 'FriendGroup' where First_Name in ('kumar');
update employee_payroll set Name = 'Family',Type = 'FamilyGroup' where First_Name in ('shashi','rakesh');

--uc10
--retieves count by type
select count(First_Name) from employee_payroll where Type = 'FamilyGroup';

--uc11 to add person in family and friend 
insert into employee_payroll values
('Rakesh','Mehta','Lane 4','Mumbai','Maharashtra',489856,9999999999,'rk123@gmail.com','Family','FamilyGroup'),
('Rahul','Roy','K90/78 Allahabad','Allahabad','Uttar Pradesh',451207,8888888888,'rahul777@gmail.com','Friend','FriendGroup');
