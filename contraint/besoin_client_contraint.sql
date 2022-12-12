ALTER TABLE besoin_client ADD PRIMARY KEY (id_besoin_client);

ALTER TABLE besoin_client ADD FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur);

ALTER TABLE besoin_client ADD FOREIGN KEY (id_type_linge) REFERENCES type_linge(id_type_linge);

ALTER TABLE besoin_client ADD FOREIGN KEY (id_adresse) REFERENCES adresse(id_adresse);

ALTER TABLE besoin_client ADD FOREIGN KEY (id_client) REFERENCES clients(id_client);