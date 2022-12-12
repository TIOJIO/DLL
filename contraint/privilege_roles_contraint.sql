ALTER TABLE privilege_roles ADD PRIMARY KEY (id_privilege, id_role);

ALTER TABLE privilege_roles ADD FOREIGN KEY (id_privilege) REFERENCES privilege (id_privilege);

ALTER TABLE privilege_roles ADD FOREIGN KEY(id_role) REFERENCES roles(id_role);