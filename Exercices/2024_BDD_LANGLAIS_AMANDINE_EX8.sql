
# Ajout de la table disponibilité (1)

CREATE TABLE Disponibilite (
	id_disponibilite INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_debut VARCHAR(255),
    date_fin VARCHAR(255),
    id_materiel INT NOT NULL,
    FOREIGN KEY (id_materiel) REFERENCES Materiel(id_materiel)
);

# Ajout de la clé étrangère dans la table Reservation

ALTER TABLE Reservation 
ADD COLUMN id_disponibilite INT;

ALTER TABLE Reservation 
ADD CONSTRAINT id_disponibilite
FOREIGN KEY (id_disponibilite) REFERENCES Disponibilite(id_disponibilite);

DELIMITER //
CREATE TRIGGER Verif_dispo
BEFORE INSERT ON Reservation
FOR EACH ROW
BEGIN 
	DECLARE compte_dispo INT;
    SET compte_dispo = (
		SELECT COUNT(*)
		FROM Disponibilite
		WHERE id_materiel = NEW.id_materiel
		AND NEW.date_debut BETWEEN Reservation.date_debut AND Reservation.date_fin
		AND NEW.date_fin BETWEEN Reservation.date_debut AND Reservation.date_fin
	);
IF compte_dispo = 0 THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = " Le  matériel n'est pas disponible pendant cette période.";
END IF;
END//
    
    
    
    
		
