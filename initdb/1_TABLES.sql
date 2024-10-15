create table users
(
    id SERIAL PRIMARY KEY ,
    firstName TEXT not null,
    lastName TEXT not null,
    mail TEXT not null,
    pseudo TEXT not null,
    image TEXT not null,
    isAdmin BOOLEAN not null
);

create table theme
(
    id SERIAL PRIMARY KEY,
    name TEXT not null,
    image TEXT not null,
    description TEXT not null
);

create table quiz
(
    id SERIAL PRIMARY KEY,
    themeId int not null,
    name TEXT not null,
    description TEXT not null,
    image TEXT not null,
    FOREIGN KEY (themeId) REFERENCES theme(id) ON DELETE CASCADE
);

create table question
(
    id SERIAL PRIMARY KEY,
    quizId int not null,
    question TEXT not null,
    image TEXT not null,
    FOREIGN KEY (quizId) REFERENCES quiz(id) ON DELETE CASCADE
);

create table choice
(
    id SERIAL PRIMARY KEY,
    option TEXT not null
);

create table answer
(
    id SERIAL PRIMARY KEY,
    questionId int not null,
    choiceId int not null,
    isCorrect BOOLEAN not null,
    FOREIGN KEY (questionId) REFERENCES question(id) ON DELETE CASCADE,
    FOREIGN KEY (choiceId) REFERENCES choice(id) ON DELETE CASCADE
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