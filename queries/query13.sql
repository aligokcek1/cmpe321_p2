SELECT g.genre_name, d.name, d.surname, dc.directed_count
/* 
This subquery `dc` groups the movies by genre_id and director_id and 
calculates the number of movies each director has directed in each genre
*/
FROM (SELECT m.genre_id, m.director_id, COUNT(*) AS directed_count
		FROM Movies m
		GROUP BY m.genre_id, m.director_id) AS dc
/*
The results from the inner subquery (dc) are joined with the Directors and Genres 
tables to retrieve the full names of directors and the genre names.
*/
JOIN Directors d ON dc.director_id = d.director_id
JOIN Genres g ON dc.genre_id = g.genre_id

/*
The WHERE clause uses another nested subquery to find the maximum number of directed movies 
for each genre
*/
WHERE dc.directed_count = (SELECT MAX(temp.directed_count)
							FROM (SELECT m2.genre_id, m2.director_id, COUNT(*) AS directed_count
									FROM Movies m2
									GROUP BY m2.genre_id, m2.director_id) AS temp
									WHERE temp.genre_id = dc.genre_id)
ORDER BY g.genre_name;
