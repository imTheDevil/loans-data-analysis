SELECT
CASE
WHEN tab.age<18 THEN 'Below 18'
WHEN tab.age>=18 AND tab.age<30 THEN '18-29'
WHEN tab.age>=30 AND tab.age<50 THEN '30-49'
WHEN tab.age>=50 AND tab.age<70 THEN '50-69'
ELSE 'Above 70'
END as age_range,
COUNT(*) as no_of_customers
FROM
(SELECT CAST(to_char(AGE(LOCALTIMESTAMP, "DOB"), 'YY') as INTEGER) as age FROM portfolio) as tab
GROUP BY age_range;