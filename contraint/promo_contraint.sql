ALTER TABLE promo ADD PRIMARY KEY (id_promo);

ALTER TABLE promo ADD FOREIGN KEY (id_type_linge) REFERENCES type_linge(id_type_linge);

ALTER TABLE promo ADD FOREIGN KEY (id_service) REFERENCES services(id_service);