create table exercise_types(
id serial primary key,
name varchar(255) not null,
description json,
unique(name)
);
--;;
create table exercises(
id serial primary key,
name varchar(255),
description json,
type_id integer references exercise_types (id),
unique(name)
);
--;;
create table exercise_entries(
id serial primary key,
sets integer not null,
reps integer not null,
weight float not null,
exercise_id integer references exercises (id),
session_id integer references workout_sessions (id)
);

