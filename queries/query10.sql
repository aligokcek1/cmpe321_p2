SELECT D.name, D.surname, D.nationality
FROM Directors D, Movies M, Genres G
WHERE STR_TO_DATE(M.release_date, "%d.%m.%Y") >"2020.01.01"
 AND STR_TO_DATE(M.release_date, "%d.%m.%Y") < "2025.12.31"
 AND M.director_id = D.director_id
 AND M.genre_id = G.genre_id
 AND G.genre_name = "Sci-Fi";