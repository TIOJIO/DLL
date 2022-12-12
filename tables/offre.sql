CREATE TABLE offre (
  id_offre NUMBER(10) NOT NULL,
  id_service NUMBER(10) NOT NULL,
  id_type_linge NUMBER(10) NOT NULL,
  description_offre VARCHAR2(255) NOT NULL,
  prix NUMBER(10) NOT NULL,
  quantite NUMBER(10) NOT NULL
);

COMMENT ON TABLE offre IS 'Les offres du pressings.';