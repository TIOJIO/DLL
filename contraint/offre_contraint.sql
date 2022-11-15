


ALTER TABLE offre
ADD PRIMARY KEY (id_offre);


ALTER TABLE offre
ADD FOREIGN KEY (id_service) REFERENCES services(id_service); 

ALTER TABLE offre
ADD FOREIGN KEY (id_type_linge) REFERENCES type_linge(id_type_linge); 
