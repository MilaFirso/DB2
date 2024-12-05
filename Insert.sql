
INSERT INTO  Executor(name)
values ('RadioTapok'), ('Киш'),('Ольга Бузова'),('Золотое кольцо');

INSERT INTO  Genre(name)
values ('Рок'),('Русское народное'),('Панк-рок'),('Попса');

INSERT INTO  Albom(name, year_of_release)
values ('Императрица','2023'),('Ели мясо мужики','2010'),
('Русь','2015'),('Губы','2020'),('Война','2019'),('Тьма','2003');

INSERT INTO Track  (name, duration ,Albom_id)
values ('Hello', 145,1),('Мясо',233,1),('НГ', 140,2),('Цусима', 212,2),('Лучший',348,3),('Любовь',320,3),('Клоун',195,4),
('Пока',201,4),('Петро',256,5),('Пупс',256,5),('Хой',230,6),('Нет',279,6);

INSERT INTO GenreExecutor  (Genre_id,Executor_id)
values (4,1),(3,2),(2,3),(1,4);

INSERT INTO AlbomExecutor (albom_id,executor_id)
values (1,1),(2,1),(3,2),(4,2),(5,3),(6,4);

INSERT INTO  Collection (name, year_of_release)
values ('Первый','2023'),('Второй','2010'),
('Третий','2015'),('Четвертый','2020'),('Пятый','2019'),('Шестой','2003');

INSERT INTO  collectiontrack (collection_id , track_id)
values (1,12),(1,13),(2,14),(2,15),(3,16),(3,17),(4,18),(4,19),(5,20),(5,21),(6,22),(6,23);



