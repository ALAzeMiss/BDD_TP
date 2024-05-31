-- Requêtes d'agrégation (compter le nombre d'élément de la sélection)

SELECT COUNT(*) FROM reservation
WHERE date_debut > "2024-01-01T-00:00+00" 
AND date_fin < "2024-07-01T-00:00+00";


SELECT COUNT(*) FROM utilisateur
JOIN reservation ON utilisateur.numero_etudiant = reservation.numero_etudiant;


