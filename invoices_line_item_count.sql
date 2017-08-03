--invoices_line_item_count.sql: 
--Provide a query that shows all Invoices but includes the # of invoice line items.
Select
	i.invoiceId "Invoice",
	count (il.invoiceLineId) "Line Items Per Invoice"
from Invoice i, InvoiceLine il
where i.invoiceId = il. InvoiceId
group by i.invoiceId
