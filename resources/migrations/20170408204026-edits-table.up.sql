create table edits (
       id serial,
       tbl varchar(255),
       col_id int,
       moment timestamp default current_timestamp,
       prev_row json
);
