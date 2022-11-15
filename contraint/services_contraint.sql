

ALTER TABLE services
ADD PRIMARY KEY (id_service);


ALTER TABLE services
ADD FOREIGN KEY (id_pressing) REFERENCES pressing(id_pressing); 
