CREATE TABLE `offre` (
  `id_offre` int(10) NOT NULL,
  `id_service` int(10) NOT NULL,
  `id_type_linge` int(10) NOT NULL,
  `description_offre` varchar(255) NOT NULL,
  `prix` int(10) NOT NULL,
  `quantite` int(10) NOT NULL
);