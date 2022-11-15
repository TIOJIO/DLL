

ALTER TABLE ressources_physiques
ADD PRIMARY KEY (id_ressource);


ALTER TABLE ressources_physiques
ADD FOREIGN KEY (id_client) REFERENCES clients(id_client); 

