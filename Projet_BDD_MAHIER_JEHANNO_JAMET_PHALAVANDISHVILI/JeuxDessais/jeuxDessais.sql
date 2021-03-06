set serveroutput on
-- Verification des contraintes sur la relation Film
INSERT INTO Realisateur values(real_seq.nextval,'Mangold','James');
--Dans ces 2 cas là check contrainte ca donne aucun erreur
INSERT INTO Film values(films_seq.nextval,'Xmen : Logan',to_date('01/03/2017','DD/MM/YYYY'),'Tout Public',137,real_seq.currval,0);
--DBMS_OUTPUT.PUT_LINE("insertion ok")
INSERT INTO Film values(films_seq.nextval,'WHIPLASH',to_date('24/12/2014','DD/MM/YYYY'),'Tout Public',107,3,1);
--DBMS_OUTPUT.PUT_LINE("insertion ok")
--violation de contrainte
INSERT INTO Film values(films_seq.nextval,'Paranoiak',to_date('22/08/2007','DD/MM/YYYY'),'Tout Public',105,1,2);
INSERT INTO Film values(films_seq.nextval,'Drop zone',to_date('15/02/1995','DD/MM/YYYY'),'Tout Public',101,1,-2);

-- Verification des contraintes sur la relation Seance
--Dans ces 2 cas là check contrainte ca donne aucun erreur
INSERT INTO Seance Values (seance_seq.nextval, 1, 1, to_date('24/07/2017 18:00', 'DD/MM/YYYY HH24:MI'), 7, 1);
--DBMS_OUTPUT.PUT_LINE("insertion ok");
INSERT INTO Seance Values (seance_seq.nextval, 2, 3, to_date('15/04/2017 16:30', 'DD/MM/YYYY HH24:MI'), 11, 0);
--DBMS_OUTPUT.PUT_LINE("insertion ok");
--violation de contrainte
INSERT INTO Seance Values (seance_seq.nextval, 1, 1, to_date('25/07/2017 18:00', 'DD/MM/YYYY HH24:MI'), 7, 23);
INSERT INTO Seance Values (seance_seq.nextval, 2, 3, to_date('17/04/2017 16:30', 'DD/MM/YYYY HH24:MI'), 11, -54);


-- Verification des contraintes sur la relation Salle
--Dans ces 2 cas là check contrainte ca donne aucun erreur
INSERT INTO Salle Values (1, 1, 1, 10, 100, 5);
--DBMS_OUTPUT.PUT_LINE("insertion ok");
INSERT INTO Salle Values (1, 2, 0, 5, 85, 7);
--DBMS_OUTPUT.PUT_LINE("insertion ok");
--violation de contrainte
INSERT INTO Salle Values (1, 4, -1, 5, 55, 10);
INSERT INTO Salle Values (1, 3, 3, 5, 55, 10);

--Verification du fonctionnement des triggers verifPlace en utilisant la procedure reservationClient
--Tous les reservations vont bien passé 
exec reservationClient('Martin', 'Jean', 4, 2, 20, 0);
exec reservationClient('Dupont', 'Marc', 4, 0, 15, 0);
exec reservationClient('Piere', 'Jean', 4, 1, 28, 1); 
--Application error sur nb place Handicape
exec reservationClient('Dupont', 'Felix', 4, 1, 0, 0); 
--Application error sur nb place Dbox
exec reservationClient('Martin', 'Clement', 4, 0,0 , 3); 
--Application error sur nb place Standard
exec reservationClient('Martin', 'Martin', 4, 0,16, 0); 


--Verification du fonctionnement des triggers verif3D
INSERT INTO Seance Values (seance_seq.nextval, 1, 1, to_date('03/03/2018 23:59', 'DD/MM/YYYY HH24:MI'), 7, 0);
--DBMS_OUTPUT.PUT_LINE('insertion ok');
--Application error
INSERT INTO Seance Values (seance_seq.nextval, 3, 1, to_date('03/03/2018 23:59', 'DD/MM/YYYY HH24:MI'), 1,1);

--verification du fonctionnement de la procedure affichPlaces
--le cas où ca marche
exec affichPlaces(1);
exec affichPlaces(2);
--le cas ou ca va donner erreur
exec affichPlaces(99999);