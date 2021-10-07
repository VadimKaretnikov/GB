create or replace view shop.products_v
(id,
 product_name,
 catalog_name)
as
select
       p1.id,
       p1.name,
       c1.name
  from shop.products p1
  join shop.catalogs c1
       on p1.catalog_id = c1.id;
       
select * from shop.products_v;