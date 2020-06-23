SELECT COUNT(assistance_requests.*) AS total_assistance, teachers.name AS name
FROM teachers
LEFT JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.id;
