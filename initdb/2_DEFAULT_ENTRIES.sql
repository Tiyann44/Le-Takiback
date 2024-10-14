INSERT INTO users (id, firstName, lastName, mail, isAdmin) VALUES (1, 'Jean', 'Tempas', 'jean.tempas@gmail.com',false);
INSERT INTO users (id, firstName, lastName,mail, isAdmin) VALUES (2, 'Maxence', 'Juery', 'maxence.juery@epfedu.fr', true);

INSERT INTO theme (id, name, description) VALUES (1, 'Geographie', 'Des quiz sur la géographie');
INSERT INTO theme (id, name, description) VALUES (2, 'Histoire', 'Des quiz sur l''histoire');

INSERT INTO quiz (id, themeId, name, description) VALUES (1,1, 'Drapeau du monde', 'Quiz sur les drapeaux du monde');
INSERT INTO quiz (id, themeId,name, description) VALUES (2,1, 'Capitale du monde', 'Quiz sur les capitales du monde');
INSERT INTO quiz (id, themeId,name, description) VALUES (3,2,'Histoire de France', 'Quiz sur l''histoire de France');
INSERT INTO quiz (id, themeId,name, description) VALUES (4,2,'Histoire du monde', 'Quiz sur l''histoire du monde');

INSERT INTO question (id, quizId, question) VALUES (1, 1,'Quel est le drapeau de la France ?');
INSERT INTO question (id, quizId, question) VALUES (2, 1,'Quel est le drapeau de l''Allemagne ?');
INSERT INTO question (id, quizId, question) VALUES (3, 3,'Quel est la date de début de règne de Clovis I');
INSERT INTO question (id, quizId, question) VALUES (4, 3,'Quel est la date de fin de règne de Clovis I');

INSERT INTO choice (id, option) VALUES (1,'Bleu, blanc, rouge');
INSERT INTO choice (id, option) VALUES (2, 'Noir, rouge, jaune');
INSERT INTO choice (id, option) VALUES (3, 'Vert, blanc, rouge');
INSERT INTO choice (id, option) VALUES (4, 'Bleu, blanc, vert');
INSERT INTO choice (id, option) VALUES (5, '479');
INSERT INTO choice (id, option) VALUES (6, '481');
INSERT INTO choice (id, option) VALUES (7, '511');
INSERT INTO choice (id, option) VALUES (8, '515');

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (1, 1, 1, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (2, 1, 2, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (3, 1, 3, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (4, 1, 4, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (5, 2, 1, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (6, 2, 2, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (7, 2, 3, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (8, 2, 4, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (9, 3, 5, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (10, 3, 6, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (11, 3, 7, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (12, 3, 8, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (13, 4, 5, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (14, 4, 6, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (15, 4, 7, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (16, 4, 8, false);
