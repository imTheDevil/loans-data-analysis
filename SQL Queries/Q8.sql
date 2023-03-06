-- This query assumes that the campaign atleast tried to contact the customer
-- i.e., both FAILED and completed statuses.
SELECT
CASE
WHEN tab.no_of_calls<=5 THEN '<=5'
ELSE '>5'
END AS num_calls, 
COUNT(*) as num_of_customers
FROM
(SELECT "Loan Number" as loan_num, COUNT(*) as no_of_calls FROM communication
GROUP BY loan_num) as tab
GROUP BY num_calls;
-- ORDER BY tab.no_of_calls;