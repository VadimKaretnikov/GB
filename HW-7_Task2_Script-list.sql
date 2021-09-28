select p.name, c.name from products as p
inner join catalogs as c on (p.catalog_id = c.id)
group by p.id