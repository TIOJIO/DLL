CREATE TABLE besoin_client (
  id_besoin_client NUMBER(10) NOT NULL,
  nom_besoin_client VARCHAR2(255) NOT NULL,
  description_besoin_client VARCHAR2(255) NOT NULL,
  id_utilisateur NUMBER(10) NULL,
  id_type_linge NUMBER(10) NOT NULL,
  id_adresse NUMBER(10) NOT NULL,
  id_client NUMBER(10) NOT NULL
);

COMMENT ON TABLE besoin_client IS 'les besoins des clients.';