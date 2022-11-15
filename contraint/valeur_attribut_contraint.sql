
ALTER TABLE valeur_attribut
ADD PRIMARY KEY (id_valeur_attribut);


ALTER TABLE valeur_attribut
ADD FOREIGN KEY (id_service) REFERENCES services(id_service); 

ALTER TABLE valeur_attribut
ADD FOREIGN KEY (id_type_linge) REFERENCES type_linge(id_type_linge); 

ALTER TABLE valeur_attribut
ADD FOREIGN KEY (id_attribut) REFERENCES attribut(id_attribut); 
