--connect csi3/csi3@localhost:1521/xepdb1;

SET verify off

SET echo off

SELECT
    sys_context('userenv',
    'sessionid') session_id
FROM
    dual;

DECLARE
    v_id_session     NUMBER(20):=223;
    v_id_utilisateur sessions.id_utilisateur%type;
BEGIN
    dbms_output.put_line('---------------------Pressing    PLSQ   APP ----------------------------');
    SELECT
        sys_context('userenv',
        'sessionid') session_id INTO v_id_session
    FROM
        dual;
    dbms_output.put_line('id session '
        ||v_id_session);
    dbms_output.put_line('value id session '
        ||v_id_session);
    SELECT
        id_utilisateur INTO v_id_utilisateur
    FROM
        sessions
    WHERE
        id_session_oracle=v_id_session;
    dbms_output.put_line('Vous etes connecte');
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Vous etes pas connecte');
END;
/

prompt '  1)  Connexion ';

prompt '  2)  Inscription ';

prompt '  3)  Consulter les offres ';

prompt '  4)  Consulter les annonces ';

prompt '  5)  Consulter les pressings ';

prompt '  99)  Precedent';

define tml='-';

accept choix prompt 'Entrez votre choix '

SET echo off

SELECT
    sys_context('userenv',
    'sessionid') session_id
FROM
    dual;

@'&CHOIX'