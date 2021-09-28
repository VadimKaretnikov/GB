DROP TABLE IF EXISTS ttt;
CREATE TABLE ttt (
  id SERIAL PRIMARY KEY,
  value int
  );
  
INSERT INTO ttt (value) VALUES
  (1),
  (2),
  (3),
  (4),
  (5);
  
 select max(sum)
from 
(
  select @sum := @sum * value as sum 
  from ttt
  cross join (select @sum := 1) s
) tmp;