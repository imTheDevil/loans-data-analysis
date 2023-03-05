SELECT 
    CASE 
        WHEN "Loan Amount" < 50000 THEN '0-49999' 
        WHEN "Loan Amount" >= 50000 AND "Loan Amount" < 100000 THEN '50000-99999' 
        WHEN "Loan Amount" >= 100000 AND "Loan Amount" < 150000 THEN '100000-149999'
		WHEN "Loan Amount" >= 150000 AND "Loan Amount" < 200000 THEN '150000-199999'
		WHEN "Loan Amount" >= 200000 AND "Loan Amount" < 250000 THEN '200000-249999'
        ELSE '250000 or more' 
    END as loan_range, 
    COUNT(*) as no_of_Loans
FROM portfolio
GROUP BY loan_range
ORDER BY min("Loan Amount");
