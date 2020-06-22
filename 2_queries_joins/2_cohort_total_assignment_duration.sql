SELECT SUM(assignment_submissions.duration) as total_duration
FROM students 
LEFT JOIN cohorts ON cohorts.id = cohort_id
LEFT JOIN assignment_submissions ON student_id = students.id
WHERE cohorts.name = 'FEB12';