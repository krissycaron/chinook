--line_item_track.sql:
--Provide a query that includes the purchased track name with each invoice line item.
select 
	li.InvoiceId, t.name
from InvoiceLine li, Track t
where t.trackid = li.TrackId
group by Invoicelineid;