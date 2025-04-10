SELECT M.title, M.rating, M.budget
FROM Movies M
WHERE M.rating = (
	SELECT MAX(M.rating)
    FROM Movies M);
