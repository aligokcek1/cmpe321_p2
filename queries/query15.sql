SELECT D.name, D.surname, nm.number_of_movies

-- Inner query to calculate number of movies directed by each director_id
FROM(SELECT M.director_id, COUNT(*) AS number_of_movies
		FROM Movies M
		GROUP BY M.director_id) AS nm
        
-- Join the `nm` with directors table to get the name and surname infos
JOIN Directors D ON D.director_id = nm.director_id

-- Order the result table and get the biggest (first row)
ORDER BY nm.number_of_movies DESC
LIMIT 1