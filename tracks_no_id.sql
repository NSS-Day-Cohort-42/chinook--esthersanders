SELECT Album.Title as AlbumTitle, MediaType.Name as MediaTypeName, Genre.Name as GenreName, t.Name as TrackName
FROM Track t
JOIN Album ON t.AlbumId = Album.AlbumId
JOIN MediaType ON t.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON t.GenreId = Genre.GenreId;