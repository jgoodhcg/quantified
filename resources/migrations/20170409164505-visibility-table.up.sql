create table visibility (
       id serial,
       tbl varchar(255),
       col_id int,
       moment timestamp default current_timestamp,
       visible boolean
);
