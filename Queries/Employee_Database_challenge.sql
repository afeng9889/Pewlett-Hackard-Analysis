SELECT e.emp_no, e.first_name, e.last_name, tt.title, tt.from_date, tt.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tt
ON (e.emp_no = tt.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no, to_date DESC;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

SELECT title, COUNT(emp_no)
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

SELECT * FROM retiring_titles


