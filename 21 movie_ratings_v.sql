create or replace view kinopoisk.movie_ratings_v
(movie_id, movie_name, avg_rate, cnt_rate, cnt_reviews)
as
select m.id, m.name, avg(t.id - 100) avg_rate, count(mr.id) cnt_rate, sum(case when mr.review_text is not null then 1 else 0 end) cnt_reviews
  from kinopoisk.movies m
  left join kinopoisk.movie_ratings mr
       on mr.movie_id = m.id
  left join kinopoisk.tags t
       on mr.tag_id = t.id
       and t.type_cd = "RATINGS"
 group by m.id, m.name;
 
select * from kinopoisk.movie_ratings_v;