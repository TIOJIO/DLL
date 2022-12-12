ALTER TABLE roles ADD PRIMARY KEY (id_role);

ALTER TABLE roles ADD FOREIGN KEY (id_pressing) REFERENCES pressing(id_pressing);