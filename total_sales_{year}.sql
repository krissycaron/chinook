--Just started during lecture
--total_sales_{year}.sql: What are the respective total sales for each of those years?
select '$' || sum(i.Total) as Total,
	strftime('%Y', i. InvoiceDate) as InvoiceYear
from Invoice i 
where InvoiceYear= '2011'
or InvoiceYear = '2009'
group by InvoiceYear;