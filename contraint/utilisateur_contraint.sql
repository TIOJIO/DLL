ALTER TABLE UTILISATEUR ADD PRIMARY KEY (ID_UTILISATEUR);

ALTER TABLE UTILISATEUR ADD FOREIGN KEY (ID_PRESSING) REFERENCES PRESSING(ID_PRESSING);