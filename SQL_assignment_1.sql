-- Create database school
CREATE  DATABASE
	school

-- create school tables
USE
	school

	CREATE TABLE 
		Student (
			ID int identity primary key,
			First_name nvarchar (50) not null,
			Last_name nvarchar (50) not null,
			Age int not null,
			Grade decimal (4,2) not null,)

	CREATE TABLE 
		Student_contact (
			Email nvarchar (200) not null,
			Phone nvarchar (50) not null,
			Address nvarchar (255) not null,)

	CREATE TABLE 
		Course (
			ID int identity primary key,
			Cours_name nvarchar (50) not null,)

	CREATE TABLE 
		Class (
			ID int identity primary key,
			Department nvarchar (100) not null,
			Numper_of_student int not null)

	CREATE TABLE 
		Student_course (
			Course_ID int foreign key  references Course (ID),
			Studet_ID int foreign key   references Student (ID))
	
-- add foreign kes all table 
	ALTER TABLE Student
	ADD   Class_ID int foreign key references Class (ID)

	ALTER TABLE Student_contact
	ADD   student_ID int foreign key references student (ID)

	ALTER TABLE Course
	ADD   Class_ID int foreign key references Class (ID)
