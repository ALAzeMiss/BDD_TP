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

### Liaison

Une Réservation est liée à un Utilisateur et à un Matériel.
Un Utilisateur peut avoir autant de Réservation qu'il le souhaite.
Une Matériel peut être emprunter dans autant de Réservation que nécessaire mais il ne peut y avoir qu'un matériel par réservation.

## MCD
![MCD](/Data/MCD.png "MCD")


## MLD
![MLD](/Data/MLD.png "MLD")
