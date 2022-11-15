--creation de l'utilisateur
 CFREATE USER csi3
     IDENTIFIED BY csi3  ACCOUNT UNLOCK;

GRANT connect , resource  TO csi3;
GRANT ALL PRIVILEGES TO csi3;

CONNECT csi3/csi3;


--connect sys AS sysdba

--connect SYS/SYS$2022 AS SYSDBA;

SET VERIFY OFF 
SET LINESIZE 900
SET PAGESIZE 100


--chemin run pour creation des table

@./tables/adresse
@./tables/annonces
@./tables/attribut
@./tables/besoin_client
@./tables/clients
@./tables/offre
@./tables/personnes
@./tables/pressing
@./tables/privilege
@./tables/promo
@./tables/ressources_physiques
@./tables/roles
@./tables/services
@./tables/type_linge
@./tables/type_service
@./tables/utilisateur
@./tables/valeur_attribut


--chemin run pour creation des contrainte

@./contraint/adresse_contraint
@./contraint/annonces_contraint
@./contraint/attribut_contraint
@./contraint/besoin_client_contraint
@./contraint/clients_contraint
@./contraint/offre_contraint
@./contraint/personnes_contraint
@./contraint/pressing_contraint
@./contraint/privilege_contraint
@./contraint/promo_contraint
@./contraint/resource_contraint
@./contraint/roles_contraint
@./contraint/services_contraint
@./contraint/type_linge_contraint
@./contraint/type_service_contraint
@./contraint/utilisateur_contraint
@./contraint/valeur_attribut_contraint




