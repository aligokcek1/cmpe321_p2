SELECT M.movie_id, M.title, D.name, D.surname
FROM Directors D, Movies M
WHERE STR_TO_DATE(M.release_date, "%d.%m.%Y") >= "2010.01.01" and M.director_id = D.director_id and M.director_id != "Cristopher Nolan"
ORDER BY M.movie_id ASC;

