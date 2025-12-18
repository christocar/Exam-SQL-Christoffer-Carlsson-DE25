SELECT
    a.first_name || ' ' || a.last_name AS actor_name,
    COUNT(r.rental_id) AS number_of_rentals
FROM staging.actor a
JOIN staging.film_actor fa
    ON a.actor_id = fa.actor_id
JOIN staging.inventory i
    ON fa.film_id = i.film_id
JOIN staging.rental r
    ON i.inventory_id = r.inventory_id
GROUP BY actor_name
ORDER BY number_of_rentals DESC
