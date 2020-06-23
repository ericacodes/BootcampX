SELECT COUNT(assistance_requests.*) as total_assistance, students.name
FROM assistance_requests
RIGHT JOIN students on students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.id;