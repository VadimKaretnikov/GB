DELIMITER $$
drop procedure kinopoisk.set_review $$
create procedure kinopoisk.set_review(in_user_id INT, in_movie_id INT, in_rating INT, in_review_text MEDIUMTEXT)
begin
   DECLARE usr_rating_cnt INT;
   DECLARE usr_current_tag INT;
   insert into kinopoisk.movie_ratings (user_id, movie_id, tag_id, review_text)
   values (in_user_id, in_movie_id, in_rating + 100, in_review_text);
   SET @usr_rating_cnt = (SELECT COUNT(*) FROM kinopoisk.movie_ratings mr WHERE mr.user_id = in_user_id);
   SET @usr_current_tag = (SELECT COALESCE(MAX(ut.tag_id), 10) FROM kinopoisk.user_tags ut WHERE ut.user_id = in_user_id);
   IF @usr_current_tag = 10
   THEN 
      insert into kinopoisk.user_tags (user_id, tag_id)
      values (in_user_id, 11);
   ELSE IF @usr_rating_cnt > 10 AND @usr_current_tag = 11
   THEN
      insert into kinopoisk.user_tags (user_id, tag_id)
      values (in_user_id, 12);
   END IF;
   END IF;
END $$
DELIMITER ;

