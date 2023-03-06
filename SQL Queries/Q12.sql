SELECT "Campaign ID", "Loan Number", COUNT(*) as no_of_calls FROM communication
GROUP BY "Campaign ID", "Loan Number"
ORDER BY "Campaign ID", "Loan Number";