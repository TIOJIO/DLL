ALTER TABLE annonces ADD PRIMARY KEY (id_annonce);

ALTER TABLE annonces ADD FOREIGN KEY (id_pressing) REFERENCES pressing(id_pressing);