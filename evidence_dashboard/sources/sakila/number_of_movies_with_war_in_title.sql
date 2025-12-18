SELECT
    title,
    rating,
    length,
    description
FROM staging.film
WHERE LOWER(title) LIKE '% war %'
   OR LOWER(title) LIKE 'war %'
   OR LOWER(title) LIKE '% war'
   OR LOWER(title) = 'war';
