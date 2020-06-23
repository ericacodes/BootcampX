SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
LEFT JOIN teachers ON teachers.id = teacher_id
LEFT JOIN students ON students.id = student_id
LEFT JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;

/* compass solution uses inner join but left join makes more sense bc it includes ALL assistance requests (even though it might be missing the assignment_id */