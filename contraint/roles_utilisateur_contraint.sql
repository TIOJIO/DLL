ALTER TABLE ROLES_UTILISATEUR ADD PRIMARY KEY (ID_ROLE, ID_UTILISATEUR);

ALTER TABLE ROLES_UTILISATEUR ADD FOREIGN KEY (ID_ROLE) REFERENCES ROLES (ID_ROLE);

ALTER TABLE ROLES_UTILISATEUR ADD FOREIGN KEY(ID_UTILISATEUR) REFERENCES UTILISATEUR(ID_UTILISATEUR);