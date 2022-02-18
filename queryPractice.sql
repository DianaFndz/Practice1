create database sakila;
use sakila; 
select * from film;

Update film set rental_duration=7 where title="ACADEMY DINOSAUR";
Update film set replacement_cost=48.50 where title="AFRICAN EGG";

select * from film_actor;
select film.title ,actor.first_name from film inner join film_actor inner join actor on film_actor.film_id=actor.actor_id on  film_actor.film_id=film.film_id;
select * from actor;

select  actor.first_name ,actor.actor_id ,count(film_actor.film_id) AS total from film_actor INNER JOIN actor ON actor.actor_id= film_actor.actor_id group by actor_id;

select * from language;
select count(*) from language;

select * from payment;
select avg(replacement_cost) from film;

delimiter //
create procedure UpdateFilm (titleF varchar(50),descriptionF varchar(50))
begin
Update film set description=descriptionF where title=titleF;
end //

call UpdateFilm('ACADEMY DINOSAUR','Beautiful and emotional movie');