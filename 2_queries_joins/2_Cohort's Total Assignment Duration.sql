SELECT sum(duration) as total_duration
from assignment_submissions
join students
ON students.id = assignment_submissions.student_id
join cohorts
ON cohorts.id = students.cohort_id
Where cohorts.name = 'FEB12';
