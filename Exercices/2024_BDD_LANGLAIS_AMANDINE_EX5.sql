-- Mettre à jour des données quand on a une réservation (sur une seule réservation)

UPDATE Materiel
SET quantite = quantite - 1
WHERE id_materiel IN (
    SELECT id_materiel
    FROM reservation
    WHERE id_reservation = 1
);

