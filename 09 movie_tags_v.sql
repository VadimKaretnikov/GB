create or replace view kinopoisk.movie_tags_v
(movie_id, 
 movie_name,
 tag_id,
 tag_name,
 tag_assigned_date, 
 tag_type_cd,
 tag_type_name)
as
select m.id, m.name, t.id, t.name, mt.assign_date, tt.cd, tt.name
  from kinopoisk.movies m
  join kinopoisk.movie_tags mt
       on mt.movie_id = m.id
  join kinopoisk.tags t
       on mt.tag_id = t.id
  join kinopoisk.tag_types tt
       on tt.cd = t.type_cd;
       
select * from kinopoisk.movie_tags_v;