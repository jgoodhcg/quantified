create table workout_sessions(
id serial primary key,
start_time timestamp not null,
stop_time timestamp not null,
weight float not null
);

