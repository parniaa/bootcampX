Select  distinct teachers.name, cohorts.name, count(assistance_requests.*)
FROM assistance_requests
  JOIN teachers ON teachers.id = teacher_id
    JOIN students ON students.id = student_id
      JOIN cohorts ON cohorts.id = cohort_id
where cohorts.name = 'JUL02'
group by teachers.name, cohorts.name
order by teachers.name;