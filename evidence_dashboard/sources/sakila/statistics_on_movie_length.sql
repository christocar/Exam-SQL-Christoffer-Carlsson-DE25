SELECT
    MIN(length) AS shortest_movie,
    AVG(length) AS average_movie,
    MEDIAN(length) AS median_movie,
    MAX(length) AS longest_movie
FROM staging.film