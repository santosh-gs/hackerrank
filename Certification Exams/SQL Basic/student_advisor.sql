-- match student and faculty advisor

SELECT roll_number, name 
FROM student_information AS student 
JOIN faculty_information AS faculty 
	ON student.advisor = faculty.employee_ID 
WHERE (faculty.gender = 'M' AND faculty.salary > 15000) OR 
	(faculty.gender = 'F' AND  faculty.salary > 20000);