DELIMITER $$
create trigger kinopoisk.mr_b_i_r BEFORE INSERT ON kinopoisk.movie_ratings FOR EACH ROW
begin
  declare tag_type_cd CHAR(10);
  SET @tag_type_cd = (
   SELECT t.type_cd
     FROM kinopoisk.tags t
	WHERE t.id = NEW.tag_id);
   IF NOT (NEW.tag_id BETWEEN 101 AND 105)
      OR
      NOT @tag_type_cd = "RATINGS"
   THEN
      SIGNAL SQLSTATE '10000'
      SET MESSAGE_TEXT = 'Not a valid rating for movie!';
   END IF;
end$$
DELIMITER ;