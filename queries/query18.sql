SELECT D.name, D.surname, COUNT(DISTINCT M.genre_id) AS genre_count
FROM Directors D
JOIN Movies M ON D.director_id = M.director_id
GROUP BY D.director_id, D.name, D.surname
HAVING COUNT(DISTINCT M.genre_id) > 1;