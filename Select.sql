SELECT name, duration FROM track
ORDER BY duration desc 
LIMIT 1;

SELECT name FROM track
WHERE duration >=210;

SELECT name FROM collection 
WHERE year_of_release BETWEEN 2018 AND 2020;

SELECT name FROM executor
WHERE name NOT LIKE '% %';

Insert Into track (name, duration,albom_id)
values ('My',260,3);

SELECT name FROM track
WHERE name like '%Mой%' or name like '%My%';


SELECT g.name, count(ge.executor_id) FROM genre g
   JOIN genreexecutor ge ON g.id = ge.genre_id
   GROUP BY g.name;

SELECT a.name, a.year_of_release, count(t.id) FROM albom a
   JOIN track t ON a.id = t.albom_id
   WHERE a.year_of_release BETWEEN 2019 and 2020
   GROUP BY a.name, a.year_of_release;  
  
SELECT a.name, AVG(t.duration) FROM albom a
	JOIN track t ON a.id = t.albom_id
	GROUP BY a.name;

SELECT e.name FROM executor e
   JOIN albomexecutor ae ON e.id = ae.executor_id
   JOIN albom a ON a.id = ae.albom_id
   WHERE a.year_of_release < 2020; 
  
SELECT c.name FROM collection c
   JOIN collectiontrack ct ON c.id = ct.collection_id
   JOIN track t ON t.id = ct.track_id
   JOIN albom a ON a.id = t.albom_id
   JOIN albomexecutor ea ON a.id = ea.albom_id
   JOIN executor e ON e.id = ea.executor_id
   WHERE e.name LIKE '%Radio%';
