-- Ecrivez une requête permettant de supprimer les plats non actif de la base de données

DELETE FROM plat
WHERE active = 'No'

-- Ecrivez une requête permettant de supprimer les commandes avec le statut livré

DELETE FROM commande
WHERE etat = 'Livrée'

-- Ecrivez un script sql permettant d'ajouter une nouvelle catégorie et un plat dans cette nouvelle catégorie

INSERT INTO categorie (libelle, image, active) VALUES ('Japanese Food', 'japanese_cat.jpg', 'No')
INSERT INTO plat (libelle, description, prix, image, id_categorie, active) VALUES ('Cashu Ramen', 'Nouilles japonaises dans un bouillon de porc et de légumes', 10.00, 'ramen.jpg', 28, 'No')

-- Ecrivez une requête permettant d'augmenter de 10% le prix des plats de la catégorie 'Pizza'

UPDATE plat SET prix = prix + ((prix * 10)/100) WHERE id_categorie = 4


