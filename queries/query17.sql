SELECT M.movie_id, M.title AS movie_name, M.duration, M.rating, 
-- Concatenation of name and surname to get `director_name`
CONCAT(D.name, CONCAT(' ', D.surname)) AS director_name
FROM Movies M
-- Join the directors and movies table to access infos of director 
JOIN Directors D ON M.director_id = D.director_id
-- Requested constraints
WHERE M.duration > 150 AND M.rating > 8
ORDER BY D.name  DESC;