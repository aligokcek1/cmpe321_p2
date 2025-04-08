SELECT M.movie_id, M.title, M.release_date, M.duration, M.director_id, M.rating, M.genre_id, M.budget -- Requested fields
FROM Movies M
WHERE M.rating <= ALL (SELECT M2.rating FROM Movies M2); -- Find the movie that has the lowest rating in the whole table