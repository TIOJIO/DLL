CREATE TABLE roles (
  id_role NUMBER(10) NOT NULL,
  id_pressing NUMBER(10) NOT NULL,
  nom_role VARCHAR2(255) NOT NULL
);

COMMENT ON TABLE roles IS 'Le status que peut avoir un adminstrateur de pressing associés a des privilèges.';