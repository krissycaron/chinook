--top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.
select t.Name, Count(l.TrackId) PurchaseCount
from Track t 
join InvoiceLine  l on l.TrackId = t.TrackId
group by t.Name
order by PurchaseCount desc
limit 5;