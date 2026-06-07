/*
Module End Assignment
*/
----------------------

create database E_Learning;

Use E_Learning;
-----------------------

Create  Table learners 
(
 Learner_id  INT primary key,
 Full_name varchar(100) Not Null,
 Country Varchar(100)  Not Null
 ); 
 
 Create Table courses
 (
 Course_id INT Primary Key,
 Course_name varchar(100) Not Null,
 Category varchar(100) Not Null,
 unit_price int
 );
 
 
 Create Table Purchases
 (
 Purchase_id INT Primary Key,
 Learner_id  INT ,
 Course_id INT,
 Quantity INT Not Null,
 Purchase_date Date,
 Foreign Key (Learner_id) References learners(Learner_id),
 Foreign Key (Course_id) References courses(Course_id)
 );

-------------------------

-- Learners
INSERT INTO learners (learner_id, full_name, country) VALUES
(1, 'Arjun Mehta', 'India'),
(2, 'Priya Sharma', 'India'),
(3, 'John Smith', 'USA'),
(4, 'Maria Gonzalez', 'Spain'),
(5, 'Chen Wei', 'China'),
(6, 'Emma Brown', 'UK'),
(7, 'Liam', 'Ireland'),
(8, 'Sofia Rossi', 'Italy'),
(9, 'Ahmed Khan', 'UAE'),
(10, 'Hiro Tanaka', 'Japan');

select * from learners;

-- Courses
INSERT INTO courses (course_id, course_name, category, unit_price) VALUES
(101, 'Python Basics', 'Programming',65000),
(102, 'Advanced SQL', 'Database', 35000),
(103, 'Power BI Essentials', 'Analytics', 30000),
(104, 'Excel for Business', 'Productivity', 15000),
(105, 'Data Science Fundamentals', 'Analytics', 60000),
(106, 'Machine Learning Intro', 'Analytics', 70000),
(107, 'Java Programming', 'Programming',45000),
(108, 'Cloud Computing Basics', 'Technology', 40000),
(109, 'Business Statistics', 'Analytics', 50000),
(110, 'Digital Marketing', 'Marketing', 40000),
(111,'Gen-AI','Technology',45000),
(112, 'SAP Management', 'Technology', 50000),
(113, 'Automation Testing', 'Technology', 50000),
(114, 'IICS', 'Technology', 55000),
(115, 'Advance PL/SQL ', 'Database', 40000);

select * from courses;

-- Purchases
INSERT INTO purchases (purchase_id, learner_id, course_id, quantity, purchase_date) VALUES
(1001, 1, 101, 1, '2024-01-15'),
(1002, 1, 104, 2, '2024-02-10'),
(1003, 2, 103, 1, '2024-03-05'),
(1004, 2, 105, 1, '2024-03-20'),
(1005, 3, 102, 1, '2024-04-01'),
(1006, 3, 104, 3, '2024-04-15'),
(1007, 4, 101, 2, '2024-05-02'),
(1008, 4, 103, 1, '2024-05-18'),
(1009, 5, 105, 2, '2024-06-01'),
(1010, 5, 102, 1, '2024-06-10'),
(1011, 1, 103, 1, '2024-07-05'),
(1012, 2, 104, 2, '2024-07-12'),
(1013, 3, 105, 1, '2024-08-01'),
(1014, 4, 102, 2, '2024-08-15'),
(1015, 5, 101, 1, '2024-09-05'),
(1016, 1, 105, 1, '2024-09-20'),
(1017, 2, 101, 1, '2024-10-01'),
(1018, 3, 103, 2, '2024-10-12'),
(1019, 4, 104, 1, '2024-11-01'),
(1020, 5, 103, 1, '2024-11-15'),
(1021, 6, 106, 1, '2024-12-01'),
(1022, 6, 104, 2, '2024-12-15'),
(1023, 7, 107, 1, '2025-01-05'),
(1024, 7, 101, 1, '2025-01-20'),
(1025, 8, 108, 2, '2025-02-01'),
(1026, 8, 103, 1, '2025-02-10'),
(1027, 9, 109, 1, '2025-03-01'),
(1028, 9, 105, 2, '2025-03-15'),
(1029, 10, 110, 1, '2025-04-01'),
(1030, 10, 102, 1, '2025-04-12'),
(1031, 6, 101, 1, '2025-05-01'),
(1032, 7, 103, 2, '2025-05-15'),
(1033, 8, 104, 1, '2025-06-01'),
(1034, 9, 106, 1, '2025-06-12'),
(1035, 10, 107, 2, '2025-07-01'),
(1036, 6, 108, 1, '2025-07-15'),
(1037, 7, 109, 1, '2025-08-01'),
(1038, 8, 110, 2, '2025-08-12'),
(1039, 9, 101, 1, '2025-09-01'),
(1040, 10, 103, 1, '2025-09-15'),
(1041, 6, 105, 1, '2025-10-01'),
(1042, 7, 102, 2, '2025-10-12'),
(1043, 8, 106, 1, '2025-11-01'),
(1044, 9, 107, 1, '2025-11-15'),
(1045, 10, 108, 2, '2025-12-01'),
(1046, 6, 109, 1, '2025-12-15'),
(1047, 7, 110, 1, '2026-01-01'),
(1048, 8, 101, 2, '2026-01-15'),
(1049, 9, 102, 1, '2026-02-01'),
(1050, 10, 103, 1, '2026-02-12');
 
