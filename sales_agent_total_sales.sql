--sales_agent_total_sales.sql: 
--Provide a query that shows total sales made by each sales agent.
select 
	sum(i.total) as "Total Sales Per Agent",
	e.FirstName || " " || e.LastName as "Sales Representative"
from Invoice i, Customer c, Employee e
where i.customerid = c.customerid
and c.supportrepId = e.employeeid
and e.title = "Sales Support Agent"
group by "Sales Representative";