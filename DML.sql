use University_management;
--
--                              #####from table students 
--
-- 1-Query to get all data from table students 
SELECT * FROM students;
-- 2-Query to get count number of stu in each gen 
SELECT Gen, COUNT(*) AS num_students
FROM students
GROUP BY Gen;
-- 3-Query list of students (stuID,enrollmentID,name,major)in each gen order by
SELECT Student_id, Enrollment_id, CONCAT(First_name,' ', Last_name) AS name, major, gen
FROM students
order by gen;
-- 4-Query to get StudentID name whose name is starting with K 
SELECT Student_id, CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE CONCAT(First_name,' ', Last_name) LIKE 'K%';
-- 5-Query to get StudentID name whose name is in pattern s
 SELECT Student_id, CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE CONCAT(First_name,' ', Last_name) LIKE '%s%';
-- 6-Query num of student who came from province (not pp)
SELECT COUNT(*) AS num_students
FROM students
WHERE Address <> 'Phnom Penh';
-- 7-Query num of stu who came from province not pp group by each address 
SELECT address, COUNT(*) AS num_students
FROM students
WHERE Address <> 'Phnom Penh'
GROUP BY address;
-- 8-Query list of students who came from takeo and pp 
SELECT *
FROM students
WHERE Address IN ('Takeo', 'Phnom Penh');
-- 9-Query to get num of students who choose each major group by major 
SELECT major, COUNT(*) AS num_students
FROM students
GROUP BY major;
-- 10-Query to get Stu
SELECT Student_id, CONCAT(First_name,' ', Last_name) AS name
FROM students;
-- 11-dentID ,name whose major Software Engineer
SELECT Student_id, CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE major = 'Software Engineer';
-- 12-Query to get StudentID ,name whose major Data Scientist
SELECT Student_id,  CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE major = 'Data Scientist';
-- 13-Query to get StudentID ,name whose major Social Marketing
SELECT Student_id,  CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE major = 'Social Marketing';
-- 14-Query to get StudentID ,name whose major E_commerce
SELECT Student_id,  CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE major = 'E_commerce';
-- 15-Query to get StudentID ,name whose major Cybersecurity
SELECT Student_id,  CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE major = 'Cyber Security';
-- 16-Query to get StudentID ,name whose major Telecoms and networks 
SELECT Student_id,  CONCAT(First_name,' ', Last_name) AS name
FROM students
WHERE major = 'Telecoms And Networks';
-- 
--                                #####From table employees
--
-- 17-Query to get all data from table Employees 
SELECT * FROM employees;
-- 18-Query to get the num of employee who is working in full_time and part_time 
SELECT Work_Status, COUNT(*) AS num_employees
FROM employees
GROUP BY Work_Status;
-- 19-Query list of employee who is working full_time 
SELECT * FROM Employees WHERE Work_Status = 'full_time';
-- 20-Query list of employee who is working part_time
SELECT * FROM Employees WHERE Work_Status = 'part_time';
-- 21-Query the employee who is not teaching any course 
SELECT D.Department_name, COUNT(*) AS num_of_employees 
FROM Employees E
JOIN Departments D ON E.Department_id = D.Department_id
GROUP BY E.Department_id, D.Department_name;
-- 22-Query to get num of employee who are working in each department 
SELECT D.Department_name AS department, CONCAT(E.first_name, ' ', E.last_name) AS employees_list 
FROM Employees E
JOIN Departments D ON E.Department_id = D.Department_id;
-- 23-Query to get the list of employee who are working in each department 
SELECT D.Department_name AS department, CONCAT(E.first_name, ' ', E.last_name) AS employees_list 
FROM Employees E
JOIN Departments D ON E.Department_id = D.Department_id;
-- 24-Query the employee who is in department Innovation center 
SELECT * FROM Employees WHERE department_id 
= (SELECT department_id FROM Departments WHERE Department_name = 'Innovation Center');
-- 25-Query list of employee who got salary <500
SELECT * FROM Employees WHERE salary < 500;
-- 26-Query list of employee(employeeid,first_name,last_name,position)who got salary between 1000 -2000
SELECT employee_id, first_name, last_name, position 
FROM Employees 
WHERE salary BETWEEN 1000 AND 2000;
-- 27-Query employeeid , name , position who is getting the lowest salary 
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS name, position 
FROM Employees 
ORDER BY salary DESC;
-- 28-Query employeeid, name position who is getting the highest salary 
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS name, position 
FROM Employees 
ORDER BY salary DESC;
-- 29-Query to get employeeID, name , position who is hired firstly 
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS name, position 
FROM Employees 
ORDER BY hire_date ASC;
-- 30-Query to get employeeID,name,position who is hired after Teacher Van khemma
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS name, position 
FROM Employees 
WHERE hire_date > (SELECT hire_date FROM Employees WHERE last_name = 'khema')
ORDER BY hire_date ASC;
-- 31-Query to get avg of salary of all position 
SELECT AVG(salary) AS avg_salary FROM Employees;
-- 32-Query to get sum of all position
SELECT SUM(salary) AS total_salary FROM Employees;
--
--                                          #####Table Course 
--
-- 33-Query all data from table 
SELECT * FROM Courses;
-- #####Table Result
-- 34-Query all data from table results 
SELECT * FROM Results;
-- 35-Query resulted , studentid,GPA
SELECT Score, Student_id, GPA FROM Results;
--
--                                           #####Table Departments 
--
-- 36-Query all data from departments
select * from departments;
-- #####Table enrollment 
-- 37-Query all data from enrollments 
select * from enrollment;
-- 38-Query how many students has enrolled 
select count(enrollment_id) from enrollment;
-- 39-Query llist of student who enrolled in major Software Engineer
select * from enrollment where major_enrollment = "software engineer";
-- 40-Query llist of student who enrolled in major Data Scientist
select * from enrollment where major_enrollment = "data scientist";
-- 41-Query llist of student who enrolled in major Social Marketing
select * from enrollment where major_enrollment = "social Marketing";
-- 42-Query llist of student who enrolled in major E_commerce
select * from enrollment where major_enrollment = "E_commerce";
-- 43-Query llist of student who enrolled in major Cyber security
select * from enrollment where major_enrollment = "cyber security";
-- 44-Query llist of student who enrolled in major Telecoms and networks
select * from enrollment where major_enrollment = "telecoms and networks";
--
--                                           #####Table histories 
--
-- 45-Query all data from table employee histories
select * from employee_histories;
-- 46-Query count of employee_histories 
select count(employee_id) from employee_histories;
-- 47-Query list of employees who is working as TA in employees history
 select * from employee_histories where position = "teacher assistant";
