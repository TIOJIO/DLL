CREATE TABLE ROLES (
  ID_ROLE NUMBER(10) NOT NULL,
  ID_PRESSING NUMBER(10) NOT NULL,
  NOM_ROLE VARCHAR2(255) NOT NULL
);

COMMENT ON TABLE ROLES IS 'Le status que peut avoir un adminstrateur de pressing associés a des privilèges.';