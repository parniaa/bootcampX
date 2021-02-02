Select  students.name as student,  avg(assignment_submissions.duration) as avgAssign, avg(assignments.duration) as avgSugst
from students
join assignment_submissions
on students.id = assignment_submissions.student_id
join assignments
on assignment_submissions.assignment_id = assignments.id
where students.end_date is null
group by students.name
having avg(assignment_submissions.duration) < avg(assignments.duration)
Order by avgAssign;