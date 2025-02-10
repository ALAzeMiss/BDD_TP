-- CREATE DATABASE réservation_manager; 
USE réservation_manager; 

-- Création de la table Utilisateur

CREATE TABLE Utilisateur (
	numero_etudiant INT NOT NULL PRIMARY KEY,
    nom_utilisateur VARCHAR(50) NOT NULL,
    prenom_utilisateur VARCHAR(50),
    departement VARCHAR(5),
    annee VARCHAR(2)
); 

INSERT INTO Utilisateur (numero_etudiant, nom_utilisateur, prenom_utilisateur, departement, annee) VALUES 
(22102396, 'LANGLAIS', 'Amandine', 'ISIE', '3'), 
(00000001, 'LEMOINE', 'François', 'ISIE', '3'),
(00000002, 'YEPEZ', 'Marie', 'ISIE', '3'),
(00000003, 'NOM', 'Mallory', 'DI', '5'),
(00000004, 'DUPONT', 'Louis', 'DI', '4'),
(00000005, 'DURAND', 'Armand', 'DI', '3'), 
(00000006, 'FRANCAIS', 'François', 'DI', '4');