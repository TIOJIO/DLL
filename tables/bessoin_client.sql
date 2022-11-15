CREATE TABLE `besoin_client` (
  `id_besoin_client` int(10) NOT NULL,
  `nom_besoin_client` varchar(255) NOT NULL,
  `description_besoin_client` varchar(255) NOT NULL,
  `id_utilisateur` int(10) NOT NULL,
  `id_type_linge` int(10) NOT NULL,
  `id_adresse` int(10) NOT NULL,
  `id_client` int(10) NOT NULL
);