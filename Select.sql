select name, duration  from tracks
where duration = (select max(duration) from tracks);

select name, duration  from tracks
where duration >= 3.5;

select name from collections
where year between 2018 and 2020;

select name from performers
where (select array_length(regexp_split_to_array(name, ' '), 1)) = 1;

select name from tracks
where name like '%мой%' or name like '%my%';

select genre_id, name, count(*) from performersgenres p 
full join genres g on p.genre_id = g.id
group by genre_id, g.name;

select year, count(*) from albums a 
join tracks t on t.album_id = a.id 
where a.year between 2019 and 2020
group by a.year;

select a.name, avg(t.duration) from albums a 
join tracks t on t.album_id = a.id
group by a.name;

select name from performers p 
where id not in (select p2.id from performers p2 
join performersalbums p3 on p2.id = p3.performer_id 
join albums a on a.id = p3.album_id 
where a."year" = 2020);

select name from collections c 
where id in (select c2.id from collectionstracks c2 
join tracks t on t.id = c2.id 
join albums a on a.id = t.album_id 
join performersalbums p on p.album_id = a.id 
join performers p2 on p2.id = p.performer_id 
where p2.id = 1);
































