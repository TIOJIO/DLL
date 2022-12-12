CREATE TABLE pressing (
  id_pressing NUMBER(10) NOT NULL,
  nom_pressing VARCHAR2(255) NOT NULL,
  localisation VARCHAR2(255) NOT NULL
);

COMMENT ON TABLE pressing IS 'Table qui contient les informations du pressing créé.';