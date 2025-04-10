SELECT D.name, D.surname
FROM Movies M, Directors D
WHERE M.director_id = D.director_id
GROUP BY D.director_id
HAVING COUNT(M.movie_id) >= 3
ORDER BY D.surname DESC;