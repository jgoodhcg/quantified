create table run_terrains(
id serial primary key,
name varchar(255) not null,
description json,
unique(name)
);
--;;
create table run_entries(
id serial primary key,
distance float not null,
duration interval not null,
terrain_id integer references run_terrains (id),
session_id integer references workout_sessions (id)
);
