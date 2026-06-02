--Department Table--
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments VALUES
(101,'IT'),
(102,'HR'),
(103,'Finance'),
(104,'Sales'),
(105,'Marketing'),
(106,'Operations');

--Employees Table--
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    city VARCHAR(50),
    joining_date DATE
);
INSERT INTO Employees VALUES
(1,'Rahul',101,50000,'Delhi','2022-01-10'),
(2,'Aman',102,60000,'Noida','2021-05-15'),
(3,'Neha',101,70000,'Delhi','2020-07-20'),
(4,'Priya',103,55000,'Mumbai','2023-02-01'),
(5,'Rohit',101,80000,'Pune','2019-11-11'),
(6,'Simran',102,45000,'Delhi','2022-06-25'),
(7,'Arjun',103,75000,'Mumbai','2020-04-18'),
(8,'Karan',104,65000,'Bangalore','2021-08-12'),
(9,'Sneha',104,52000,'Pune','2022-09-01'),
(10,'Ankit',101,90000,'Noida','2018-12-15'),
(11,'Pooja',102,58000,'Delhi','2021-01-08'),
(12,'Vikas',103,72000,'Mumbai','2019-03-30'),
(13,'Megha',101,68000,'Bangalore','2020-10-22'),
(14,'Riya',104,47000,'Pune','2023-04-14'),
(15,'Mohit',101,85000,'Noida','2019-07-07'),
(16,'Nisha',103,63000,'Delhi','2021-11-19'),
(17,'Deepak',104,56000,'Mumbai','2022-02-10'),
(18,'Kriti',102,49000,'Pune','2023-01-25'),
(19,'Yash',101,78000,'Bangalore','2020-06-16'),
(20,'Aditi',103,69000,'Delhi','2021-09-05'),
(21,'Manish',104,61000,'Noida','2022-03-17'),
(22,'Tanya',102,53000,'Mumbai','2020-08-09'),
(23,'Abhishek',101,95000,'Pune','2018-05-21'),
(24,'Shreya',103,71000,'Bangalore','2019-12-12'),
(25,'Varun',104,64000,'Delhi','2021-07-28'),
(26,'Ayush',105,58000,'Hyderabad','2020-01-14'),
(27,'Sakshi',105,62000,'Chennai','2021-06-11'),
(28,'Nitin',106,67000,'Mumbai','2019-09-19'),
(29,'Kavya',106,71000,'Delhi','2022-05-22'),
(30,'Harsh',105,54000,'Pune','2023-01-02'),
(31,'Anjali',101,88000,'Bangalore','2018-08-18'),
(32,'Rakesh',102,51000,'Noida','2022-10-10'),
(33,'Payal',103,77000,'Mumbai','2020-11-13'),
(34,'Saurabh',104,69000,'Delhi','2021-04-27'),
(35,'Isha',105,60000,'Hyderabad','2022-07-07'),
(36,'Tarun',106,73000,'Chennai','2019-02-16'),
(37,'Muskan',101,82000,'Pune','2020-03-03'),
(38,'Gaurav',102,55000,'Delhi','2021-12-12'),
(39,'Komal',103,79000,'Mumbai','2018-11-21'),
(40,'Ritik',104,62000,'Bangalore','2023-05-15'),
(41,'Nandini',105,66000,'Noida','2020-09-09'),
(42,'Prateek',106,76000,'Delhi','2019-06-06'),
(43,'Divya',101,97000,'Mumbai','2018-04-04'),
(44,'Akash',102,59000,'Pune','2022-08-08'),
(45,'Bhavna',103,74000,'Hyderabad','2021-02-20'),
(46,'Lokesh',104,68000,'Chennai','2020-12-24'),
(47,'Pallavi',105,63000,'Delhi','2021-10-01'),
(48,'Vivek',106,81000,'Mumbai','2019-05-05'),
(49,'Ruchi',101,92000,'Bangalore','2018-07-17'),
(50,'Adarsh',104,65000,'Noida','2022-11-11');
