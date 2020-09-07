-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
tt.title
INTO mentorship_eligibility
WHERE birth_date
FROM employees as e
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as tt
ON tt.emp_no = e.emp_no
ORDER BY emp_no, to_date DESC;
