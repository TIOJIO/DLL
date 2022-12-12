CREATE TABLE promo (
  id_service NUMBER(10) NOT NULL,
  id_type_linge NUMBER(10) NOT NULL,
  id_promo NUMBER(10) NOT NULL,
  dure_promo NUMBER(10) NOT NULL,
  description_promo VARCHAR2(255) NOT NULL
);

COMMENT ON TABLE promo IS 'Les promotions des articles';