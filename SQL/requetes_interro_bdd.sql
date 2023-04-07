-- Afficher la liste des commandes ( la liste doit faire apparaitre la date, les informations du client, le plat et le prix )

SELECT libelle, prix, nom_client, telephone_client, adresse_client, date_commande
FROM plat
JOIN commande ON plat.id = commande.id_plat

------------------------------------------------------------------------------------------------------------------------------

-- Afficher la liste des plats en spécifiant la catégorie

SELECT plat.libelle, categorie.libelle
FROM categorie
JOIN plat ON categorie.id = plat.id_categorie

------------------------------------------------------------------------------------------------------------------------------

-- Afficher les catégories et le nombre de plats actifs dans chaque catégorie

SELECT categorie.libelle, COUNT(plat.id)
FROM categorie
JOIN plat ON categorie.id = plat.id_categorie
GROUP BY categorie.id

------------------------------------------------------------------------------------------------------------------------------

-- Liste des plats les plus vendu par ordre décroissant

SELECT plat.libelle, SUM(quantite) Qte_vendue, total
FROM plat
JOIN commande ON plat.id = commande.id_plat
GROUP BY id_plat
ORDER BY Qte_vendue DESC

-------------------------------------------------------------------------------------------------------------------------------

-- Le plat le plus rémunérateur

SELECT plat.libelle, plat.prix, SUM(quantite) Qte_vendue, (plat.prix*SUM(quantite)) total$_ventes
FROM plat
JOIN commande ON plat.id = commande.id_plat
GROUP BY id_plat
ORDER BY total$_ventes DESC LIMIT 1

-- Liste des clients et le chiffre d'affaire généré par client (ordre décroissant)

SELECT nom_client, total
FROM commande
ORDER BY total DESC