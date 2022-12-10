CREATE TABLE PRIVILEGE_ROLES(
    ID_PRIVILEGE NUMBER(10) NOT NULL,
    ID_ROLE NUMBER (10) NOT NULL
);

COMMENT ON TABLE PRIVILEGE_ROLES IS 'table association entre la table privilege et la table roles';