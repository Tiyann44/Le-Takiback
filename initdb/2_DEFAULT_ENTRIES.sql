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
VALUES (26, 1, 'Quel est le Pokémon numéro 25 ?', 'https://static.hitek.fr/img/actualite/ill_m/2097127995/quizz-pokemon-2eme-generation.jpg');
INSERT INTO question (id, quizId, question, image)
VALUES (27, 1, 'De quel type est Dracaufeu ?', 'https://peluche-pokemon.fr/wp-content/uploads/2023/04/tous-les-types-de-pokemon.jpg');
-- Question 3
INSERT INTO question (id, quizId, question, image)
VALUES (28, 1, 'Quel Pokémon a la capacité spéciale Intimidation ?', '');

-- Question 4
INSERT INTO question (id, quizId, question, image)
VALUES (29, 1, 'Quel pokemon n''est pas un pokemon légendaire ?', '');

-- Question 5
INSERT INTO question (id, quizId, question, image)
VALUES (30, 1, 'Quel Pokémon a pour évolution Aquali lorsqu’il est exposé à une Pierre Eau ?', '');

-- Question 6
INSERT INTO question (id, quizId, question, image)
VALUES (31, 1, 'Quel est le type principal de Dracolosse ?', '');

-- Question 7
INSERT INTO question (id, quizId, question, image)
VALUES (32, 1, 'Combien de types de Pokémon existent-ils dans la première génération ?', '');

-- Question 8
INSERT INTO question (id, quizId, question, image)
VALUES (33, 1, 'Quel est le Pokémon initial de type plante dans la première génération ?', '');

-- Question 9
INSERT INTO question (id, quizId, question, image)
VALUES (34, 1, 'Quel Pokémon est surnommé “Pokémon Souris” ?', '');

-- Question 10
INSERT INTO question (id, quizId, question, image)
VALUES (35, 1, 'Quel Pokémon légendaire est associé aux tempêtes ?', '');

-- Question 11
INSERT INTO question (id, quizId, question, image)
VALUES (36, 1, 'Quel Pokémon évolue en Alakazam lorsqu’il est échangé ?', '');

-- Question 12
INSERT INTO question (id, quizId, question, image)
VALUES (37, 1, 'Quel Pokémon utilise souvent l’attaque Surf ?', '');

-- Question 13
INSERT INTO question (id, quizId, question, image)
VALUES (38, 1, 'Quel est le type principal de Suicune?', '');

-- Question 14
INSERT INTO question (id, quizId, question, image)
VALUES (39, 1, 'Quel Pokémon légendaire est associé aux volcans ?', '');

-- Question 15
INSERT INTO question (id, quizId, question, image)
VALUES (40, 1, 'Lequel de ces pokemon est de type normal ?', '');

-- Question 16
INSERT INTO question (id, quizId, question, image)
VALUES (41, 1, 'À quel niveau Reptincel évolue-t-il en Dracaufeu ?', '');

-- Question 17
INSERT INTO question (id, quizId, question, image)
VALUES (42, 1, 'Quel est le Pokémon de type Eau dans les starters de la première génération ?', '');

-- Question 18
INSERT INTO question (id, quizId, question, image)
VALUES (43, 1, 'Quel Pokémon est de type Insecte et Poison ?', '');

-- Question 19
INSERT INTO question (id, quizId, question, image)
VALUES (44, 1, 'Quel pokemon N''EST PAS préhistorique ?', '');

-- Question 20
INSERT INTO question (id, quizId, question, image)
VALUES (45, 1, 'Quel est le type de la première arène dans Heartgold/Soulsilver ?', '');

