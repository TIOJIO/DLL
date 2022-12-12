CREATE TABLE privilege_roles(
    id_privilege NUMBER(10) NOT NULL,
    id_role NUMBER (10) NOT NULL
);

COMMENT ON TABLE privilege_roles IS 'table association entre la table privilege et la table roles';