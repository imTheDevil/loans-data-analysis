SELECT tab."Campaign ID" as campaign_id, COUNT(*) as unq_customers
FROM
(SELECT "Campaign ID", "Loan Number", COUNT(*) as no_of_calls FROM communication
GROUP BY "Campaign ID", "Loan Number") as tab
GROUP BY campaign_id
ORDER BY campaign_id;