SELECT u.user_name AS 'usuario',
COUNT(h.history_music) AS 'qt_de_musicas_ouvidas',
ROUND(SUM(m.music_duration) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.users AS u
LEFT JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
LEFT JOIN SpotifyClone.musics AS m ON h.history_music = m.music_id 
GROUP BY u.user_name ORDER BY u.user_name;