SELECT
    a.first_name || ' ' || a.last_name AS actor_name,
    COUNT(DISTINCT fa.film_id) AS number_of_action_movies
FROM staging.actor a
JOIN staging.film_actor fa
    ON a.actor_id = fa.actor_id
JOIN staging.film_category fc
    ON fa.film_id = fc.film_id
JOIN staging.category c
    ON fc.category_id = c.category_id
WHERE c.name = 'Action'
GROUP BY actor_name
ORDER BY number_of_action_movies DESC
