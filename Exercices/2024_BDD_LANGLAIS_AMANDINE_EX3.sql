-- Requêtes de Jointure

SELECT DISTINCT nom_utilisateur, prenom_utilisateur FROM utilisateur
JOIN reservation ON utilisateur.numero_etudiant = reservation.numero_etudiant
GROUP BY utilisateur.nom, utilisateur.prénom, utilisateur.id_utilisateur
HAVING COUNT(reservation.id_reservation) = 1;

SELECT nom_materiel, type_materiel, quantite, description_materiel FROM materiel
JOIN reservation ON materiel.id_materiel = reservation.id_materiel 
WHERE numero_etudiant = 00000001;


