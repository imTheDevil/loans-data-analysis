SELECT "Campaign ID", COUNT(*) as no_of_calls FROM communication
GROUP BY "Campaign ID"
ORDER BY "Campaign ID";