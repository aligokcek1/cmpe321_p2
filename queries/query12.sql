SELECT 
    D.name, 
    D.surname, 
    M.title AS movie_name, 
    YEAR(STR_TO_DATE(M.release_date, "%d.%m.%Y")) AS year, 
    M.rating
FROM Movies M
JOIN Directors D ON M.director_id = D.director_id
JOIN (
    SELECT 
        YEAR(STR_TO_DATE(M2.release_date, "%d.%m.%Y")) AS year, 
        MAX(M2.rating) AS highest_rating
    FROM Movies M2
    GROUP BY year
) AS max_ratings ON YEAR(STR_TO_DATE(M.release_date, "%d.%m.%Y")) = max_ratings.year
               AND M.rating = max_ratings.highest_rating
ORDER BY year ASC;
