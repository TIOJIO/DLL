
ALTER TABLE roles
ADD PRIMARY KEY (id_role);


ALTER TABLE roles
ADD FOREIGN KEY (id_pressing) REFERENCES pressing(id_pressing); 

ALTER TABLE roles
ADD FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur); 
