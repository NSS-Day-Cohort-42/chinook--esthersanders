SELECT COUNT(pt.TrackId) as TotalTracks, pt.PlaylistId, Playlist.Name
FROM PlaylistTrack pt
JOIN Playlist ON Playlist.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId;