SELECT A.name, A.surname
FROM Actors_and_Actresses A
-- Used `SUBSTRING()` to get the birth year (last 4 chars in `birth_date`)
WHERE SUBSTRING(A.birth_date, 7, 4) = (SELECT SUBSTRING(A1.birth_date, 7, 4) FROM Actors_and_Actresses A1 
						WHERE A1.name = 'Amy' AND A1.surname = 'Adams') -- SELECT the birth year of 'Amy Adams'
ORDER BY A.surname ASC; -- Sort by surname in ascending order
