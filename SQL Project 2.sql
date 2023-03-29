show databases

CREATE database project_2

USE project_2

CREATE table std_details(
std_id int,
name varchar(30),
class int,
physics int,
chemistry int,
biology int,
maths int,
percentage double
);

show tables

SELECT * FROM std_details

DESC std_details

INSERT INTO std_details (std_id, name, class, physics,chemistry,biology,maths,percentage) VALUES(1,'Rahul',9,78,65,79,80,75.5)

SELECT * FROM std_details

INSERT INTO std_details VALUES(2,'Priya',10,80,77,89,79,81.25),
(3,'Jessy',10,83,70,81,76,77.5),
(4,'Ajay',9,74,72,77,79,77.5),
(5,'Deepthi',10,80,79,82,76,79.25),
(6,'Ketan',10,84,82,86,79,82.75),
(7,'Preethi',9,80,79,89,86,83.5),
(8,'Alia',9,75,72,79,84,77.5),
(9,'Keerthi',10,94,92,89,90,91.25),
(10,'Neelesh',9,94,79,97,91,90.25);

SELECT * FROM std_details

/*Q.No 1 : What is the overall highest percentage among the total students recorded?*/

SELECT percentage FROM std_details WHERE percentage > 90 ORDER BY percentage DESC LIMIT 1

/*Q.No 2 : Who is the student with overall highest percentage among the total students recorded and is from which class?*/

SELECT name, class, percentage FROM std_details ORDER BY percentage DESC LIMIT 1

/*Q.No 3 : Who is the student with overall highest marks obtained in Chemistry among the total students recorded?*/ 

SELECT  name, chemistry FROM std_details ORDER BY chemistry DESC LIMIT 1

/*Q.No 4 : Who is the student with overall lowest marks obtained in maths among the total students recorded?*/

SELECT name, maths FROM std_details ORDER BY maths LIMIT 1

/*Q.No 5 : List out the student's marks in all subjects and who scored 75 above in Physics for a project.*/

SELECT name, physics, chemistry, biology, maths FROM std_details WHERE physics >75 

/*Q.No 6 : List out the student's marks who scored more than 80% in all subjects.*/

SELECT name,percentage FROM std_details WHERE percentage > 80 ORDER BY percentage DESC

/*Q.No 7 : Group the students maths marks with there uniqueness */

SELECT maths,COUNT(std_id) FROM std_details GROUP BY maths ORDER BY maths DESC

/*Q.No 8 : Find the average of both the classes */

SELECT class,AVG(percentage) from std_details GROUP BY class ORDER BY AVG(percentage) DESC

/*Q.No 9 : Find out the students of class which have maximum percentage. */

SELECT class, MAX(percentage) FROM std_details GROUP BY class ORDER BY MAX(percentage) DESC

/*Q.No 10 : Find the percentages which are obtained by only one student. */

SELECT percentage,COUNT(percentage) FROM std_details GROUP BY percentage HAVING COUNT(percentage)=1 ORDER BY percentage DESC