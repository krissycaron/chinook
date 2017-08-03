--playlists_track_count.sql: 
--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.
Select p.Name, pl.PLayListId, Count(pl.TrackId)
from PlaylistTrack pl, Playlist p
where pl.PlaylistId = p.PlaylistId
group by pl.playlistId