-- 48-Query how long of working the employee whose name phal Anyta  
SELECT first_name,
       last_name,
       DATEDIFF(end_date, start_date) AS duration_of_work
FROM employee_histories
WHERE CONCAT(first_name, last_name) = "phalanyta";
--
--
--
--
--
--
--                          #####From inner join of table Student and Result 
--
-- 49-Select student id ,name ,major, GPA,grade 
select 
s.student_id,
concat(s.first_name,"",s.last_name)as Fullname,
s.major,
r.GPA,
r.grade
from students as s inner join 
results as r on
s.student_id=r.student_id; 
-- 50-Select name , major,coursed,score ,GPA,GRADE
select
concat(s.first_name,"",s.last_name)as Fullname,
s.major,
r.course_id,
r.score,
r.GPA,
r.grade
from students as s inner join 
results as r on
s.student_id=r.student_id; 
-- 51-Select name,major,courseID,GPA,Score who got the highest score for all course
select
concat(s.first_name,"",s.last_name)as Fullname,
s.major,
r.course_id,
r.score,
r.GPA
from students as s inner join 
results as r on
s.student_id=r.student_id
limit 1;
-- 52-Select name,major,courseID,GPA,Score who got the highest score for all course group by courseID 
select
concat(s.first_name,"",s.last_name)as Fullname,
s.major,
r.course_id,
r.score,
r.GPA,
r.grade
from students as s inner join 
results as r on
s.student_id=r.student_id
group by course_id
; 
-- 53-Select studentid,name,courseid,score who got score between 90-10 for all course
select
s.student_id,
concat(s.first_name," ",s.last_name)as Fullname,
s.major,
r.course_id,
r.score
from students as s inner join 
results as r on
s.student_id=r.student_id
where r.score between 90 and 100;
; 
-- #####From inner join of table Student & Result & Course 
-- 54-Select studentid ,name,major,coursetitle,score,GPA,grade,employee_name
select 
s.student_id,
concat(s.first_name," ",s.last_name)as Fullname,
s.major,
c.course_title,
r.score,
r.GPA,
r.grade,
r.employee_id
from students as s
inner join results as r on s.student_id=r.student_id 
inner join courses as c on r.course_id=c.course_id;
--
--                        #####From inner join of table Employee & Departments 
--
-- 55-Select count of employee of each department
select 
count(e.employee_id) as number_of_employee,
d.department_name
from employees as e 
inner join departments as d on e.department_id=d.department_id
group by d.department_id ;
-- 56-Display list of employee who is working in innovation center
select * from employees as e
inner join departments as d on e.department_id=d.department_id
where d.department_name="innovation center";
--
--                                         #####Subquery
--
-- 57-Write a query to find the name (first_name, last_name) 
-- and the salary of the employees who have a higher salary 
-- than the employee whose last_name = ‘kea’.
select 
concat(first_name," ",last_name) as fullname,
salary from employees where salary >(select salary from employees 
where last_name="kea");
-- 58-Write a query to find the name (first_name, last_name) 
-- of all employees who works in the computer science department.
select 
concat(first_name," ",last_name)as full_name
from employees where department_id=101;
-- 59-Write a query to find the name (first_name, last_name) 
-- of all employees who teaches student form Gen 9.
-- 60-Query to get student who is the youngest of each gen 
SELECT CONCAT(first_name, " ", last_name) AS name,dob
FROM students
ORDER BY dob DESC
LIMIT 1;
-- 61-Query to get the employee who is getting the lowest salary 
SELECT *
FROM employees
ORDER BY salary 
LIMIT 1;
--
--                                               #####view 
--
-- 62-query view for 
-- Select studentid ,name,major,coursetitle,score,GPA,grade,employee_name from 3 table studetns .courses ,results
CREATE VIEW ResultsOfstudents AS
SELECT s.student_id,CONCAT(s.first_name, " ", s.last_name) AS Fullname,
       s.major,c.course_title,r.score,r.GPA,r.grade,r.employee_id
FROM students AS s
INNER JOIN results AS r ON s.student_id = r.student_id
INNER JOIN courses AS c ON r.course_id = c.course_id;
SELECT * FROM ResultsOfstudents;
-- query to create view for 
create view listofstudentsscore90_100 as
select
s.student_id,
concat(s.first_name," ",s.last_name)as Fullname,
s.major,
r.course_id,
r.score
from students as s inner join 
results as r on
s.student_id=r.student_id
where r.score between 90 and 100;
; 
select * from listofstudentsscore90_100;
--
--                                           ######Create procedure 
--
-- 63- create procedure for table getstudentbylastname
DELIMITER //
CREATE PROCEDURE GetstudentsBylast_names(IN last_name VARCHAR(30))
BEGIN
    SELECT CONCAT(s.first_name, ' ', s.last_name) AS fullname,D.department_name,
           D.department_id,R.GPA,R.score
    FROM students AS s
    INNER JOIN departments AS D ON s.department_id = D.department_id
    INNER JOIN results AS R ON s.result_id = R.result_id
    WHERE s.last_name = last_name;
END //
DELIMITER ;
CALL GetstudentsBylast_names('Sovannarong');




