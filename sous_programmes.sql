--connect csi3/csi3@localhost:1521/xepdb1;

CREATE OR REPLACE FUNCTION inscription(
    v_id_utilisateur utilisateur.id_utilisateur%type,
    v_nom_utilisateur utilisateur.nom_utilisateur%type,
    v_mot_passe utilisateur.mot_passe%type,
    v_nom utilisateur.nom%type,
    v_prenom utilisateur.prenom%type,
    v_email utilisateur.email%type
) RETURN CHAR IS
    var_id_utilisateur utilisateur.id_utilisateur%type;
BEGIN
    SELECT
        id_utilisateur INTO var_id_utilisateur
    FROM
        utilisateur
    WHERE
        nom_utilisateur=v_nom_utilisateur;
    RETURN '0';
EXCEPTION
    WHEN no_data_found THEN
        INSERT INTO utilisateur(
            id_utilisateur,
            nom_utilisateur,
            mot_passe,
            nom,
            prenom,
            email
        ) VALUES(
            v_id_utilisateur,
            v_nom_utilisateur,
            v_mot_passe,
            v_nom,
            v_prenom,
            v_email
        );
        RETURN '1';
END;
/

CREATE OR REPLACE FUNCTION connexion(
    v_nom_utilisateur utilisateur.nom_utilisateur%type,
    v_mot_passe utilisateur.mot_passe%type
) RETURN NUMBER IS
    var_id_utilisateur utilisateur.id_utilisateur%type;
BEGIN
    SELECT
        id_utilisateur INTO var_id_utilisateur
    FROM
        utilisateur
    WHERE
        nom_utilisateur=v_nom_utilisateur
        AND mot_passe=v_mot_passe;
    RETURN var_id_utilisateur;
EXCEPTION
    WHEN no_data_found THEN
        RETURN 0;
END;
/

CREATE OR REPLACE PROCEDURE create_session(
    utilisateur_seq_id utilisateur.id_utilisateur%type
) IS
    v_id_session NUMBER(20);
BEGIN
    SELECT
        sys_context('userenv',
        'sessionid') session_id INTO v_id_session
    FROM
        dual;
    DELETE FROM sessions
    WHERE
        id_session_oracle=v_id_session;
    INSERT INTO sessions(
        id_session,
        id_session_oracle,
        id_utilisateur
    ) VALUES(
        sessions_sequence.NEXTVAL,
        v_id_session,
        utilisateur_seq_id
    );
END;
/