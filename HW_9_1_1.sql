set autocommit=0;

begin work;

insert into sample.users
select * from shop.users
 where id = 1;
 
commit work;

select * from sample.users;
   