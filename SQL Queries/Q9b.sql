-- All of these have never been reached ot.
SELECT
CASE
WHEN c.c_loanid IS null THEN 'Never been Contacted'
ELSE 'Contacted atleast once'
END as cont,
COUNT(*) as num_customers
FROM portfolio p
LEFT JOIN
(SELECT "Loan Number" as c_loanid, COUNT(*) as no_of_calls FROM communication c
GROUP BY c_loanid) as c
ON p."Loan Number" = c.c_loanid
GROUP BY cont;