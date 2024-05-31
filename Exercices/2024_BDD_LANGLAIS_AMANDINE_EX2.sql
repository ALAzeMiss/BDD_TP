-- Requêtes de Sélection 

USE réservation_manager;

SELECT prenom_utilisateur, nom_utilisateur FROM utilisateur 
WHERE departement = "ISIE" 
AND annee = "3" ;

SELECT * FROM materiel
WHERE quantite < 10;

SELECT id_reservation FROM reservation
WHERE date_debut LIKE "2024%";	