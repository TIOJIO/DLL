ALTER TABLE sessions ADD PRIMARY KEY (id_session);

ALTER TABLE sessions ADD CONSTRAINT fk_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES utilisateur (id_utilisateur);