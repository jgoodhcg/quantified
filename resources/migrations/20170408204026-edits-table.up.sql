create table edits (
id serial primary key,
tbl varchar(255),
row_id int,
moment timestamp default current_timestamp,
prev_row json
);
