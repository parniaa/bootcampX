SELECT day, count(*) as assignment_count
FROM assignments
group by day
order by day;