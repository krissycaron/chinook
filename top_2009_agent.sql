--top_2009_agent.sql: Which sales agent made the most in sales in 2009?

-- Hint: Use the MAX function on a subquery.

select
	max(Sales.TotalSales) as TopSales,
	Sales.EmployeeName
	from
	(select
		sum(i.Total) TOtalSales,
		
	)