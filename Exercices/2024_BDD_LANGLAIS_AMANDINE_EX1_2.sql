-- Création de la table Materiel

CREATE TABLE Materiel (
	id_materiel INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- identifiant du matériel
    nom_materiel VARCHAR(255),									-- nom pour identifier du matériel
    type_materiel VARCHAR(255),									-- type de matériel 
    quantite INTEGER,											-- nombre d'unité de ce matériel
    description_materiel VARCHAR(255)							-- description d'utilisation ou autre
);

INSERT INTO Materiel (nom_materiel, type_materiel, quantite, description_materiel) VALUES 
('ordinateur', 'informatique', '10', "prêt d'ordinateur pour des cours ou pour les étudiants en déplacement"),
('clavier', 'informatique', '5', "pour des cours ou pour les étudiants en déplacement"),
('souris', 'informatique', '10', "pour des cours ou pour les étudiants en déplacement"),
('cable HDMI', 'informatique', '20', "pour brancher son ordinateur à un écran ou vidéo projecteur"),
('écran', 'informatique', '2', "écran pour travailler"),
('poste soudeur', 'électronique', '2', "pour travailler sur des projets école"),
('breadboard', 'électronique', '5', "pour travailler sur des projets école"),
('composants électrique', 'électronique', '5', "lot de résistance, condensateur et cable"),
('tournevis', 'outils', '1', "matériel de bricolage classique");