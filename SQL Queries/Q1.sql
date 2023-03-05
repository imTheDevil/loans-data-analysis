SELECT "State" as state, COUNT("Loan Number") as no_of_loans FROM portfolio
GROUP BY state
ORDER BY state;