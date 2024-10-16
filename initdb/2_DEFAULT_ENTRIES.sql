-- User NON Admin
INSERT INTO users (id, firstName, lastName, mail,pseudo,image, isAdmin) VALUES (1, 'Jean', 'Tempas', 'jean.tempas@gmail.com','EnJeanT','https://www.pngmart.com/files/21/Admin-Profile-PNG-Pic.png',false);

-- User Admin
INSERT INTO users (id, firstName, lastName,mail,pseudo,image, isAdmin) VALUES (2, 'Maxence', 'Juery', 'maxence.juery@epfedu.fr','MaxenceJ','https://www.shutterstock.com/image-vector/user-icon-vector-600nw-393536320.jpg', true);

-- Thème de quiz
INSERT INTO theme (id, name, description, image) VALUES (1, 'Pokémon', 'Attrapez-les tous !','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/640px-International_Pok%C3%A9mon_logo.svg.png');
INSERT INTO theme (id, name, description, image) VALUES (2, 'Valorant', 'Connaissez-vous les secrets de chaques agents ?','https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/0dd9058c623268e044399d7433371d89041a47b3-3440x1020.jpg?auto=format&fit=fill&q=80&h=1020');
INSERT INTO theme (id, name, description, image) VALUES (3, 'League Of Legends', 'Êtes-vous digne du titre Master ? ','https://www.pedagojeux.fr/wp-content/uploads/2019/11/1280x720_LoL.jpg');
INSERT INTO theme (id, name, description,image) VALUES (4,'Minecraft', 'Connaissez-vous tous les secrets de ce monde cubique ?','https://www.minecraft.net/content/dam/games/minecraft/key-art/Vanilla-PMP_Collection-Carousel-0_Buzzy-Bees_1280x768.jpg');

-- Quiz pour Pokémon
INSERT INTO quiz (id, themeId, name, description, image)
VALUES (1, 1, 'Connaissances générales Pokémon', 'Testez vos connaissances sur l’univers Pokémon', 'https://img.lemde.fr/2022/12/22/5/0/1730/865/1440/720/60/0/e968e4d_1671703423578-b5e.jpeg');

-- Quiz pour Valorant
INSERT INTO quiz (id, themeId, name, description, image)
VALUES (2, 2, 'Agents de Valorant', 'Connaissez-vous les capacités des agents ?', 'https://img.redbull.com/images/c_crop,w_1920,h_960,x_0,y_103/c_auto,w_1200,h_600/f_auto,q_auto/redbullcom/2020/6/5/ctsejxmdtw9inp8zqqqd/valorant-ameliorer-aim-visee-astuces');

-- Quiz pour League Of Legends
INSERT INTO quiz (id, themeId, name, description, image)
VALUES (3, 3, 'Champions de League of Legends', 'Testez vos connaissances sur les champions de LoL', 'https://blog.king-jouet.com/wp-content/uploads/2021/08/thumbnail_League-Of-Legends-e1634898736732.jpg');

-- Quiz pour Minecraft
INSERT INTO quiz (id, themeId, name, description, image)
VALUES (4, 4, 'Blocs et mobs de Minecraft', 'Savez-vous tout sur les blocs et les créatures de Minecraft ?', 'https://top-mmorpg.fr/wp-content/uploads/2017/07/Minecraft-MMO-Game.jpg');

--- Questions pour le quiz Pokémon
INSERT INTO question (id, quizId, question, image)
VALUES (1, 1, 'Quel est le Pokémon numéro 25 ?', 'https://static.hitek.fr/img/actualite/ill_m/2097127995/quizz-pokemon-2eme-generation.jpg');
INSERT INTO question (id, quizId, question, image)
VALUES (2, 1, 'De quel type est Dracaufeu ?', 'https://peluche-pokemon.fr/wp-content/uploads/2023/04/tous-les-types-de-pokemon.jpg');

