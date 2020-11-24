SELECT Artist.Name as ArtistName, SUM(InvoiceLine.Quantity) as TotalSales
FROM Artist
JOIN Album on Album.ArtistId = Artist.ArtistId
JOIN Track on Album.AlbumId = Track.AlbumId
JOIN InvoiceLine on InvoiceLine.TrackId = Track.TrackId
GROUP BY ArtistName
ORDER BY TotalSales DESC
LIMIT 3