# Afficher tous les utilisateurs ayant emprunté au moins un équipement
SELECT DISTINCT nom_utilisateur, prenom_utilisateur, id_reservation FROM utilisateur
JOIN reservation ON utilisateur.numero_etudiant = reservation.numero_etudiant;

#afficher les équipement n'ayant jamais été empruntés
SELECT DISTINCT nom_materiel FROM materiel
WHERE id_materiel NOT IN (SELECT DISTINCT id_materiel FROM Reservation);

#afficher les équipement ayant été emprunter plus de 3 fois
SELECT Materiel.*, COUNT(Reservation.id_materiel) AS nbre_emprunt
FROM Materiel
JOIN Reservation ON Materiel.id_materiel = Reservation.id_materiel
GROUP BY Materiel.id_materiel
HAVING COUNT(Reservation.id_materiel) > 3;

#afficher le nombre d'emprunt pour chaque utilisateur
SELECT Utilisateur.nom_utilisateur, Utilisateur.prenom_utilisateur, COUNT(Reservation.id_reservation) AS nbre_emprunt
FROM Utilisateur
LEFT JOIN Reservation ON Utilisateur.numero_etudiant = Reservation.numero_etudiant
GROUP BY Utilisateur.numero_etudiant;


