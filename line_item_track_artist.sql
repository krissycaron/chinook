--line_item_track_artist.sql
--Provide a query that includes the purchased track name AND artist name with each invoice line item.
select 
	li.InvoiceId, t.name, a.name
from InvoiceLine li, Track t, Artist a
where t.trackid = li.TrackId 
group by Invoicelineid;