SELECT m.music_name AS 'cancao',
COUNT(h.history_music) AS 'reproducoes'
FROM SpotifyClone.musics AS m
LEFT JOIN SpotifyClone.history AS h ON h.history_music = m.music_id
GROUP BY m.music_name, h.history_music ORDER BY reproducoes DESC, m.music_name LIMIT 2;