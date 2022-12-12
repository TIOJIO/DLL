CREATE TABLE clients (
  id_client NUMBER(10) NOT NULL,
  nom_client VARCHAR2(255) NOT NULL,
  telephone_client NUMBER(10) NOT NULL
);

COMMENT ON TABLE clients IS 'Les potentiels clients de agences de pressing.';