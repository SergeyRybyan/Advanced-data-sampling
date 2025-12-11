insert into performers (name) values 
	('Исполнитель 1'),
	('Исполнитель 2'),
	('Исполнитель 3'),
	('Исполнитель 4');

insert into genres (name) values 
	('Жанр 1'),
	('Жанр 2'),
	('Жанр 3');

insert into albums (name, year) values 
	('Альбом 1', 2018),
	('Альбом 2', 2019),
	('Альбом 3', 2020),
	('Альбом 4', 2021);

insert into tracks (name, duration, album_id) values
	('Трек 1', 3.26, 1),
	('Трек 2', 1.38, 2),
	('Трек 3', 4.12, 3),
	('Трек 4', 5.26, 4),
	('Трек 5', 2.29, 1),
	('Трек 6', 7.52, 2);

insert into collections (name, year) values 
	('Сборник 1', 2018),
	('Сборник 2', 2019),
	('Сборник 3', 2020),
	('Сборник 4', 2021);

insert into performers (name) values
	('Исполнитель');

insert into tracks (name, duration, album_id) values
	('Трек мой', 3.5, 1),
	('Трек my', 2.25, 2);

insert into performersgenres (genre_id, performer_id) values 
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 4),
	(3, 2),
	(3, 5);

insert into performersalbums (performer_id, album_id) values 
	(1, 1),
	(1, 4),
	(2, 3),
	(2, 2),
	(3, 3),
	(3, 1),
	(3, 4),
	(4, 1),
	(4, 3),
	(5, 2),
	(5, 4),
	(5, 1);

insert into collectionstracks (collection_id, tracks_id) values 
	(1, 4),
	(1, 2),
	(1, 6),
	(2, 5),
	(2, 7),
	(2, 1),
	(3, 1),
	(3, 2),
	(3, 3),
	(4, 8),
	(4, 6),
	(4, 3);
	