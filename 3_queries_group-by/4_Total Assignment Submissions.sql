SELECT cohorts.name as cohort, count(assignment_submissions.*) as total
from assignment_submissions
join students
ON students.id = assignment_submissions.student_id
join cohorts
ON cohorts.id = students.cohort_id
group by cohort
order by total desc;
