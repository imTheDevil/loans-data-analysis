SELECT
CASE
WHEN tab.due_date BETWEEN '2022-10-31' AND '2022-11-05' THEN 'Within 5th Nov 2022'
WHEN tab.due_date BETWEEN '2022-10-06' AND '2022-11-11' THEN '6th Nov - 11th Nov'
WHEN tab.due_date BETWEEN '2022-10-12' AND '2022-11-17' THEN '12th Nov - 17th Nov'
WHEN tab.due_date BETWEEN '2022-10-18' AND '2022-11-23' THEN '18th Nov - 23rd Nov'
WHEN tab.due_date BETWEEN '2022-10-24' AND '2022-11-29' THEN '24th Nov - 29th Nov'
END as date_range,
SUM(tab.num_loans_due) as loans_due
FROM
(SELECT "Due Date" as due_date, COUNT(*) as num_loans_due FROM portfolio
GROUP BY due_date) as tab
GROUP BY date_range;