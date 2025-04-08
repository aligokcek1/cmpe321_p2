SELECT A.actor_id, A.name, A.surname, A.birth_date -- requested columns
FROM Actors_and_Actresses A
WHERE A.surname LIKE 'P%'; -- 'space' sensitive string pattern matching '%' for wildcard char (zero or more chars)