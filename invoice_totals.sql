-- invoice_totals.sql: 
-- Provide a query that shows the Invoice Total, Customer name,
--Country and Sale Agent name for all invoices and customers.

select 
	i.InvoiceId, 
	c.FirstName || " " || c.LastName as "Customer Name" ,
	e.FirstName || " " || e.LastName as "SalesAgent",
	i.BillingCountry,
	i.Total
From Invoice i, Customer c, Employee e
where i.CustomerId = c.CustomerId 
and c.SupportRepId = e.EmployeeId
order by EmployeeName, i.BillingCountry, i.Total desc
