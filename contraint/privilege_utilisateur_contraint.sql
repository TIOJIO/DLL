ALTER TABLE privilege_utilisateur ADD PRIMARY KEY (id_privilege, id_utilisateur);

ALTER TABLE privilege_utilisateur ADD FOREIGN KEY (id_privilege) REFERENCES privilege (id_privilege);

ALTER TABLE privilege_utilisateur ADD FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur);