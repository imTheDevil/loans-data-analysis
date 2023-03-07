SELECT
CASE
WHEN tab.age<=18 THEN '18 or less'
WHEN tab.age>=19 AND tab.age<30 THEN '19-29'
WHEN tab.age>=30 AND tab.age<50 THEN '30-49'
WHEN tab.age>=50 AND tab.age<70 THEN '50-69'
ELSE '70 or more'
END as age_range,
CASE 
WHEN tab.loan_amount < 50000 THEN '0-49999' 
WHEN tab.loan_amount >= 50000 AND tab.loan_amount < 100000 THEN '50000-99999' 
WHEN tab.loan_amount >= 100000 AND tab.loan_amount < 150000 THEN '100000-149999'
WHEN tab.loan_amount >= 150000 AND tab.loan_amount < 200000 THEN '150000-199999'
WHEN tab.loan_amount >= 200000 AND tab.loan_amount < 250000 THEN '200000-249999'
ELSE '250000 or more' 
END as loan_range,
COUNT(*) as no_of_customers
FROM
(SELECT "State" as state, CAST(to_char(AGE(LOCALTIMESTAMP, "DOB"), 'YY') as INTEGER) as age, "Loan Amount" as loan_amount
FROM portfolio
WHERE "State" ILIKE 'Tamil Nadu') as tab
GROUP BY age_range, loan_range
ORDER BY min(tab.age);