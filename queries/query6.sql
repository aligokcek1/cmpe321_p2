SELECT A.name, A.surname, COUNT(C.movie_id) AS movie_count
FROM Actors_and_Actresses A, Cast C
WHERE C.actor_id = A.actor_id
GROUP BY A.name, A.surname
ORDER BY movie_count DESC;
