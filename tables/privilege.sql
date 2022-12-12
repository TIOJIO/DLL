CREATE TABLE privilege (
  id_privilege NUMBER(10) NOT NULL,
  nom_privilege VARCHAR2(255) NOT NULL,
  id_utilisateur NUMBER(10) NOT NULL,
  id_role NUMBER(10) NOT NULL
);

COMMENT ON TABLE privilege IS 'table qui contient les privilèges des utilisateurs.';