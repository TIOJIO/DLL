ALTER TABLE privilege ADD PRIMARY KEY (id_privilege);

ALTER TABLE privilege ADD FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur);