
ALTER TABLE privilege
ADD PRIMARY KEY (id_privilege);


ALTER TABLE privilege
ADD FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur); 

ALTER TABLE privilege
ADD FOREIGN KEY (id_pressing) REFERENCES pressing(id_pressing); 
