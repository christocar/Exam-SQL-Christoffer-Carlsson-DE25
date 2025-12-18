SELECT
    title,
    rating,
    length,
    description
FROM staging.film
WHERE LOWER(title) LIKE '% love %'
   OR LOWER(title) LIKE 'love %'
   OR LOWER(title) LIKE '% love'
   OR LOWER(title) = 'love';
