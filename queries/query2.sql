SELECT M.movie_id, m.title, m.duration, m.rating, m.director_id, M.rating, m.genre_id
FROM Movies M
WHERE str_to_date(M.release_date, "%d.%m.%y") < "2024-01-01"
ORDER BY str_to_date(M.release_date, "%d.%m.%y") DESC;