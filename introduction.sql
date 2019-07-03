-- AVG,COUNT,SUM,MIN,MAX --
SELECT MAX(salary)
FROM current_job_detail;
	-- GROUP BY --
SELECT job_title,
MAX(salary)
FROM current_job_detail
GROUP BY job_title;
SELECT job_title,
AVG(salary)
FROM current_job_detail
GROUP BY job_title;
SELECT job_title,
MIN(salary)
FROM current_job_detail
GROUP BY job_title;   
SELECT job_title,
SUM(salary)
FROM current_job_detail
GROUP BY job_title;
SELECT job_title,
COUNT(*)
FROM current_job_detail
GROUP BY job_title;
-- aliases --
-- SELECT cjd.employee_id						-- using * creates many to many relationships
-- FROM current_job_detail cjd
-- INNER JOIN employee_detail ed
-- ON cjd.employee_id = ed.employee_id;


-- CREATING A NEW TABLE AND PLACEING FIELS INTO IT
CREATE TABLE
my_favourite_employees(
employee_id int PRIMARY KEY,-- creates a new table eith the primart key employee id from jobtitle table
job_title	varchar(64));

DROP TABLE my_favourite_employees;

INSERT INTO my_favourite_employees
SELECT  employee_id
FROM current_job_detail
WHERE employee_id in (1001, 1002);		-- putd the employee id and job title of the employee with id 1001 and 1002 into the my_favourite_employees table

DELETE FROM my_favourite_employees
WHERE employee_id = 1001;				-- deletes the employee with the id 1001 from my_favourite_employees table
-- table task --
CREATE TABLE 
great_name(
employee_id int PRIMARY KEY,
Name varchar(64));
DROP TABLE great_name;
INSERT INTO great_name
SELECT Name, 
Employee_ID
FROM employee_detail
WHERE Name = "Bob" or 
Name = "Joe" or
Name = " Adam" or
Name = "Debra" or
Name = "Charlotte";

DELETE FROM great_name
where employee_id in (1003);
-- TASK --
SELECT * 
FROM current_job_detail
WHERE job_title IN
('Tech Lead');		-- retuens a table of all the tech leads
SELECT * 
FROM employee_detail
WHERE gender IN		-- returnd a tab;e of all the female employees
('F');
SELECT * 
FROM employee_detail
WHERE Name LIKE		-- returnd a table of all employees whos name starts with a 's'
('S%');
SELECT *
FROM jobs_history
WHERE job_title LIKE
('%developer%');
SELECT laptop_id
FROM laptop_detail		-- ouput the laptop id from the laptop detail table ehich have an os of ubuntu
WHERE os = 'Ubuntu';
-- EXTENTION TASK --
SELECT Name 
FROM employee_detail
WHERE Name LIKE ('A%')		-- will output name from the employee detail table of any employee whoes name starts with a or s
OR Name LIKE ('S%') ;

-- CREATING A NEW TABLE AND PLACEING FIELS INTO IT
CREATE TABLE
my_favourite_employees(
employee_id int PRIMARY KEY,-- creates a new table eith the primart key employee id from jobtitle table
job_title	varchar(64));

DROP TABLE my_favourite_employees;
-- EXAMPLES OF SQL QUERYS --
-- SELECT *		-- * = ALL 
-- FROM current_job_detail; -- will select everything from current job detail table 
-- SELECT *
-- FROM current_job_detail
-- WHERE employee_id = 1000;	-- will only output people from table if id = 1000
-- SELECT *
-- FROM current_job_detail
-- WHERE employee_id != 1000 ;	-- will only output people if id doesnt = 1000
-- SELECT *
-- FROM current_job_detail
-- WHERE salary>= 50000;	--  will output people if wage is equal to or greater than 50000
-- SELECT *
-- FROM current_job_detail
-- WHERE salary BETWEEN
-- 30000 and 50000;		-- will output peoplr ig wage id between 30000 and 50000
--  SELECT *
--  FROM current_job_detail
--  WHERE job_title LIKE		-- will output anyone where the jobtitle field had evel in it ie dEVELoper or apprentice dEVELoper
--  ('%evel%');
--  SELECT *
--  FROM current_job_detail
--  WHERE job_title LIKE	-- will output anyone where jobtitle field has Devel in ie Developer
--  ('Devel%');
-- SELECT *
-- FROM current_job_detail
-- WHERE job_title NOT LIKE		-- will output anyone from jobtitle field if they dont have evel in their job title ie tech lead
-- ('%evel%');
-- SELECT *
-- FROM current_job_detail
-- WHERE job_title LIKE		-- will output anyone from jobtitle field if they have p-oduct lead in their job title ie tech lead
-- ('P_oduct Lead');
-- SELECT *
-- FROM current_job_detail
-- WHERE job_title IN ('Product Lead', 'Marketing Lead'); -- will output eveyone from jobtitle field if jobtitle is produvtLeas or MarketingLead
-- SELECT *
-- FROM current_job_detail
-- WHERE salary <=35000
-- AND job_title = 'Developer';	-- will outout anyone with the job 'Developer' who has a salary of 35000 or less
