SELECT
    title,
    rating,
    length,
    description
FROM staging.film
WHERE LOWER(title) LIKE '% king %'
   OR LOWER(title) LIKE 'king %'
   OR LOWER(title) LIKE '% king'
   OR LOWER(title) = 'king'