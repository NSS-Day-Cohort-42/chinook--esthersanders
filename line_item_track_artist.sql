SELECT i.InvoiceId, i.TrackId, t.Name, Artist.name as Artist
FROM InvoiceLine i 
JOIN Track t ON i.TrackId = t.TrackId
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Artist on a.ArtistId = artist.ArtistId;

