--CONNECT csi3/csi3@LOCALHOST:1521/XEPDB1
--SET PAGESIZE 100;

SET linesize 500;

SET verify off;

SET echo off;

prompt ############### creation base de l'APPLICATION PRESSINGS ############################';

/*
accept mot_passe prompt 'ENTREZ LE MOT DE PASSE DE POUR NOUVEL UTILISATEUR CSI3' hide;

--ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

CREATE USER csi3 IDENTIFIED BY &MOT_PASSE;

GRANT ALL PRIVILEGES TO csi3;

connect csi3/&mot_passe@localhost:1521/xepdb1;
*/

prompt ###################### création des tables ###################################################

@./tables/adresse

@./tables/annonces

@./tables/besoin_client

@./tables/clients

@./tables/offre

@./tables/pressing

@./tables/privilege

@./tables/promo

@./tables/roles

@./tables/services

@./tables/type_linge

@./tables/type_service

@./tables/utilisateur

@./tables/privilege_roles

@./tables/privilege_utilisateur

@./tables/roles_utilisateur

@./tables/sessions

prompt ###################### création des contraintes ###################################################

@./contraint/pressing_contraint

@./contraint/roles_contraint

@./contraint/utilisateur_contraint

@./contraint/type_service_contraint

@./contraint/services_contraint

@./contraint/type_linge_contraint

@./contraint/roles_utilisateur_contraint

@./contraint/adresse_contraint

@./contraint/annonces_contraint

@./contraint/clients_contraint

@./contraint/besoin_client_contraint

@./contraint/offre_contraint

@./contraint/privilege_contraint

@./contraint/promo_contraint

@./contraint/privilege_roles_contraint

@./contraint/privilege_utilisateur_contraint

@./contraint/sessions_contraint

prompt ###################### creating sequences ###################################################

@./sequences/utilisateur_sequence

@./sequences/sessions_sequence

@./sequences/pressing_sequence