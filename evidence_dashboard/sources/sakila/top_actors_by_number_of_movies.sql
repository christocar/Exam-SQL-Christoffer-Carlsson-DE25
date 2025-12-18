SELECT
    a.first_name || ' ' || a.last_name AS actor_name,
    COUNT(*) AS number_of_movies
FROM staging.actor a
JOIN staging.film_actor fa
    ON a.actor_id = fa.actor_id
GROUP BY actor_name
ORDER BY number_of_movies DESC
LIMIT 10