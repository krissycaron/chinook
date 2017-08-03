-- line_items_per_invoice.sql: 
--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
-- HINT: GROUP BY

select
	InvoiceId, count(li.InvoiceLineId) as "Number Of Line Items"
from InvoiceLine li
group by invoiceId;