-- people contacted but didnot take loan
SELECT * FROM portfolio p
RIGHT JOIN
(SELECT "Loan Number" as c_loanid, COUNT(*) as no_of_calls FROM communication c
GROUP BY c_loanid) as c
ON p."Loan Number" = c.c_loanid
WHERE p."Loan Number" IS null;