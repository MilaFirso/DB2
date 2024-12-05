CREATE TABLE if not exists Executor
(id serial primary key, 
name varchar(60) not null);

CREATE TABLE if not exists Genre
(id serial primary key, 
name varchar(100) not null unique);

CREATE TABLE if not exists Albom
(id serial primary key, 
name varchar(60) not null,
year_of_release integer not null);

CREATE TABLE if not exists Track
(id serial primary key, 
name varchar(150) not null unique,
duration integer not null,
Albom_id integer references Albom(id));

CREATE TABLE if not exists GenreExecutor
(Executor_id integer references Executor (id),
Genre_id integer references Genre (id),
constraint GenreExecutor_pk primary key (Genre_id, Executor_id));

CREATE TABLE if not exists AlbomExecutor
(Executor_id integer references Executor (id),
Albom_id integer references Albom (id));

CREATE TABLE if not exists Collection
(id serial primary key,
name varchar (150) not null unique,
year_of_release integer not null)

CREATE TABLE if not exists CollectionTrack
(Track_id integer references Track (id),
Collection_id integer references Collection (id),
constraint CenreTrack_pk primary key (Collection_id, Track_id));
