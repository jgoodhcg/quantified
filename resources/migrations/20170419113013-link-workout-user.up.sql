create table link_workout_sessions_users(
id serial primary key,
user_id integer not null references users (id),
session_id integer not null references workout_sessions (id)
);
