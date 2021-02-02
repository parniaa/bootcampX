SELECT day, count(*) as "total_assignments" 
FROM assignments
GROUP BY day
having count(*) >= 10
ORDER BY day
