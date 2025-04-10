SELECT A.name, A.surname, COUNT(DISTINCT M.genre_id) AS genre_count, 
	CASE
		WHEN COUNT(DISTINCT M.genre_id) > 1 THEN "TRUE"
        ELSE "FALSE"
        END AS multiple_appearance
FROM Actors_and_Actresses A
JOIN Cast C ON A.actor_id = C.actor_id
JOIN Movies M on C.movie_id = M.movie_id
GROUP BY A.actor_id, A.name, A.surname;