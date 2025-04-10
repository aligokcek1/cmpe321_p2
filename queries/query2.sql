SELECT M.movie_id, m.title, m.duration, m.rating, M.movie_id, M.release_date
FROM Movies M
WHERE str_to_date(M.release_date, "%d.%m.%Y") < "2024.01.01"
ORDER BY STR_TO_DATE(M.release_date, "%d.%m.%Y") DESC;
