-- This query assumes that the campaign atleast tried to contact the customer
-- i.e., both FAILED and completed statuses.
SELECT tab.no_of_calls, COUNT(*) as num_of_customers
FROM
(SELECT "Loan Number" as loan_num, COUNT(*) as no_of_calls FROM communication
GROUP BY loan_num
HAVING COUNT(*)<=5) as tab
GROUP BY tab.no_of_calls
ORDER BY tab.no_of_calls;