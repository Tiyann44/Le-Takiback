INSERT INTO users (id, first_name, last_name, mail, isAdmin, quizPlayed) VALUES (1, 'Jean', 'Tempas', 'jean.tempas@gmail.com',false, '{}');
INSERT INTO users (id, first_name, last_name,mail, isAdmin, quizPlayed) VALUES (2, 'Maxence', 'Juery', 'maxence.juery@epfedu.fr', true, '{}');

INSERT INTO theme (id, name, description, quiz) VALUES (1, 'Geographie', 'Des quiz sur la géographie', '{}');
INSERT INTO theme (id, name, description, quiz) VALUES (2, 'Histoire', 'Des quiz sur l''histoire', '{}');

INSERT INTO quiz (id, name, description, ranking, question) VALUES (1, 'Drapeau du monde', 'Quiz sur les drapeaux du monde', '{}', '{}');
INSERT INTO quiz (id, name, description, ranking, question) VALUES (2, 'Capitale du monde', 'Quiz sur les capitales du monde', '{}', '{}');
INSERT INTO quiz (id, name, description, ranking, question) VALUES (3, 'Histoire de France', 'Quiz sur l''histoire de France', '{}', '{}');
INSERT INTO quiz (id, name, description, ranking, question) VALUES (4, 'Histoire du monde', 'Quiz sur l''histoire du monde', '{}', '{}');

INSERT INTO question (id, question, answer, choice) VALUES (1, 'Quel est le drapeau de la France ?', '{1}', '{1,2,3,4}');
INSERT INTO question (id, question, answer, choice) VALUES (2, 'Quel est le drapeau de l''Allemagne ?', '{2}', '{1,2,3,4}');
INSERT INTO question (id, question, answer, choice) VALUES (3, 'Quel est la date de début de règne de Clovis I', '{6}', '{5,6,7,8}');
INSERT INTO question (id, question, answer, choice) VALUES (4, 'Quel est la date de fin de règne de Clovis I', '{7}', '{5,6,7,8}');

INSERT INTO choice (id, option) VALUES (1, 'Bleu, blanc, rouge');
INSERT INTO choice (id, option) VALUES (2, 'Noir, rouge, jaune');
INSERT INTO choice (id, option) VALUES (3, 'Vert, blanc, rouge');
INSERT INTO choice (id, option) VALUES (4, 'Bleu, blanc, vert');
INSERT INTO choice (id, option) VALUES (5, '479');
INSERT INTO choice (id, option) VALUES (6, '481');
INSERT INTO choice (id, option) VALUES (7, '511');
INSERT INTO choice (id, option) VALUES (8, '515');
