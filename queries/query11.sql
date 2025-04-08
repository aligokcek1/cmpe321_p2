-- requested fields
SELECT M.movie_id, M.title, M.release_date, M.duration, M.director_id, M.rating, M.genre_id, M.budget
FROM Movies M
WHERE M.duration > 120 AND M.director_id = (SELECT D.director_id -- to find the did of Christopher Nolan
										 	FROM Directors D
                                            WHERE D.name = 'Christopher' AND d.surname = 'Nolan') 
ORDER BY M.movie_id DESC;