--tracks_no_id.sql:
-- Provide a query that shows all the Tracks, but displays no IDs.
--The result should include the Album name, Media type and Genre.
select 
	t.Name "Track Name", 
	a.Title "Album Name", 
	m.name "Media Type", 
	g.name " Genre"
from Album a, MediaType m, Genre g, Track t;
