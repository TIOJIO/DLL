CREATE TABLE privilege_utilisateur(
    id_privilege NUMBER(10) NOT NULL,
    id_utilisateur NUMBER (10) NOT NULL
);

COMMENT ON TABLE privilege_utilisateur IS 'table association entre la table privilege et la table utilisateur';