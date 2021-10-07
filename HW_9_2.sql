create user reader1 identified by 'reader1';

create user admin1 identified by 'admin1';

grant select on shop.* to reader1;

grant all on shop.* to admin1; 