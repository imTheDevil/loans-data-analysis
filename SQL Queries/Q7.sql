-- This query assumes that the campaign atleast tried to contact the customer
-- i.e., both FAILED and completed statuses.
SELECT "Loan Number" as loan_num, COUNT(*) as no_of_calls FROM communication
GROUP BY loan_num
HAVING COUNT(*)>=25
ORDER BY no_of_calls DESC;