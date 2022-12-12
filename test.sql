connect csi3/csi3@localhost:1521/xepdb1;

/*SELECT
    sys_context('USERENV',
    'CURRENT_USER')
FROM
    dual;
   

GRANT ALL PRIVILEGES TO SYSTEM;
 */
/*
SELECT
    *
FROM
    all_users;
    */

--ALTER SESSION SET "_ORACLE_SCRIPT"=true;


--create user csi3 IDENTIFIED by csi3;
/*SELECT
    *
FROM
    ALL_USERS;
    */



--GRANT ALL PRIVILEGES TO CSI3;
--DEFINE A=&A;

--ACCEPT V PROMPT 'Entrez mot de passe ' HIDE;

--PRINT V;
--DROP USER CSI3;

--connect csi3/csi3@localhost:1521/xepdb1;

/*
CREATE OR REPLACE PROCEDURE TEST(
    NOM UTILISATEUR.NOM_UTILISATEUR%TYPE
) IS
    PARAMETRE VARCHAR2( 30 );
    STATUS    INTEGER;
    I         VARCHAR2(30);
BEGIN
    DBMS_OUTPUT.PUT_LINE('TML a trouvé');
 --DBMS_INPUT.GET_LINE(PARAMETRE, STATUS);
    DBMS_OUTPUT.PUT_LINE(PARAMETRE);
    DBMS_OUTPUT.PUT_LINE(STATUS);
END;
/

EXECUTE TEST('20');

*/
/*
SELECT
    *
FROM
    UTILISATEUR;

    */

/*
SELECT
    sys_context('userenv',
    'sessionid') session_id
FROM
    dual;
*/
SET verify off

--SET echo off
/*
SELECT
    *
FROM
    sessions;
*/
/*
DECLARE
    v_id_session     NUMBER(20);
    v_id_utilisateur sessions.id_utilisateur%type;
BEGIN
    SELECT
        sys_context('userenv',
        'sessionid') session_id INTO v_id_session
    FROM
        dual;
    dbms_output.put_line('value id session '
        ||v_id_session);
END;
/
*/

/*DELETE FROM sessions

WHERE
    id_session_oracle=124;

*/

SELECT
    *
FROM
    sessions;

SELECT
    *
FROM
    utilisateur;

--execute create_session(7);
/*
SELECT
    sys_context('userenv',
    'sessionid') session_id
FROM
    dual;
    

CREATE PRESSING (
    NOM_PRESSING,
    ID_PRESSIN
)
*/

/*INSERT INTO pressing(
    id_pressing,
    nom_pressing,
    localisation
) VALUES(
    pressing_sequence.NEXTVAL,
    'Super clean',
    'Mbouda'
);

*/



--select user_name from