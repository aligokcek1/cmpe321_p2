SELECT G.genre_id, G.genre_name, TMP.average_rating
-- Inner query `TMP` that calculates avg rating of each genre
FROM (SELECT M.genre_id, avg(rating) AS average_rating
		FROM Movies M
		GROUP BY M.genre_id) AS TMP
-- Join Genres table to get `genre_name` info
JOIN Genres G ON TMP.genre_id = G.genre_id
-- Descending order and get the first row (biggest avg rating)
ORDER BY TMP.average_rating DESC
LIMIT 1
	
