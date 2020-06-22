SELECT cohorts.name AS cohort, COUNT(*) AS total_submissions
FROM cohorts
LEFT JOIN students on cohort_id = cohorts.id
LEFT JOIN assignment_submissions on student_id = students.id
GROUP BY cohorts.name
ORDER BY COUNT(*) DESC;