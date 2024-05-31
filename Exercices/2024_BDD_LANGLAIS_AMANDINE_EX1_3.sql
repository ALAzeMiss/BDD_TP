-- Création de la table Reservation

CREATE TABLE Reservation (
	id_reservation INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_debut VARCHAR(255),
    date_fin VARCHAR(255),
    numero_etudiant INT NOT NULL,
    id_materiel INT NOT NULL,
    FOREIGN KEY (numero_etudiant) REFERENCES Utilisateur(numero_etudiant),
    FOREIGN KEY (id_materiel) REFERENCES Materiel(id_materiel)
);

INSERT INTO Reservation (date_debut, date_fin, numero_etudiant, id_materiel) VALUES 
("2023-09-07T-15:50+00", "2023-09-20T-15:50+00", 22102396, 1),
("2024-01-07T-00:00+00", "2024-02-07T-00:00+00", 22102396, 2),
("2024-01-08T-15:50+00", "2024-01-17T-15:50+00", 00000001, 3),
("2023-01-07T-15:50+00", "2023-02-07T-00:00+00", 00000002, 4),
("2024-02-07T-15:50+00", "2024-03-07T-15:50+00", 00000003, 5);

