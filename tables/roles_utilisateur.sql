CREATE TABLE ROLES_UTILISATEUR(
    ID_ROLE NUMBER (10) NOT NULL,
    ID_UTILISATEUR NUMBER(10) NOT NULL
);

COMMENT ON TABLE ROLES_UTILISATEUR IS 'table association entre  table roles et la table utilisateur';