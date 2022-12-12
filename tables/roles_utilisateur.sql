CREATE TABLE roles_utilisateur(
    id_role NUMBER (10) NOT NULL,
    id_utilisateur NUMBER(10) NOT NULL
);

COMMENT ON TABLE roles_utilisateur IS 'table association entre  table roles et la table utilisateur';