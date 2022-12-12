CREATE TABLE annonces (
  id_annonce NUMBER(10) NOT NULL,
  description_annonce VARCHAR2(255) NOT NULL,
  id_pressing NUMBER(10) NOT NULL
);

COMMENT ON TABLE annonces IS 'Les annonces du pressing';