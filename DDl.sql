create database University_management;
use University_management;
create table students(
 Student_id int not null primary key auto_increment ,
 First_name varchar(55),
 Last_name varchar(55),
 DOB date,
 Major varchar(55),
 Phone_number int ,
 Address varchar(100),
 Email varchar(100),
 Gen int ,
 Password varchar(15),
 Class_id int ,foreign key(Class_id)
 references classes(Class_id),
 Department_id int ,foreign key(Department_id)
 references departments(Department_id),
 Result_id int ,foreign key(Result_id)
 references results(Result_id)
);
-- Table employee 
create table employees(
 Employee_id int not null primary key auto_increment ,
 First_name varchar(55),
 Last_name varchar(55),
 DOB date,
 Position varchar(55),
 Work_Status varchar(55),
 Phone_number int ,
 Email varchar(100),
 Hire_date date,
 salary double,
 Password_login varchar(15),
 Department_id int ,foreign key(Department_id)
 references departments(Department_id),
 Course_id int ,foreign key(Course_id)
 references courses(Course_id)
);
-- Table Employee_history
create table employee_histories(
 Employee_id int not null primary key  ,
 First_name varchar(55),
 Last_name varchar(55),
 Start_date date,
 End_date date,
 Position varchar(55),
 Work_status varchar(55),
 Course_id int ,foreign key(Course_id)
 references courses(Course_id),
 Department_id int ,foreign key(Department_id)
 references departments(Department_id) 
);
-- Table Result 
create table results(
  Result_id int not null primary key auto_increment,
  GPA float,
  Grade varchar(10),
  Score float,
  Course_id int ,foreign key(Course_id)
  references courses(Course_id),
  Student_id int , foreign key(Student_id)
  references students(Student_id),
  Employee_id int,foreign key(Employee_id)
  references employees(Employee_id)
);

-- Table classes 
create table classes (
 Class_id int not null primary key auto_increment,
 Room_number varchar(10) 
);
-- Table courses
create table courses(
 Course_id int not null primary key auto_increment,
 Course_title varchar(55),
 Employee_id int ,foreign key(Employee_id)
 references employees(Employee_id)
);
-- Table departments
create table departments(
 Department_id int not null primary key auto_increment,
 Department_name varchar(55),
 Head_of_department  varchar(55)
);
-- Table enrollment
create table enrollments(
  Enrollment_id int not null primary key auto_increment,
  First_name varchar(55),
  Last_name varchar(55),
  Major_enrollment varchar(55),
  Phonenumber int
);



