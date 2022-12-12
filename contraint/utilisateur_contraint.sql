ALTER TABLE utilisateur ADD PRIMARY KEY (id_utilisateur);

ALTER TABLE utilisateur ADD FOREIGN KEY (id_pressing) REFERENCES pressing(id_pressing);