SELECT G.genre_name, D.name, D.surname, directed_count
FROM Genres G, Directors D
WHERE (SELECT genre_id, director_id, COUNT(*) AS cnt
FROM Movies
WHERE genre_id = G.genre_id AND director_id = D.director_id AND cnt = directed_count
GROUP BY genre_id, director_id);

