/*delete from kinopoisk.movie_ratings
 where user_id = 1 or user_id is null;*/

call kinopoisk.set_review(1, 1, 5, NULL);

call kinopoisk.set_review(1, 2, 4, NULL);

select * from kinopoisk.movie_ratings;

select * from kinopoisk.user_tags;