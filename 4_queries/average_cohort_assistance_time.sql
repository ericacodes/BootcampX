SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM cohorts
LEFT JOIN students ON cohort_id = cohorts.id 
LEFT JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;