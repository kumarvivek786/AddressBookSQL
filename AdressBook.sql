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
