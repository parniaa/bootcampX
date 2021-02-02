Select teachers.name, count(assistance_requests.*) as asisreq
from teachers
join assistance_requests
on teacher_id = teachers.id
where teachers.name = 'Waylon Boehm'
group by teachers.name;
