create table users
(
    id SERIAL PRIMARY KEY,
    first_name TEXT not null,
    last_name TEXT not null,
    mail TEXT not null,
    isAdmin bool not null,
    quizPlayed int [] not null
);

create table theme
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    description TEXT not null,
    quiz int [] null
);

create table quiz
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    description TEXT not null,
    ranking int [] null,
    question int [] null
);

create table question
(
    id SERIAL PRIMARY KEY,
    question TEXT not null,
    answer int [] not null,
    choice int [] not null
);

create table choice
(
    id SERIAL PRIMARY KEY,
    option TEXT not null
);

create table score
(
    id SERIAL PRIMARY KEY,
    score int not null,
    userId int not null,
    quizId int not null,
    message TEXT not null
);

