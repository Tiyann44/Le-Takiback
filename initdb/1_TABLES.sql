create table users
(
    id SERIAL PRIMARY KEY,
    first_name TEXT not null,
    last_name TEXT not null,
    mail TEXT not null,
    isAdmin BOOLEAN not null
);

create table theme
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    description TEXT not null
);

create table quiz
(
    id SERIAL PRIMARY KEY,
    theme_id int not null,
    name TEXT not null,
    description TEXT not null,
    FOREIGN KEY (theme_id) REFERENCES theme(id) ON DELETE CASCADE
);

create table question
(
    id SERIAL PRIMARY KEY,
    quiz_id int not null,
    question TEXT not null,
    FOREIGN KEY (quiz_id) REFERENCES quiz(id) ON DELETE CASCADE
);

create table choice
(
    id SERIAL PRIMARY KEY,
    option TEXT not null
);

create table answer
(
    id SERIAL PRIMARY KEY,
    question_id int not null,
    choice_id int not null,
    isCorrect BOOLEAN not null,
    FOREIGN KEY (question_id) REFERENCES question(id) ON DELETE CASCADE,
    FOREIGN KEY (choice_id) REFERENCES choice(id) ON DELETE CASCADE
);

create table score
(
    id SERIAL PRIMARY KEY,
    score int not null,
    userId int not null,
    quizId int not null,
    message TEXT not null,
    FOREIGN KEY (userId) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (quizId) REFERENCES quiz(id) ON DELETE CASCADE
);