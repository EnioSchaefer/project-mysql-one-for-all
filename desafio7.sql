SELECT ar.artist_name AS 'artista',
al.album_name AS 'album',
COUNT(f.artist_id) AS 'seguidores'
FROM SpotifyClone.artists AS ar
RIGHT JOIN SpotifyClone.albums AS al ON al.album_artist = ar.artist_id
LEFT JOIN SpotifyClone.follows as f ON f.artist_id = ar.artist_id
GROUP BY ar.artist_name, al.album_name, f.artist_id ORDER BY seguidores DESC, artista, album;