SELECT ar.artist_name AS 'artista',
al.album_name AS 'album'
FROM SpotifyClone.artists AS ar 
LEFT JOIN SpotifyClone.albums AS al ON ar.artist_id = al.album_artist
WHERE ar.artist_name = 'Elis Regina' GROUP BY ar.artist_name, al.album_name ORDER BY album;