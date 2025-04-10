SELECT A.name, A.surname, AVG(M.rating) as average_rating
FROM Actors_and_Actresses A
JOIN Cast C ON C.actor_id = A.actor_id
JOIN Movies M ON M.movie_id = C.movie_id
GROUP BY A.actor_id
ORDER BY average_rating DESC;