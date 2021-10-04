SELECT day, COUNT(day) AS total_assignments FROM assignments GROUP BY day HAVING COUNT('total_assignments') >= 10 ORDER BY day;