select * from Purchases ;

---------------------

 -- Joins
 -- inner joins 
select
L.full_name AS learner_name,
C.Course_name,
C.Category,
P.Quantity,
Format(C.Unit_price * P.Quantity,2) as Total_Amount,
P.Purchase_Date
from  purchases P  Inner join 
courses C on 
P.Course_Id = C.Course_id
Inner Join learners L
On P.Learner_id = L.Learner_id
order by P.Purchase_date;

-- Right Join 
select
L.full_name AS learner_name,
C.Course_name,
C.Category,
P.Quantity,
Format(C.Unit_price * P.Quantity,2) as Total_Amount,
P.Purchase_Date
from  purchases P  Right join 
courses C on 
P.Course_Id = C.Course_id
Right Join learners L
On P.Learner_id = L.Learner_id
order by P.Purchase_date;

--- Left Join 
SELECT
C.course_name,
C.category,
L.full_name AS learner_name,
P.quantity,
FORMAT(C.unit_price * P.quantity, 2) AS total_amount,
P.purchase_date
FROM courses AS C
LEFT JOIN purchases AS P 
ON C.course_id = P.course_id
LEFT JOIN learners AS L 
ON P.learner_id = L.learner_id
ORDER BY C.course_id;
----------------------------------

 /*Data Presentation Guidelines for the following query 
●	Format currency values to 2 decimal places.
●	Use aliases for column names (e.g., AS total_revenue).
●	Sort results appropriately (e.g., highest total_spent first).*/

Select 
C.Course_name,
Format(C.unit_price,2) AS unit_price,
SUM(P.Quantity) As Total_Quantity,
FORMAT(sum(C.unit_price * P.quantity), 2)AS total_revenue
From courses c
Left Join purchases P 
on C.course_id= P.course_id
group by C.unit_price,C.Course_name
order by total_revenue  desc;
-------------------------------

/*Analytical Queries
Write SQL queries to answer the following questions:*/

-- Q1. Display each learner’s total spending (quantity × unit_price) along with their country.
SELECT 
L.country,
FORMAT(SUM(C.unit_price * P.quantity), 2) AS total_spent
FROM purchases AS P
Inner JOIN learners AS L
ON P.learner_id = L.learner_id
Inner JOIN courses AS C
ON P.course_id = C.course_id
GROUP BY L.country
ORDER BY total_spent DESC;

-- Q2. Find the top 3 most purchased courses based on total quantity sold.
select * from purchases;
SELECT 
C.course_name,
SUM(P.quantity) AS total_quantity
FROM purchases AS P
INNER JOIN courses AS C
ON P.course_id = C.course_id
GROUP BY C.course_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3. Show each course category’s total revenue and the number of unique learners who purchased from that category.

select
C.Course_name,
C.Category,
COUNT(Distinct L.Learner_id) Unique_Learners,
FORMAT(sum(C.unit_price * P.quantity), 2)AS total_revenue
From courses C
Left join  purchases P
on C.Course_id = P.Course_id
left join learners L
on P.Learner_id = L.Learner_id
Group by Course_name,C.Category
order by total_revenue ;


-- Q4. List all learners who have purchased courses from more than one category.
Select 
L.Full_name,
L.country,
COUNT(DISTINCT C.category) AS category_count
From purchases P
LEFT join courses C
on P.Course_id=C.Course_id
LEFT join learners L 
on P.Learner_id = L.Learner_id
Group by L.Full_name,L.Country
having Count( distinct C.Category)> 1
order by category_count;

-- Q5. Identify courses that have not been purchased at all.

SELECT
C.course_name,
C.category,
L.full_name AS learner_name
FROM courses  C
LEFT JOIN purchases  P 
ON C.course_id = P.course_id
LEFT JOIN learners  L 
ON P.learner_id = L.learner_id
WHERE P.course_id IS NULL
ORDER BY C.course_id;

------------------------------------

select * from courses;

select * from learners;

select * from purchases;

-- top-performing course categories
select 
C.Category,
count(Distinct P.Learner_id) As unique_learners,
Format(sum(P.Quantity * C.unit_price),2) As total_revenue
From courses C
left Join purchases P
on C.course_id=P.course_id
group by  C.Category
order by total_revenue;

-----------------
-- Top 3 courses by quantity sold

Select
C.Course_name,
SUM(P.Quantity) As Total_Quantity 
From courses C
left join purchases P
on C. course_id=P.course_id
group by C.Course_name
order by Total_Quantity DESC
limit 3;
-------------
-- Top learners by spending 
select
L.Full_name as learner_name,
L.country,
Format(sum(C.unit_price * P.Quantity),2) As total_spent
From learners L left join 
purchases P on L.learner_id=P.learner_id
Left join courses C
on P.course_id=C.course_id
Group by L.learner_id,L.country,learner_name
Order by total_spent;
 
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 