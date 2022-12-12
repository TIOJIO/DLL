CREATE TABLE utilisateur (
  nom_utilisateur VARCHAR2(30) NOT NULL UNIQUE,
  mot_passe VARCHAR(50) NOT NULL,
  nom VARCHAR2(30) NOT NULL,
  prenom VARCHAR2(30) NOT NULL,
  email VARCHAR2(255) NOT NULL,
  id_pressing NUMBER(10) UNIQUE,
  id_utilisateur NUMBER(10) NOT NULL
);

COMMENT ON TABLE utilisateur IS 'Les utilisateurs de la plateforme, les clients et/ou les responsable de pressings';