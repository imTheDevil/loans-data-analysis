-- All of these have never been reached ot.
SELECT * FROM portfolio p
LEFT JOIN
(SELECT "Loan Number" as c_loanid, COUNT(*) as no_of_calls FROM communication c
GROUP BY c_loanid) as c
ON p."Loan Number" = c.c_loanid
WHERE c.c_loanid IS null;