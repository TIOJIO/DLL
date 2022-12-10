CREATE TABLE BESOIN_CLIENT (
  ID_BESOIN_CLIENT NUMBER(10) NOT NULL,
  NOM_BESOIN_CLIENT VARCHAR2(255) NOT NULL,
  DESCRIPTION_BESOIN_CLIENT VARCHAR2(255) NOT NULL,
  ID_UTILISATEUR NUMBER(10) NULL,
  ID_TYPE_LINGE NUMBER(10) NOT NULL,
  ID_ADRESSE NUMBER(10) NOT NULL,
  ID_CLIENT NUMBER(10) NOT NULL
);

COMMENT ON TABLE BESOIN_CLIENT IS 'les besoins des clients.';