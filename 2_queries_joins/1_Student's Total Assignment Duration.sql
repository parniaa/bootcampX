select sum(duration) as total_duration
from students
join assignment_submissions
ON students.id = assignment_submissions.student_id
Where students.name = 'Ibrahim Schimmel';