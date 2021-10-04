SELECT cohorts.name as cohort_name,
COUNT(*)
AS student_count
FROM cohorts
JOIN students
ON students.cohort_id = cohorts.id
GROUP BY cohort_name
HAVING count(*) >= 18
ORDER BY student_count;