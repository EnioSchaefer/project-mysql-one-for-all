SELECT u.user_name AS 'usuario',
IF (MAX(YEAR(h.history_date) )  >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.users AS u
LEFT JOIN SpotifyClone.history AS h ON u.user_id = h.user_id 
GROUP BY u.user_name ORDER BY u.user_name;