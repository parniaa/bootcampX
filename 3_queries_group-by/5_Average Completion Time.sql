SELECT students.name as student, avg(assignment_submissions.duration) as avgDuration
from students
join assignment_submissions
ON students.id = assignment_submissions.student_id
where students.end_date is null
group by student
order by avgDuration desc;