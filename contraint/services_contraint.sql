ALTER TABLE services ADD PRIMARY KEY (id_service);

ALTER TABLE services ADD FOREIGN KEY (id_pressing) REFERENCES pressing(id_pressing);

ALTER TABLE services ADD FOREIGN KEY (id_type_service) REFERENCES type_service(id_type_service);