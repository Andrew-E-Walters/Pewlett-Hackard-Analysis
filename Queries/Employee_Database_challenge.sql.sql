
--Follow the instructions below to complete Deliverable 1.

--1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
--2. Retrieve the title, from_date, and to_date columns from the Titles table.
--3. Create a new table using the INTO clause.
--4. Join both tables on the primary key.
--5. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.

SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC, rt.to_date;


--9. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table. These columns will be in the new table that will hold the most recent title of each employee.
--10. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--11.Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
--12. Create a Unique Titles table using the INTO clause.
--13. Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.

SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles AS rt 
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no ASC, rt.to_date;

-- 16. Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
--17. First, retrieve the number of titles from the Unique Titles table.
--18. Then, create a Retiring Titles table to hold the required information.
-- 19. Group the table by title, then sort the count column in descending order
SELECT *
INTO retiring_titles
FROM  (
SELECT DISTINCT ON (ut.title) ut.title, count(ut.emp_no) as "count_of_emp"
FROM unique_titles AS ut 
GROUP BY ut.title
ORDER BY ut.title, count(ut.emp_no) desc
	) retiring_titles	
ORDER  BY count_of_emp desc, title;



-- Deliverable #2
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
ti.from_date,
ti.to_date,
ti.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (ti.to_date = '9999-01-01')
ORDER BY emp_no ASC, ti.to_date DESC;

-- Extra Charts for Deliverable #3

-- Mentor Eligibility Count
SELECT *
INTO mentor_titles
FROM  (
SELECT DISTINCT ON (me.title) me.title, count(me.emp_no) as "count_of_emp"
FROM mentorship_eligibilty AS me
GROUP BY me.title
ORDER BY me.title, count(me.emp_no) desc
	) retiring_titles	
ORDER  BY count_of_emp desc, title;

--Non Retirement age Employee Eligibilty
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
ti.from_date,
ti.to_date,
ti.title
INTO employee_eligibilty
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date between '1956-01-01' AND '1965-12-31') AND (ti.to_date = '9999-01-01')
ORDER BY emp_no ASC, ti.to_date DESC;

-- Non Retirement age Employee Eligibilty count
SELECT *
INTO non_retirement_titles
FROM  (
SELECT DISTINCT ON (ee.title) ee.title, count(ee.emp_no) as "count_of_emp"
FROM employee_eligibilty AS ee
GROUP BY ee.title
ORDER BY ee.title, count(ee.emp_no) desc
	) retiring_titles	
ORDER  BY count_of_emp desc, title;


--Startet Code Template
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;
