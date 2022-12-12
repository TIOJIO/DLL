CREATE TABLE services (
  id_service NUMBER(10) NOT NULL,
  nom_service VARCHAR2(255) NOT NULL,
  description_service VARCHAR2(255) NOT NULL,
  id_pressing NUMBER(10) NOT NULL,
  id_type_service NUMBER(10)
);

COMMENT ON TABLE services IS 'Les services du pressing';