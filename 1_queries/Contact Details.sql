SELECT name, id, cohort_id
FROM students
WHERE email is null or phone is null;