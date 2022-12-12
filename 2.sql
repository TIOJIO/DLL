SET echo off

SET verify off

SET serveroutput on

prompt remplissez le formulaire;

accept nom_utilisateur char prompt 'Entrez votre nom utilisateur *'

/*

ACCEPT MOT_PASSE CHAR PROMPT 'Entrez votre mot de passe *' HIDE

ACCEPT NOM CHAR PROMPT 'Entrez votre nom'

ACCEPT PRENOM CHAR PROMPT 'Entrez votre Prenom'

ACCEPT EMAIL CHAR PROMPT 'Entrez votre email'
*/
variable

DECLARE
    status             CHAR(1);
    utilisateur_seq_id NUMBER(20);
BEGIN
 --STATUS:= INSCRIPTION(UTILISATEUR_SEQUENCE.NEXTVAL, '&NOM_UTILISATEUR', '&MOT_PASSE', '&NOM', '&PRENOM', '&EMAIL');
    utilisateur_seq_id:=utilisateur_sequence.nextval;
    status:= inscription(utilisateur_seq_id, '&NOM_UTILISATEUR', 'tml', 'tml', 'tml', 'tml');
    IF status='1' THEN
        dbms_output.put_line('Utilisateur crée avec succes');
        create_session(utilisateur_seq_id);
    ELSE
        dbms_output.put_line( 'Ce nom  utilisateur existe déja' );
    END IF;
END;
/

COMMIT;

print session_id_utilisateur select sys_context('userenv', 'sessionid') session_id from dual;

@menu;