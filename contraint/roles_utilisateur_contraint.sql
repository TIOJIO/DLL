ALTER TABLE roles_utilisateur ADD PRIMARY KEY (id_role, id_utilisateur);

ALTER TABLE roles_utilisateur ADD FOREIGN KEY (id_role) REFERENCES roles (id_role);

ALTER TABLE roles_utilisateur ADD FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur);