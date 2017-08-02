--invoice_37_line_item_count.sql: 
--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
select
	i.InvoiceId,
	count(li.InvoiceLineId) as LineItems
from Invoice i, InvoiceLine li
where li.InvoiceId = i.InvoiceId;