-- Questions pour le quiz Valorant
-- Question 46
INSERT INTO question (id, quizId, question, image)
VALUES (46, 2, 'Quelle capacité permet à Sage de soigner ses alliés ?', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/ded53d6f127a00074675eb79fde95437f2c2f521-5120x1772.png?auto=format&fit=fill&q=80&w=1082');

-- Question 47
INSERT INTO question (id, quizId, question, image)
VALUES (47, 2, 'Quel agent possède l’ultime "Empress" ?', '');

-- Question 48
INSERT INTO question (id, quizId, question, image)
VALUES (48, 2, 'Quelle est l’arme de base de Reyna ?', '');

-- Question 49
INSERT INTO question (id, quizId, question, image)
VALUES (49, 2, 'Quelle capacité de Jett lui permet de se déplacer rapidement ?', '');

-- Question 50
INSERT INTO question (id, quizId, question, image)
VALUES (50, 2, 'Quel agent peut déployer un drone pour repérer les ennemis ?', '');

-- Question 51
INSERT INTO question (id, quizId, question, image)
VALUES (51, 2, 'Quelle est la capacité ultime de Phoenix ?', '');

-- Question 52
INSERT INTO question (id, quizId, question, image)
VALUES (52, 2, 'Quel agent est spécialisé dans les fumigènes ?', '');

-- Question 53
INSERT INTO question (id, quizId, question, image)
VALUES (53, 2, 'Quelle capacité permet à Raze de lancer des explosifs ?', '');

-- Question 54
INSERT INTO question (id, quizId, question, image)
VALUES (54, 2, 'Quel agent peut rendre une zone silencieuse ?', '');

-- Question 55
INSERT INTO question (id, quizId, question, image)
VALUES (55, 2, 'Quelle capacité de Cypher révèle la position des ennemis ?', '');

-- Question 56
INSERT INTO question (id, quizId, question, image)
VALUES (56, 2, 'Quel agent peut ressusciter un coéquipier ?', '');

-- Question 57
INSERT INTO question (id, quizId, question, image)
VALUES (57, 2, 'Quelle est la capacité qui aveugle les ennemis de Breach ?', '');

-- Question 58
INSERT INTO question (id, quizId, question, image)
VALUES (58, 2, 'Quel agent est capable de planter un C4 pour détruire des obstacles ?', '');

-- Question 59
INSERT INTO question (id, quizId, question, image)
VALUES (59, 2, 'Quelle capacité de Killjoy peut détecter des ennemis à proximité ?', '');

-- Question 60
INSERT INTO question (id, quizId, question, image)
VALUES (60, 2, 'Quel agent peut invoquer des incendies pour blesser les ennemis ?', '');

-- Question 61
INSERT INTO question (id, quizId, question, image)
VALUES (61, 2, 'Quel agent possède un drone qui peut tirer des fléchettes révélatrices ?', '');

-- Question 62
INSERT INTO question (id, quizId, question, image)
VALUES (62, 2, 'Quelle capacité d’Omen lui permet de se téléporter ?', '');

-- Question 63
INSERT INTO question (id, quizId, question, image)
VALUES (63, 2, 'Quel agent peut poser un piège qui ralentit les ennemis ?', '');

-- Question 64
INSERT INTO question (id, quizId, question, image)
VALUES (64, 2, 'Quel agent peut aveugler les ennemis avec un flash qui traverse les murs ?', '');

-- Question 65
INSERT INTO question (id, quizId, question, image)
VALUES (65, 2, 'Quelle est la capacité ultime de Brimstone qui provoque une explosion ?', '');

-- Questions pour le quiz League of Legends
INSERT INTO question (id, quizId, question, image)
VALUES (5, 3, 'Quel champion est connu sous le nom de "La Main de Noxus" ?', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/82/Noxus_The_Immortal_Bastion_01.jpg/revision/latest?cb=20181118145414');
INSERT INTO question (id, quizId, question, image)
VALUES (6, 3, 'Quel champion utilise des shurikens comme arme principale ?', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/28/Champions_LoL_%281%29.jpg/revision/latest?cb=20220903130004&path-prefix=fr');
INSERT INTO question (id, quizId, question, image)
VALUES (7, 3, 'Quel objet, maintenant retiré du jeu, faisait apparaître des créatures ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (8, 3, 'Quel est le chiffre préféré de Jhin ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (9, 3, 'Quelle champion a la compétence ayant le ratio AP le plus élevé du jeu ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (10, 3, 'Comment s''appelle le E de Syndra ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (11, 3, 'Quel camp de la jungle donne le plus d''or passé le niveau 9 ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (12, 3, 'Lequel de ces champions est réputé pour son niveau 16 ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (13, 3, 'En toplane, lequel de ces champions est connu pour son ascendant en phase de lane ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (14, 3, 'Comment s''apelle l''espèce dont font partie Teemo, Lulu ou encore Tristana ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (15, 3, 'Comment s''appelle l''univers de League of Legends ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (16, 3, 'Quelle ligue de LoL est réputée comme étant la plus prestigieuse ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (17, 3, 'Comment s''appelle le monstre faisant des aller-retours dans la rivière ? ', '');
INSERT INTO question (id, quizId, question, image)
VALUES (18, 3, 'En terme de lore, quel est le champion le plus puissant ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (19, 3, 'Comment s''appelait l''entité qui a donné naissance à Kindred ? ', '');
INSERT INTO question (id, quizId, question, image)
VALUES (20, 3, 'Quel joueur est considéré comme le GOAT de League of Legends ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (21, 3, 'Quel objet permet d'' augmenter la vitesse de déplacement des alliés à proximité?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (22, 3, 'Quel champion est particulièrement bon pour détruire des tourelles ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (23, 3, 'Lequel de ces champions vient de Zaun ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (24, 3, 'Votre jungler a smité votre canon, que faites-vous ?', '');

-- Questions pour le quiz Minecraft
INSERT INTO question (id, quizId, question, image)
VALUES (66, 4, 'Quel bloc est nécessaire pour construire un portail du Nether ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (67, 4, 'Quel mob lâche des perles d’Ender lorsqu’il est vaincu ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (68, 4, 'Quel minerai est utilisé pour fabriquer des armures et outils de qualité supérieure ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (69, 4, 'Quel est le nom du mob qui peut être apprivoisé pour éloigner les Creepers ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (70, 4, 'Quel est le nom de la dimension où se trouve l’Ender Dragon ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (71, 4, 'Quel type de bois est obtenu dans le biome jungle ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (72, 4, 'Quelle structure est associée aux pillards dans Minecraft ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (73, 4, 'Quel enchantement permet de miner plus rapidement sous l’eau ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (74, 4, 'Quel outil est nécessaire pour obtenir des gouttes de miel d’un nid d’abeilles ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (75, 4, 'Quelle plante permet de fabriquer de la poudre de feu dans le jeu ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (76, 4, 'Quel minerai peut être transformé en blocs de couleur bleue ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (77, 4, 'Quel type de poisson peut être pêché et utilisé pour apprivoiser un chat ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (78, 4, 'Quel objet est utilisé pour déplacer des objets et liquides dans le jeu ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (79, 4, 'Quelle créature se transforme en noyé lorsqu’elle reste trop longtemps sous l’eau ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (80, 4, 'Quel type de bloc est souvent utilisé pour se protéger contre les explosions ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (81, 4, 'Quelle plante aquatique peut être utilisée comme source de nourriture ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (82, 4, 'Quel type de bois est uniquement disponible dans le Nether ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (83, 4, 'Quel enchantement permet de respirer plus longtemps sous l’eau ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (84, 4, 'Quelle ressource est nécessaire pour crafter des torches ?', '');
INSERT INTO question (id, quizId, question, image)
VALUES (85, 4, 'Quel objet est utilisé pour enchanter des objets en utilisant de l’expérience ?', '');

-- Réponses pour les questions Pokémon
-- Question 1
INSERT INTO choice (id, option) VALUES (101, 'Pikachu');
INSERT INTO choice (id, option) VALUES (102, 'Évoli');
INSERT INTO choice (id, option) VALUES (103, 'Rondoudou');
INSERT INTO choice (id, option) VALUES (104, 'Bulbizarre');

-- Question 2
INSERT INTO choice (id, option) VALUES (105, 'Feu/Vol');
INSERT INTO choice (id, option) VALUES (106, 'Feu/Dragon');
INSERT INTO choice (id, option) VALUES (107, 'Feu/Psy');
INSERT INTO choice (id, option) VALUES (108, 'Feu');

-- Question 3
INSERT INTO choice (id, option) VALUES (109, 'Drattak');
INSERT INTO choice (id, option) VALUES (110, 'Gyarados');
INSERT INTO choice (id, option) VALUES (111, 'Luxray');
INSERT INTO choice (id, option) VALUES (112, 'Électhor');

-- Question 4
INSERT INTO choice (id, option) VALUES (113, 'Palkia');
INSERT INTO choice (id, option) VALUES (114, 'Mew');
INSERT INTO choice (id, option) VALUES (115, 'Arcanin');
INSERT INTO choice (id, option) VALUES (116, 'Artikodin');

-- Question 5
INSERT INTO choice (id, option) VALUES (117, 'Voltali');
INSERT INTO choice (id, option) VALUES (118, 'Evoli');
INSERT INTO choice (id, option) VALUES (119, 'Pyroli');
INSERT INTO choice (id, option) VALUES (120, 'Mentali');

-- Question 6
INSERT INTO choice (id, option) VALUES (121, 'Dragon/Vol');
INSERT INTO choice (id, option) VALUES (122, 'Dragon/Feu');
INSERT INTO choice (id, option) VALUES (123, 'Dragon/Eau');
INSERT INTO choice (id, option) VALUES (124, 'Dragon/Psy');

-- Question 7
INSERT INTO choice (id, option) VALUES (125, '15');
INSERT INTO choice (id, option) VALUES (126, '16');
INSERT INTO choice (id, option) VALUES (127, '17');
INSERT INTO choice (id, option) VALUES (128, '18');

-- Question 8
INSERT INTO choice (id, option) VALUES (129, 'Bulbizarre');
INSERT INTO choice (id, option) VALUES (130, 'Carapuce');
INSERT INTO choice (id, option) VALUES (131, 'Salamèche');
INSERT INTO choice (id, option) VALUES (132, 'Pikachu');

-- Question 9
INSERT INTO choice (id, option) VALUES (133, 'Pikachu');
INSERT INTO choice (id, option) VALUES (134, 'Mélofée');
INSERT INTO choice (id, option) VALUES (135, 'Rattata');
INSERT INTO choice (id, option) VALUES (136, 'Évoli');

-- Question 10
INSERT INTO choice (id, option) VALUES (137, 'Électhor');
INSERT INTO choice (id, option) VALUES (138, 'Sulfura');
INSERT INTO choice (id, option) VALUES (139, 'Artikodin');
INSERT INTO choice (id, option) VALUES (140, 'Latias');

-- Question 11
INSERT INTO choice (id, option) VALUES (141, 'Kadabra');
INSERT INTO choice (id, option) VALUES (142, 'Rhinocorne');
INSERT INTO choice (id, option) VALUES (143, 'Machopeur');
INSERT INTO choice (id, option) VALUES (144, 'Gravalanch');

-- Question 12
INSERT INTO choice (id, option) VALUES (145, 'Lokhlass');
INSERT INTO choice (id, option) VALUES (146, 'Ronflex');
INSERT INTO choice (id, option) VALUES (147, 'Onix');
INSERT INTO choice (id, option) VALUES (148, 'Mewtwo');

-- Question 13
INSERT INTO choice (id, option) VALUES (149, 'Normal');
INSERT INTO choice (id, option) VALUES (150, 'Combat');
INSERT INTO choice (id, option) VALUES (151, 'Eau');
INSERT INTO choice (id, option) VALUES (152, 'Poison');

-- Question 14
INSERT INTO choice (id, option) VALUES (153, 'Sulfura');
INSERT INTO choice (id, option) VALUES (154, 'Artikodin');
INSERT INTO choice (id, option) VALUES (155, 'Électhor');
INSERT INTO choice (id, option) VALUES (156, 'Lugia');

-- Question 15
INSERT INTO choice (id, option) VALUES (157, 'Ronflex');
INSERT INTO choice (id, option) VALUES (158, 'Léviator');
INSERT INTO choice (id, option) VALUES (159, 'Dracolosse');
INSERT INTO choice (id, option) VALUES (160, 'Arbok');

-- Question 16
INSERT INTO choice (id, option) VALUES (161, '36');
INSERT INTO choice (id, option) VALUES (162, '32');
INSERT INTO choice (id, option) VALUES (163, '28');
INSERT INTO choice (id, option) VALUES (164, '40');

-- Question 17
INSERT INTO choice (id, option) VALUES (165, 'Carapuce');
INSERT INTO choice (id, option) VALUES (166, 'Pikachu');
INSERT INTO choice (id, option) VALUES (167, 'Bulbizarre');
INSERT INTO choice (id, option) VALUES (168, 'Salamèche');

-- Question 18
INSERT INTO choice (id, option) VALUES (169, 'Aspicot');
INSERT INTO choice (id, option) VALUES (170, 'Papilusion');
INSERT INTO choice (id, option) VALUES (171, 'Scarabrute');
INSERT INTO choice (id, option) VALUES (172, 'Aeromite');

-- Question 19
INSERT INTO choice (id, option) VALUES (173, 'Kabuto');
INSERT INTO choice (id, option) VALUES (174, 'Amonita');
INSERT INTO choice (id, option) VALUES (175, 'Ptéra');
INSERT INTO choice (id, option) VALUES (176, 'Ossatueur');

-- Question 20
INSERT INTO choice (id, option) VALUES (177, 'Combat');
INSERT INTO choice (id, option) VALUES (178, 'Eau');
INSERT INTO choice (id, option) VALUES (179, 'Insecte');
INSERT INTO choice (id, option) VALUES (180, 'Vol');


-- Réponses pour les questions Valorant
-- Choix pour la Question 46
INSERT INTO choice (id, option) VALUES (181, 'Soin d’Orbe');
INSERT INTO choice (id, option) VALUES (182, 'Barrière de glace');
INSERT INTO choice (id, option) VALUES (183, 'Orbe de lenteur');
INSERT INTO choice (id, option) VALUES (184, 'Orbe de résurrection');

-- Choix pour la Question 47
INSERT INTO choice (id, option) VALUES (185, 'Reyna');
INSERT INTO choice (id, option) VALUES (186, 'Phoenix');
INSERT INTO choice (id, option) VALUES (187, 'Jett');
INSERT INTO choice (id, option) VALUES (188, 'Viper');

-- Choix pour la Question 48
INSERT INTO choice (id, option) VALUES (189, 'Ghost');
INSERT INTO choice (id, option) VALUES (190, 'Frenzy');
INSERT INTO choice (id, option) VALUES (191, 'Classic');
INSERT INTO choice (id, option) VALUES (192, 'Sheriff');

-- Choix pour la Question 49
INSERT INTO choice (id, option) VALUES (193, 'Courant ascendant');
INSERT INTO choice (id, option) VALUES (194, 'Brise-ciel');
INSERT INTO choice (id, option) VALUES (195, 'Vent arrière');
INSERT INTO choice (id, option) VALUES (196, 'Explosion de vent');

-- Choix pour la Question 50
INSERT INTO choice (id, option) VALUES (197, 'Sova');
INSERT INTO choice (id, option) VALUES (198, 'Cypher');
INSERT INTO choice (id, option) VALUES (199, 'Omen');
INSERT INTO choice (id, option) VALUES (200, 'Phoenix');

-- Choix pour la Question 51
INSERT INTO choice (id, option) VALUES (201, 'Run It Back');
INSERT INTO choice (id, option) VALUES (202, 'Blaze');
INSERT INTO choice (id, option) VALUES (203, 'Curveball');
INSERT INTO choice (id, option) VALUES (204, 'Hot Hands');

-- Choix pour la Question 52
INSERT INTO choice (id, option) VALUES (205, 'Brimstone');
INSERT INTO choice (id, option) VALUES (206, 'Omen');
INSERT INTO choice (id, option) VALUES (207, 'Viper');
INSERT INTO choice (id, option) VALUES (208, 'Sova');

-- Choix pour la Question 53
INSERT INTO choice (id, option) VALUES (209, 'Boom Bot');
INSERT INTO choice (id, option) VALUES (210, 'Blast Pack');
INSERT INTO choice (id, option) VALUES (211, 'Showstopper');
INSERT INTO choice (id, option) VALUES (212, 'Paint Shells');

-- Choix pour la Question 54
INSERT INTO choice (id, option) VALUES (213, 'Cypher');
INSERT INTO choice (id, option) VALUES (214, 'Omen');
INSERT INTO choice (id, option) VALUES (215, 'Sova');
INSERT INTO choice (id, option) VALUES (216, 'Jett');

-- Choix pour la Question 55
INSERT INTO choice (id, option) VALUES (217, 'Spycam');
INSERT INTO choice (id, option) VALUES (218, 'Trapwire');
INSERT INTO choice (id, option) VALUES (219, 'Recon Bolt');
INSERT INTO choice (id, option) VALUES (220, 'Alarm Bot');

-- Choix pour la Question 56
INSERT INTO choice (id, option) VALUES (221, 'Sage');
INSERT INTO choice (id, option) VALUES (222, 'Phoenix');
INSERT INTO choice (id, option) VALUES (223, 'Breach');
INSERT INTO choice (id, option) VALUES (224, 'Cypher');

-- Choix pour la Question 57
INSERT INTO choice (id, option) VALUES (225, 'Flashpoint');
INSERT INTO choice (id, option) VALUES (226, 'Fault Line');
INSERT INTO choice (id, option) VALUES (227, 'Rolling Thunder');
INSERT INTO choice (id, option) VALUES (228, 'Aftershock');

-- Choix pour la Question 58
INSERT INTO choice (id, option) VALUES (229, 'Raze');
INSERT INTO choice (id, option) VALUES (230, 'Brimstone');
INSERT INTO choice (id, option) VALUES (231, 'Sage');
INSERT INTO choice (id, option) VALUES (232, 'Jett');

-- Choix pour la Question 59
INSERT INTO choice (id, option) VALUES (233, 'Alarm Bot');
INSERT INTO choice (id, option) VALUES (234, 'Nanoswarm');
INSERT INTO choice (id, option) VALUES (235, 'Turret');
INSERT INTO choice (id, option) VALUES (236, 'Lockdown');

-- Choix pour la Question 60
INSERT INTO choice (id, option) VALUES (237, 'Phoenix');
INSERT INTO choice (id, option) VALUES (238, 'Brimstone');
INSERT INTO choice (id, option) VALUES (239, 'Omen');
INSERT INTO choice (id, option) VALUES (240, 'Viper');

-- Choix pour la Question 61
INSERT INTO choice (id, option) VALUES (241, 'Recon Bolt');
INSERT INTO choice (id, option) VALUES (242, 'Owl Drone');
INSERT INTO choice (id, option) VALUES (243, 'Trapwire');
INSERT INTO choice (id, option) VALUES (244, 'Cage');

-- Choix pour la Question 62
INSERT INTO choice (id, option) VALUES (245, 'Shrouded Step');
INSERT INTO choice (id, option) VALUES (246, 'Dark Cover');
INSERT INTO choice (id, option) VALUES (247, 'Paranoia');
INSERT INTO choice (id, option) VALUES (248, 'From the Shadows');

-- Choix pour la Question 63
INSERT INTO choice (id, option) VALUES (249, 'Cypher');
INSERT INTO choice (id, option) VALUES (250, 'Killjoy');
INSERT INTO choice (id, option) VALUES (251, 'Sage');
INSERT INTO choice (id, option) VALUES (252, 'Reyna');

-- Choix pour la Question 64
INSERT INTO choice (id, option) VALUES (253, 'Phoenix');
INSERT INTO choice (id, option) VALUES (254, 'Yoru');
INSERT INTO choice (id, option) VALUES (255, 'Skye');
INSERT INTO choice (id, option) VALUES (256, 'Breach');

-- Choix pour la Question 65
INSERT INTO choice (id, option) VALUES (257, 'Orbital Strike');
INSERT INTO choice (id, option) VALUES (258, 'Incendiary');
INSERT INTO choice (id, option) VALUES (259, 'Stim Beacon');
INSERT INTO choice (id, option) VALUES (260, 'Sky Smoke');


-- Réponses pour les questions League of Legends
INSERT INTO choice (id, option) VALUES (17, 'Darius');
INSERT INTO choice (id, option) VALUES (18, 'Draven');
INSERT INTO choice (id, option) VALUES (19, 'Garen');
INSERT INTO choice (id, option) VALUES (20, 'Swain');

INSERT INTO choice (id, option) VALUES (21, 'Zed');
INSERT INTO choice (id, option) VALUES (22, 'Shen');
INSERT INTO choice (id, option) VALUES (23, 'Kennen');
INSERT INTO choice (id, option) VALUES (24, 'Akali');

INSERT INTO choice (id, option) VALUES (25, 'Le ZZ''rot');
INSERT INTO choice (id, option) VALUES (26, 'La bannière de commandement');
INSERT INTO choice (id, option) VALUES (27, 'Le Zhonya');
INSERT INTO choice (id, option) VALUES (28, 'L''étendard de Targon');

INSERT INTO choice (id, option) VALUES (29, '7');
INSERT INTO choice (id, option) VALUES (30, '4');
INSERT INTO choice (id, option) VALUES (31, '2');
INSERT INTO choice (id, option) VALUES (32, '9');

INSERT INTO choice (id, option) VALUES (33, 'Nunu');
INSERT INTO choice (id, option) VALUES (34, 'Fiddlestick');
INSERT INTO choice (id, option) VALUES (35, 'Briar');
INSERT INTO choice (id, option) VALUES (36, 'Jinx');

INSERT INTO choice (id, option) VALUES (37, 'Dispersion des faibles');
INSERT INTO choice (id, option) VALUES (38, 'Paranoïa');
INSERT INTO choice (id, option) VALUES (39, 'Désintégrateur de formes de vie');
INSERT INTO choice (id, option) VALUES (40, 'Pluie d''Icathia');

INSERT INTO choice (id, option) VALUES (41, 'Les krugs');
INSERT INTO choice (id, option) VALUES (42, 'Le carapateur');
INSERT INTO choice (id, option) VALUES (43, 'le gromp');
INSERT INTO choice (id, option) VALUES (44, 'les corbins');

INSERT INTO choice (id, option) VALUES (45, 'Talon');
INSERT INTO choice (id, option) VALUES (46, 'Tryndamere');
INSERT INTO choice (id, option) VALUES (47, 'Aurelion Sol');
INSERT INTO choice (id, option) VALUES (48, 'Kassadin');

INSERT INTO choice (id, option) VALUES (49, 'Jax');
INSERT INTO choice (id, option) VALUES (50, 'Garen');
INSERT INTO choice (id, option) VALUES (51, 'Mordekaiser');
INSERT INTO choice (id, option) VALUES (52, 'Darius');

INSERT INTO choice (id, option) VALUES (53, 'Les Yordles');
INSERT INTO choice (id, option) VALUES (54, 'Les Bandles');
INSERT INTO choice (id, option) VALUES (55, 'Les Noxiens');
INSERT INTO choice (id, option) VALUES (56, 'Les Shurimiens');

INSERT INTO choice (id, option) VALUES (57, 'League of Legends');
INSERT INTO choice (id, option) VALUES (58, 'La faille de l''invocateur');
INSERT INTO choice (id, option) VALUES (59, 'Runeterra');
INSERT INTO choice (id, option) VALUES (60, 'Arcane');

INSERT INTO choice (id, option) VALUES (61, 'La LCS');
INSERT INTO choice (id, option) VALUES (62, 'La LCK');
INSERT INTO choice (id, option) VALUES (63, 'La LPL');
INSERT INTO choice (id, option) VALUES (64, 'La LEC');

INSERT INTO choice (id, option) VALUES (65, 'Le carapateur');
INSERT INTO choice (id, option) VALUES (66, 'Le gromp');
INSERT INTO choice (id, option) VALUES (67, 'Le Baron Nashor');
INSERT INTO choice (id, option) VALUES (68, 'River Shen');

INSERT INTO choice (id, option) VALUES (69, 'Aurelion Sol');
INSERT INTO choice (id, option) VALUES (70, 'Kindred');
INSERT INTO choice (id, option) VALUES (71, 'Bard');
INSERT INTO choice (id, option) VALUES (72, 'Zoe');

INSERT INTO choice (id, option) VALUES (73, 'Grey Man');
INSERT INTO choice (id, option) VALUES (74, 'L''Inconnu');
INSERT INTO choice (id, option) VALUES (75, 'Raum');
INSERT INTO choice (id, option) VALUES (76, 'Rhaast');

INSERT INTO choice (id, option) VALUES (77, 'Peyz');
INSERT INTO choice (id, option) VALUES (78, 'Faker');
INSERT INTO choice (id, option) VALUES (79, 'Chovy');
INSERT INTO choice (id, option) VALUES (80, 'Caps');

INSERT INTO choice (id, option) VALUES (81, 'Le Shurelya');
INSERT INTO choice (id, option) VALUES (82, 'Le Zhonya');
INSERT INTO choice (id, option) VALUES (83, 'L''Iron Solari');
INSERT INTO choice (id, option) VALUES (84, 'Le Zephyr');

INSERT INTO choice (id, option) VALUES (85, 'Ziggs');
INSERT INTO choice (id, option) VALUES (86, 'Nidalee');
INSERT INTO choice (id, option) VALUES (87, 'Blitzcrank');
INSERT INTO choice (id, option) VALUES (88, 'Renekton');

INSERT INTO choice (id, option) VALUES (89, 'Twitch');
INSERT INTO choice (id, option) VALUES (90, 'Azir');
INSERT INTO choice (id, option) VALUES (91, 'Vi');
INSERT INTO choice (id, option) VALUES (92, 'Leona');

INSERT INTO choice (id, option) VALUES (93, 'Je garde mon adulte et j''en parle à un calme');
INSERT INTO choice (id, option) VALUES (94, 'je l''insulte');
INSERT INTO choice (id, option) VALUES (95, 'Je flash sur place et lance un call ff');
INSERT INTO choice (id, option) VALUES (96, 'Je le spam ping, l''insulte, et passe le reste de la game à le suivre dans sa jungle pour lui voler ses camps, tout en donnant sa position à l''ennemi dans le chat all');
-- Réponses pour les questions Minecraft
-- Choix pour les Questions Minecraft
-- Choix pour la Question 66
INSERT INTO choice (id, option) VALUES (261, 'Obsidienne');
INSERT INTO choice (id, option) VALUES (262, 'Diamant');
INSERT INTO choice (id, option) VALUES (263, 'Pierre');
INSERT INTO choice (id, option) VALUES (264, 'Fer');

-- Choix pour la Question 67
INSERT INTO choice (id, option) VALUES (265, 'Enderman');
INSERT INTO choice (id, option) VALUES (266, 'Zombie');
INSERT INTO choice (id, option) VALUES (267, 'Creeper');
INSERT INTO choice (id, option) VALUES (268, 'Squelette');

-- Choix pour la Question 68
INSERT INTO choice (id, option) VALUES (269, 'Netherite');
INSERT INTO choice (id, option) VALUES (270, 'Charbon');
INSERT INTO choice (id, option) VALUES (271, 'Cuivre');
INSERT INTO choice (id, option) VALUES (272, 'Quartz');

-- Choix pour la Question 69
INSERT INTO choice (id, option) VALUES (273, 'Chat');
INSERT INTO choice (id, option) VALUES (274, 'Loup');
INSERT INTO choice (id, option) VALUES (275, 'Renard');
INSERT INTO choice (id, option) VALUES (276, 'Cheval');

-- Choix pour la Question 70
INSERT INTO choice (id, option) VALUES (277, 'L’End');
INSERT INTO choice (id, option) VALUES (278, 'Le Nether');
INSERT INTO choice (id, option) VALUES (279, 'L’Overworld');
INSERT INTO choice (id, option) VALUES (280, 'La Forêt Sombre');

-- Choix pour la Question 71
INSERT INTO choice (id, option) VALUES (281, 'Bois de jungle');
INSERT INTO choice (id, option) VALUES (282, 'Bois de bouleau');
INSERT INTO choice (id, option) VALUES (283, 'Bois de chêne');
INSERT INTO choice (id, option) VALUES (284, 'Bois d’acacia');

-- Choix pour la Question 72
INSERT INTO choice (id, option) VALUES (285, 'Avant-poste des pillards');
INSERT INTO choice (id, option) VALUES (286, 'Temple du désert');
INSERT INTO choice (id, option) VALUES (287, 'Monument sous-marin');
INSERT INTO choice (id, option) VALUES (288, 'Forteresse du Nether');

-- Choix pour la Question 73
INSERT INTO choice (id, option) VALUES (289, 'Efficacité');
INSERT INTO choice (id, option) VALUES (290, 'Apnée');
INSERT INTO choice (id, option) VALUES (291, 'Solidité');
INSERT INTO choice (id, option) VALUES (292, 'Toucher de soie');

-- Choix pour la Question 74
INSERT INTO choice (id, option) VALUES (293, 'Bouteille en verre');
INSERT INTO choice (id, option) VALUES (294, 'Épée');
INSERT INTO choice (id, option) VALUES (295, 'Cisaille');
INSERT INTO choice (id, option) VALUES (296, 'Hache');

-- Choix pour la Question 75
INSERT INTO choice (id, option) VALUES (297, 'Fleur de feu');
INSERT INTO choice (id, option) VALUES (298, 'Bambou');
INSERT INTO choice (id, option) VALUES (299, 'Cactus');
INSERT INTO choice (id, option) VALUES (300, 'Canne à sucre');

-- Choix pour la Question 76
INSERT INTO choice (id, option) VALUES (301, 'Lapis-lazuli');
INSERT INTO choice (id, option) VALUES (302, 'Or');
INSERT INTO choice (id, option) VALUES (303, 'Fer');
INSERT INTO choice (id, option) VALUES (304, 'Cuivre');

-- Choix pour la Question 77
INSERT INTO choice (id, option) VALUES (305, 'Poisson tropical');
INSERT INTO choice (id, option) VALUES (306, 'Morue');
INSERT INTO choice (id, option) VALUES (307, 'Saumon');
INSERT INTO choice (id, option) VALUES (308, 'Calmar');

-- Choix pour la Question 78
INSERT INTO choice (id, option) VALUES (309, 'Entonnoir');
INSERT INTO choice (id, option) VALUES (310, 'Four');
INSERT INTO choice (id, option) VALUES (311, 'Échelle');
INSERT INTO choice (id, option) VALUES (312, 'Trappe');

-- Choix pour la Question 79
INSERT INTO choice (id, option) VALUES (313, 'Zombie');
INSERT INTO choice (id, option) VALUES (314, 'Squelette');
INSERT INTO choice (id, option) VALUES (315, 'Zombie noyé');
INSERT INTO choice (id, option) VALUES (316, 'Sorcière');

-- Choix pour la Question 80
INSERT INTO choice (id, option) VALUES (317, 'Pierre');
INSERT INTO choice (id, option) VALUES (318, 'Terre');
INSERT INTO choice (id, option) VALUES (319, 'Obsidienne');
INSERT INTO choice (id, option) VALUES (320, 'Verre');

-- Choix pour la Question 81
INSERT INTO choice (id, option) VALUES (321, 'Kelp');
INSERT INTO choice (id, option) VALUES (322, 'Champignon');
INSERT INTO choice (id, option) VALUES (323, 'Blé');
INSERT INTO choice (id, option) VALUES (324, 'Betterave');

-- Choix pour la Question 82
INSERT INTO choice (id, option) VALUES (325, 'Bois de trémelle');
INSERT INTO choice (id, option) VALUES (326, 'Bois pourpre');
INSERT INTO choice (id, option) VALUES (327, 'Bois de la jungle');
INSERT INTO choice (id, option) VALUES (328, 'Bois de chêne');

-- Choix pour la Question 83
INSERT INTO choice (id, option) VALUES (329, 'Apnée');
INSERT INTO choice (id, option) VALUES (330, 'Châtiment');
INSERT INTO choice (id, option) VALUES (331, 'Protection');
INSERT INTO choice (id, option) VALUES (332, 'Tranchant');

-- Choix pour la Question 84
INSERT INTO choice (id, option) VALUES (333, 'Charbon');
INSERT INTO choice (id, option) VALUES (334, 'Pierre');
INSERT INTO choice (id, option) VALUES (335, 'Sable');
INSERT INTO choice (id, option) VALUES (336, 'Cuivre');

-- Choix pour la Question 85
INSERT INTO choice (id, option) VALUES (337, 'Table d’enchantement');
INSERT INTO choice (id, option) VALUES (338, 'Enclume');
INSERT INTO choice (id, option) VALUES (339, 'Four');
INSERT INTO choice (id, option) VALUES (340, 'Coffre');


-- Réponses correctes pour le quiz Pokémon
-- Bloc 10
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (101, 26, 101, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (102, 26, 102, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (103, 26, 103, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (104, 26, 104, false);

-- Bloc 11
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (105, 27, 105, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (106, 27, 106, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (107, 27, 107, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (108, 27, 108, true);

-- Bloc 12
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (109, 28, 109, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (110, 28, 110, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (111, 28, 111, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (112, 28, 112, false);

-- Bloc 13
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (113, 29, 113, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (114, 29, 114, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (115, 29, 115, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (116, 29, 116, false);

-- Bloc 14
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (117, 30, 117, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (118, 30, 118, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (119, 30, 119, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (120, 30, 120, false);

-- Bloc 15
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (121, 31, 121, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (122, 31, 122, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (123, 31, 123, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (124, 31, 124, false);

-- Bloc 16
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (125, 32, 125, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (126, 32, 126, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (127, 32, 127, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (128, 32, 128, true);

-- Bloc 17
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (129, 33, 129, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (130, 33, 130, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (131, 33, 131, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (132, 33, 132, false);

-- Bloc 18
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (133, 34, 133, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (134, 34, 134, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (135, 34, 135, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (136, 34, 136, false);

-- Bloc 19
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (137, 35, 137, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (138, 35, 138, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (139, 35, 139, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (140, 35, 140, false);

-- Bloc 20
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (141, 36, 141, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (142, 36, 142, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (143, 36, 143, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (144, 36, 144, false);

-- Bloc 21
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (145, 37, 145, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (146, 37, 146, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (147, 37, 147, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (148, 37, 148, false);

-- Bloc 22
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (149, 38, 149, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (150, 38, 150, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (151, 38, 151, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (152, 38, 152, false);

-- Bloc 23
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (153, 39, 153, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (154, 39, 154, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (155, 39, 155, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (156, 39, 156, false);

-- Bloc 24
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (157, 40, 157, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (158, 40, 158, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (159, 40, 159, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (160, 40, 160, false);

-- Bloc 25
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (161, 41, 161, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (162, 41, 162, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (163, 41, 163, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (164, 41, 164, false);

-- Bloc 26
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (165, 42, 165, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (166, 42, 166, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (167, 42, 167, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (168, 42, 168, false);

-- Bloc 27
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (169, 43, 169, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (170, 43, 170, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (171, 43, 171, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (172, 43, 172, false);

-- Bloc 28
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (173, 44, 173, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (174, 44, 174, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (175, 44, 175, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (176, 44, 176, true);

-- Bloc 29
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (177, 45, 177, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (178, 45, 178, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (179, 45, 179, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (180, 45, 180, true);

-- Réponses correctes pour le quiz Valorant
-- Réponses pour la Question 46
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (181, 46, 181, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (182, 46, 182, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (183, 46, 183, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (184, 46, 184, false);

-- Réponses pour la Question 47
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (185, 47, 185, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (186, 47, 186, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (187, 47, 187, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (188, 47, 188, false);

-- Réponses pour la Question 48
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (189, 48, 189, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (190, 48, 190, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (191, 48, 191, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (192, 48, 192, false);

-- Réponses pour la Question 49
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (193, 49, 193, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (194, 49, 194, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (195, 49, 195, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (196, 49, 196, false);

-- Réponses pour la Question 50
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (197, 50, 197, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (198, 50, 198, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (199, 50, 199, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (200, 50, 200, false);

-- Réponses pour la Question 51
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (201, 51, 201, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (202, 51, 202, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (203, 51, 203, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (204, 51, 204, false);

-- Réponses pour la Question 52
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (205, 52, 205, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (206, 52, 206, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (207, 52, 207, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (208, 52, 208, false);

-- Réponses pour la Question 53
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (209, 53, 209, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (210, 53, 210, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (211, 53, 211, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (212, 53, 212, false);

-- Réponses pour la Question 54
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (213, 54, 213, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (214, 54, 214, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (215, 54, 215, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (216, 54, 216, false);

-- Réponses pour la Question 55
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (217, 55, 217, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (218, 55, 218, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (219, 55, 219, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (220, 55, 220, false);

-- Réponses pour la Question 56
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (221, 56, 221, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (222, 56, 222, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (223, 56, 223, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (224, 56, 224, false);

-- Réponses pour la Question 57
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (225, 57, 225, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (226, 57, 226, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (227, 57, 227, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (228, 57, 228, false);

-- Réponses pour la Question 58
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (229, 58, 229, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (230, 58, 230, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (231, 58, 231, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (232, 58, 232, false);

-- Réponses pour la Question 59
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (233, 59, 233, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (234, 59, 234, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (235, 59, 235, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (236, 59, 236, false);

-- Réponses pour la Question 60
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (237, 60, 237, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (238, 60, 238, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (239, 60, 239, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (240, 60, 240, false);

-- Réponses pour la Question 61
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (241, 61, 241, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (242, 61, 242, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (243, 61, 243, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (244, 61, 244, false);

-- Réponses pour la Question 62
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (245, 62, 245, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (246, 62, 246, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (247, 62, 247, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (248, 62, 248, false);

-- Réponses pour la Question 63
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (249, 63, 249, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (250, 63, 250, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (251, 63, 251, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (252, 63, 252, false);

-- Réponses pour la Question 64
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (253, 64, 253, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (254, 64, 254, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (255, 64, 255, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (256, 64, 256, false);

-- Réponses pour la Question 65
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (257, 65, 257, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (258, 65, 258, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (259, 65, 259, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (260, 65, 260, false);

-- Réponses correctes pour le quiz League of Legends
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (17, 5, 17, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (18, 5, 18, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (19, 5, 19, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (20, 5, 20, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (21, 6, 21, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (22, 6, 22, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (23, 6, 23, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (24, 6, 24, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (25, 7, 25, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (26, 7, 26, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (27, 7, 27, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (28, 7, 28, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (29, 8, 29, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (30, 8, 30, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (31, 8, 31, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (32, 8, 32, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (33, 9, 33, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (34, 9, 34, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (35, 9, 35, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (36, 9, 36, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (37, 10, 37, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (38, 10, 38, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (39, 10, 39, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (40, 10, 40, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (41, 11, 41, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (42, 11, 42, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (43, 11, 43, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (44, 11, 44, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (45, 12, 45, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (46, 12, 46, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (47, 12, 47, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (48, 12, 48, true);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (49, 13, 49, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (50, 13, 50, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (51, 13, 51, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (52, 13, 52, true);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (53, 14, 53, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (54, 14, 54, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (55, 14, 55, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (56, 14, 56, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (57, 15, 57, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (58, 15, 58, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (59, 15, 59, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (60, 15, 60, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (61, 16, 61, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (62, 16, 62, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (63, 16, 63, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (64, 16, 64, false);

-- Bloc 1
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (65, 17, 65, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (66, 17, 66, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (67, 17, 67, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (68, 17, 68, false);

-- Bloc 2
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (69, 18, 69, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (70, 18, 70, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (71, 18, 71, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (72, 18, 72, false);

-- Bloc 3
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (73, 19, 73, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (74, 19, 74, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (75, 19, 75, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (76, 19, 76, false);

-- Bloc 4
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (77, 20, 77, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (78, 20, 78, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (79, 20, 79, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (80, 20, 80, false);

-- Bloc 5
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (81, 21, 81, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (82, 21, 82, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (83, 21, 83, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (84, 21, 84, false);

-- Bloc 6
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (85, 22, 85, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (86, 22, 86, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (87, 22, 87, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (88, 22, 88, false);

-- Bloc 7
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (89, 23, 89, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (90, 23, 90, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (91, 23, 91, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (92, 23, 92, false);

-- Bloc 8
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (93, 24, 93, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (94, 24, 94, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (95, 24, 95, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (96, 24, 96, false);


-- Réponses pour les Questions Minecraft
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (261, 66, 261, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (262, 66, 262, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (263, 66, 263, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (264, 66, 264, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (265, 67, 265, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (266, 67, 266, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (267, 67, 267, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (268, 67, 268, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (269, 68, 269, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (270, 68, 270, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (271, 68, 271, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (272, 68, 272, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (273, 69, 273, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (274, 69, 274, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (275, 69, 275, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (276, 69, 276, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (277, 70, 277, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (278, 70, 278, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (279, 70, 279, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (280, 70, 280, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (281, 71, 281, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (282, 71, 282, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (283, 71, 283, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (284, 71, 284, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (285, 72, 285, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (286, 72, 286, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (287, 72, 287, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (288, 72, 288, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (289, 73, 289, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (290, 73, 290, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (291, 73, 291, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (292, 73, 292, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (293, 74, 293, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (294, 74, 294, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (295, 74, 295, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (296, 74, 296, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (297, 75, 297, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (298, 75, 298, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (299, 75, 299, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (300, 75, 300, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (301, 76, 301, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (302, 76, 302, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (303, 76, 303, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (304, 76, 304, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (305, 77, 305, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (306, 77, 306, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (307, 77, 307, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (308, 77, 308, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (309, 78, 309, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (310, 78, 310, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (311, 78, 311, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (312, 78, 312, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (313, 79, 313, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (314, 79, 314, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (315, 79, 315, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (316, 79, 316, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (317, 80, 317, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (318, 80, 318, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (319, 80, 319, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (320, 80, 320, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (321, 81, 321, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (322, 81, 322, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (323, 81, 323, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (324, 81, 324, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (325, 82, 325, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (326, 82, 326, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (327, 82, 327, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (328, 82, 328, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (329, 83, 329, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (330, 83, 330, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (331, 83, 331, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (332, 83, 332, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (333, 84, 333, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (334, 84, 334, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (335, 84, 335, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (336, 84, 336, false);

INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (337, 85, 337, true);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (338, 85, 338, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (339, 85, 339, false);
INSERT INTO answer (id, questionId, choiceId, isCorrect) VALUES (340, 85, 340, false);


INSERT INTO score (id, userId, quizId, score, message) VALUES (1, 1, 1, 90, 'Trop fort !');
INSERT INTO score (id, userId, quizId, score, message) VALUES (2, 1, 2, 0, 'Dommage !');
INSERT INTO score (id, userId, quizId, score, message) VALUES (3, 1, 3, 50, 'Pas mal !');