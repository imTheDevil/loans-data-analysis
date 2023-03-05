SELECT to_char("Call time", 'YYYY-MM-DD') as day, COUNT(DISTINCT("Loan Number")) as unq_customers FROM communication
WHERE "Status" = 'completed'
GROUP BY day;