--country_invoices.sql: 
--Provide a query that shows the # of invoices per country. HINT: GROUP BY
select count(i.BillingCountry) "Amount of Invoices", i.BillingCountry 
from Invoice i 
group by billingcountry;
