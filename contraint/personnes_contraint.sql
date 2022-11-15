
ALTER TABLE personnes
ADD PRIMARY KEY (id_personne);


ALTER TABLE personnes
ADD FOREIGN KEY (id_client) REFERENCES clients(id_client); 

