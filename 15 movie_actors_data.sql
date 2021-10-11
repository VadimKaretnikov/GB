delete from kinopoisk.movie_actors
 where movie_id = 1;

insert into kinopoisk.movie_actors (actor_id, movie_id, tag_id, person_name)
values (1, 1, 5, "Forrest Gump");

insert into kinopoisk.movie_actors (actor_id, movie_id, tag_id, person_name)
values (2, 1, 5, "Jenny Curran");

insert into kinopoisk.movie_actors (actor_id, movie_id, tag_id, person_name)
values (3, 1, 6, "Director");