SELECT MIN(s.subscription_price) AS 'faturamento_minimo',
MAX(s.subscription_price) AS 'faturamento_maximo',
ROUND(AVG(s.subscription_price), 2) AS 'faturamento_medio',
SUM(s.subscription_price) AS 'faturamento_total'
FROM SpotifyClone.subscriptions AS s
LEFT JOIN SpotifyClone.users AS u ON u.user_subscription = s.subscription_id;