-- Questions pour le quiz Valorant
INSERT INTO question (id, quizId, question, image)
VALUES (3, 2, 'Quelle capacité permet à Sage de soigner ses alliés ?', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/ded53d6f127a00074675eb79fde95437f2c2f521-5120x1772.png?auto=format&fit=fill&q=80&w=1082');
INSERT INTO question (id, quizId, question, image)
VALUES (4, 2, 'Quel agent peut placer des tourelles ?', 'https://p.turbosquid.com/ts-thumb/Qt/GV5TUm/iG/forsale1/png/1669597544/600x600/fit_q87/7a57812cb683562cf17a8a542374ae9194ffba3f/forsale1.jpg');

-- Questions pour le quiz League of Legends
INSERT INTO question (id, quizId, question, image)
VALUES (5, 3, 'Quel champion est connu sous le nom de "La Main de Noxus" ?', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/82/Noxus_The_Immortal_Bastion_01.jpg/revision/latest?cb=20181118145414');
INSERT INTO question (id, quizId, question, image)
VALUES (6, 3, 'Quel champion utilise des shurikens comme arme principale ?', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/28/Champions_LoL_%281%29.jpg/revision/latest?cb=20220903130004&path-prefix=fr');

-- Questions pour le quiz Minecraft
INSERT INTO question (id, quizId, question, image)
VALUES (7, 4, 'Quel bloc est le plus résistant dans Minecraft ?', 'https://minecraft.fr/wp-content/uploads/2022/01/caverne-luxuriante-minecraft-1200x651.jpg');
INSERT INTO question (id, quizId, question, image)
VALUES (8, 4, 'Quel mob est hostile et explose à proximité du joueur ?', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/03/Undead_preview.png/revision/latest?cb=20211015224636');

-- Réponses pour les questions Pokémon
INSERT INTO choice (id, option) VALUES (1, 'Pikachu');
INSERT INTO choice (id, option) VALUES (2, 'Bulbizarre');
INSERT INTO choice (id, option) VALUES (3, 'Salamèche');
INSERT INTO choice (id, option) VALUES (4, 'Mewtwo');

INSERT INTO choice (id, option) VALUES (5, 'Feu');
INSERT INTO choice (id, option) VALUES (6, 'Feu et Vol');
INSERT INTO choice (id, option) VALUES (7, 'Feu et Eau');
INSERT INTO choice (id, option) VALUES (8, 'Feu et Roche');

-- Réponses pour les questions Valorant
INSERT INTO choice (id, option) VALUES (9, 'Soin d’Orbe');
INSERT INTO choice (id, option) VALUES (10, 'Barrière de glace');
INSERT INTO choice (id, option) VALUES (11, 'Orbe de lenteur');
INSERT INTO choice (id, option) VALUES (12, 'Orbe de résurrection');

INSERT INTO choice (id, option) VALUES (13, 'Killjoy');
INSERT INTO choice (id, option) VALUES (14, 'Sova');
INSERT INTO choice (id, option) VALUES (15, 'Phoenix');
INSERT INTO choice (id, option) VALUES (16, 'Brimstone');

-- Réponses pour les questions League of Legends
INSERT INTO choice (id, option) VALUES (17, 'Darius');
INSERT INTO choice (id, option) VALUES (18, 'Draven');
INSERT INTO choice (id, option) VALUES (19, 'Garen');
INSERT INTO choice (id, option) VALUES (20, 'Swain');

INSERT INTO choice (id, option) VALUES (21, 'Zed');
INSERT INTO choice (id, option) VALUES (22, 'Shen');
INSERT INTO choice (id, option) VALUES (23, 'Kennen');
INSERT INTO choice (id, option) VALUES (24, 'Akali');

-- Réponses pour les questions Minecraft
INSERT INTO choice (id, option) VALUES (25, 'Bedrock');
INSERT INTO choice (id, option) VALUES (26, 'Obsidienne');
INSERT INTO choice (id, option) VALUES (27, 'Pierre taillée');
INSERT INTO choice (id, option) VALUES (28, 'Bois');

INSERT INTO choice (id, option) VALUES (29, 'Creeper');
INSERT INTO choice (id, option) VALUES (30, 'Zombie');
INSERT INTO choice (id, option) VALUES (31, 'Squelette');
INSERT INTO choice (id, option) VALUES (32, 'Araignée');

-- Réponses correctes pour le quiz Pokémon
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (1, 1, 1, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (2, 1, 2, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (3, 1, 3, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (4, 1, 4, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (5, 2, 5, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (6, 2, 6, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (7, 2, 7, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (8, 2, 8, false);

-- Réponses correctes pour le quiz Valorant
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (9, 3, 9, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (10, 3, 10, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (11, 3, 11, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (12, 3, 12, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (13, 4, 13, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (14, 4, 14, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (15, 4, 15, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (16, 4, 16, false);

-- Réponses correctes pour le quiz League of Legends
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (17, 5, 17, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (18, 5, 18, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (19, 5, 19, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (20, 5, 20, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (21, 6, 21, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (22, 6, 22, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (23, 6, 23, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (24, 6, 24, false);

-- Réponses correctes pour le quiz Minecraft
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (25, 7, 25, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (26, 7, 26, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (27, 7, 27, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (28, 7, 28, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (29, 8, 29, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (30, 8, 30, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (31, 8, 31, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (32, 8, 32, false);
