# Analyse des besoins

### Entités principales
Utilisateur
Matériel
Réservation

### Attributs nécessaires
#### Utilisateur 
numéro_étudiant,
nom_utilisateur,
prénom_utilisateur,
département,
année

#### Matériel
id_matériel,
nom_matériel,
type_matériel,
quantité,
description

#### Réservation
id_réservation,
date_début,
date_fin

## MCD
![MCD](/Data/MCD.png "MCD").


## MLD
![MLD](/Data/MLD.png "MLD").


-- ce numéro étudiant est unique 
-- Pour faciliter la recherche de la personne 
-- département d'enseignement dans l'école d'ingénieur
-- année d'étude de l'étudiant