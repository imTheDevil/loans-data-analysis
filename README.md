# Loans Data Analysis
Analysis on different loans borrowed by various customers from different states across the country. 
Analysis was also done on follow up calls to the customers related to loans borrowed. Various areas are addressed like type of customer base 
across different states, distribution of loans borrowed across different amounts etc. 
along with a few visualizations.

## Data
Analysis was done on two data sets, Portfolio Data and Communication Data.
They contain information regarding the loans taken that are to be cleared 
between 31-10-2022 to 29-11-2022.\
\
Portfolio Data consists of loan ID (or customer ID), state from which they 
borrowed the loan, their date of birth [‘timestamp’ without timezone], due date 
by which they must clear the loan [‘date’ data type] and finally the loan amount 
borrowed.\
\
Communications Data consists of loan ID (or customer ID), campaign ID that 
got in touch with the customer, operator message ID, time and date of call 
[‘timestamp’ with timezone] and finally whether the call is completed or failed.\
\
This data was imported into PostgreSQL server and all queries are executed 
in PgAdmin. Visualizations are plotted using various libraries in Python.
