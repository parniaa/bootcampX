Select AVG("duration") as "avg-dur"
FROM (
  Select SUM(completed_at - started_at) as "duration", 
          cohorts.name
  FROM assistance_requests
    JOIN students ON students.id = student_id
      JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY duration)
  as "avg";