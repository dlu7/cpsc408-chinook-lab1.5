-- SQLite Lab 1.5

-- 1
SELECT MAX(Total)
FROM Invoice;

-- 2
SELECT Total
FROM Invoice
ORDER BY Total DESC
LIMIT 1;

-- 3
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name;

-- 4
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY COUNT(*) DESC;

-- 5
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
HAVING COUNT(*) > 200
ORDER BY COUNT(*) DESC;

-- 6
SELECT COUNT(Track.TrackId), COUNT(DISTINCT Artist.Name)
FROM Track, Artist, Album
WHERE Track.AlbumId = Album.AlbumId AND Artist.ArtistId = Album.AlbumId
AND Artist.Name LIKE 'A%';

-- 7 (?)