create table visibility (
id serial primary key,
tbl varchar(255),
row_id int,
moment timestamp default current_timestamp,
visible boolean
);
