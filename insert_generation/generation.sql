INSERT INTO Film Values (1, 'xXx: Reactivated', to_date(19/01/2017, 'DD/MM/YYYY'), 'Tout public', 110, 1, 1);
INSERT INTO Film Values (2, 'Assassin''s Creeds', to_date(21/12/2016, 'DD/MM/YYYY'), -12, 140, 2, 1);
INSERT INTO Film Values (3, 'Lalaland', to_date(25/01/2017, 'DD/MM/YYYY'), 'Tout public', 125, 3, 0);
INSERT INTO Cinema Values (1, 'St-Herblain', 'Place Jean-Bart', 'UGC', 10);
INSERT INTO Cinema Values (2, 'St-Herblain', 'Allée la Pérouse', 'Pathé Gaumont', 12);
INSERT INTO Cinema Values (3, 'Nantes', '12 Place du Commerce', 'Pathé Gaumont', 8);
INSERT INTO Cinema Values (4, 'Angers', '1ère Avenue des Droits de l''Homme', 'Pathé Gaumont', 5);
INSERT INTO Realisateur Values (1, 'Caruso', 'Daniel John');
INSERT INTO Realisateur Values (2, 'Kurzel', 'Justin');
INSERT INTO Realisateur Values (3, 'Chazelle', 'Damien');
INSERT INTO Client Values (1, 'Martin', 'herve');
INSERT INTO Client Values (2, 'Dupont', 'Marc');
INSERT INTO Client Values (3, 'Dubois', 'Jeremie');
INSERT INTO Client Values (4, 'Morgan', 'philippe');
INSERT INTO Client Values (5, 'David', 'jean');
INSERT INTO Acteur Values (10, 'gleeson', 'brendan');
INSERT INTO Acteur Values (11, 'rampling', 'charlotte');
INSERT INTO Acteur Values (12, 'labed', 'Ariane');
INSERT INTO Acteur Values (13, 'gosling', 'ryan');
INSERT INTO Acteur Values (14, 'stone', 'emma');
INSERT INTO Acteur Values (15, 'legend', 'john');
INSERT INTO Acteur Values (16, 'DeWitt', 'Rosemarie');
INSERT INTO Acteur Values (17, 'Wittrock', 'Finn');
INSERT INTO Acteur Values (18, 'Simmons', 'J.K');
INSERT INTO Acteur Values (1, 'diesel', 'vin');
INSERT INTO Acteur Values (2, 'yan', 'donnie');
INSERT INTO Acteur Values (3, 'padukone', 'deepika');
INSERT INTO Acteur Values (4, 'wu', 'kris');
INSERT INTO Acteur Values (5, 'rose', 'ruby ');
INSERT INTO Acteur Values (6, 'McCann', 'rory ');
INSERT INTO Acteur Values (7, 'fassbender', 'michael');
INSERT INTO Acteur Values (8, 'cotillard', 'marion');
INSERT INTO Acteur Values (9, 'irons', 'jeremy');
INSERT INTO Casting Values (1, 'adele wofl', 5);
INSERT INTO Casting Values (1, 'nicks', 4);
INSERT INTO Casting Values (1, 'serena unger', 3);
INSERT INTO Casting Values (1, 'tennyson torch', 6);
INSERT INTO Casting Values (1, 'xander cage', 1);
INSERT INTO Casting Values (1, 'xiang', 2);
INSERT INTO Casting Values (2, 'aguilar de nerha', 7);
INSERT INTO Casting Values (2, 'cal lynch', 7);
INSERT INTO Casting Values (2, 'Ellen Kaye', 11);
INSERT INTO Casting Values (2, 'joseph lynch', 10);
INSERT INTO Casting Values (2, 'Maria', 12);
INSERT INTO Casting Values (2, 'rikkin', 9);
INSERT INTO Casting Values (2, 'sofia', 8);
INSERT INTO Casting Values (3, 'Bill', 18);
INSERT INTO Casting Values (3, 'Greg', 17);
INSERT INTO Casting Values (3, 'Keith', 15);
INSERT INTO Casting Values (3, 'Laura', 16);
INSERT INTO Casting Values (3, 'Mia', 14);
INSERT INTO Casting Values (3, 'Sebastian', 13);
INSERT INTO Seance Values (1, 1, 1, to_date(24/01/2017 20:00, 'DD/MM/YYYY HH24:MI'), 7, 1);
INSERT INTO Seance Values (2, 2, 1, to_date(27/01/2017 16:30, 'DD/MM/YYYY HH24:MI'), 11, 0);
INSERT INTO Seance Values (3, 3, 2, to_date(10/01/2017 11:00, 'DD/MM/YYYY HH24:MI'), 1, 0);
INSERT INTO Seance Values (4, 4, 3, to_date(10/01/2017 22:00, 'DD/MM/YYYY HH24:MI'), 3, 0);
INSERT INTO Reservation Values (1, 1, 4, 0, 2, 0);
INSERT INTO Reservation Values (2, 1, 8, 1, 2, 0);
INSERT INTO Reservation Values (3, 2, 15, 0, 2, 2);
INSERT INTO Reservation Values (4, 3, 16, 0, 1, 2);
INSERT INTO Reservation Values (5, 4, 23, 0, 0, 2);
INSERT INTO Salle Values (1, 7, 1, 3, 100, 0);
INSERT INTO Salle Values (2, 11, 1, 5, 255, 10);
INSERT INTO Salle Values (3, 1, 0, 10, 345, 10);
INSERT INTO Salle Values (4, 3, 0, 3, 75, 3);
