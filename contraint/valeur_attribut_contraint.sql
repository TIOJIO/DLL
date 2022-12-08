ALTER TABLE VALEUR_ATTRIBUT ADD PRIMARY KEY (ID_VALEUR_ATTRIBUT);

ALTER TABLE VALEUR_ATTRIBUT ADD FOREIGN KEY (ID_SERVICE) REFERENCES SERVICES(ID_SERVICE);

ALTER TABLE VALEUR_ATTRIBUT ADD FOREIGN KEY (ID_TYPE_LINGE) REFERENCES TYPE_LINGE(ID_TYPE_LINGE);

ALTER TABLE VALEUR_ATTRIBUT ADD FOREIGN KEY (ID_ATTRIBUT) REFERENCES ATTRIBUT(ID_ATTRIBUT);