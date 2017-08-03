--top_2009_agent.sql: Which sales agent made the most in sales in 2009?

-- Hint: Use the MAX function on a subquery.

select
	max(Sales.TotalSales) as TopSales,
	Sales.EmployeeName
from 
	(select 
	sum(i.total) as "TotalSales",
	e.FirstName || " " || e.LastName as "EmployeeName"
	from Invoice i, Customer c, Employee e
	where i.customerid = c.customerid
	and c.supportrepId = e.employeeid
	and e.title = "Sales Support Agent"
	and i.InvoiceDate like '%2009%'
	group by "Sales Representative"
	)
	as Sales;

