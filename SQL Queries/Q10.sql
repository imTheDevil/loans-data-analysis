SELECT p."State", COUNT(*) as no_of_calls FROM portfolio p
RIGHT JOIN
(SELECT "Loan Number" as c_loanid, COUNT(*) as no_of_calls FROM communication c
GROUP BY c_loanid) as c
ON p."Loan Number" = c.c_loanid
WHERE p."Loan Number" IS NOT null
GROUP BY p."State"
ORDER BY p."State";