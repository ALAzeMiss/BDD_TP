
# Ajout de la table disponibilité

CREATE TABLE Disponibilite (
	id_disponibilite INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_debut VARCHAR(255),
    date_fin VARCHAR(255),
    id_materiel INT NOT NULL,
    FOREIGN KEY (id_materiel) REFERENCES Materiel(id_materiel)
);

ALTER TABLE Reservation 
ADD COLUMN id_disponibilite;

ALTER TABLE Reservation 
ADD CONSTRAINT id_disponibilite
FOREIGN KEY (id_disponibilite) REFERENCES Disponibilite(id_disponibilite)
ON DELETE CASCADE;