SELECT to_char("Call time", 'YYYY-MM-DD') as day, COUNT("Loan Number") as customers FROM communication
WHERE "Status" = 'FAILED'
GROUP BY day;