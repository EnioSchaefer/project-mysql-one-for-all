SELECT m.music_name AS 'nome',
COUNT(h.history_music) AS 'reproducoes'
FROM SpotifyClone.users AS u
LEFT JOIN SpotifyClone.history AS h ON h.user_id = u.user_id
LEFT JOIN SpotifyClone.musics AS m ON m.music_id = h.history_music
WHERE (u.user_subscription = 4 OR u.user_subscription = 1)
GROUP BY m.music_name ORDER BY nome;