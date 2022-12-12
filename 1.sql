prompt ******************* remplissez le formulaire *************************************;

accept nom_utilisateur prompt 'Entrez votre nom utilisateur *'

accept mot_passe prompt 'Entrez votre mot de passe ' hide

DECLARE
    v_id_utilisateur utilisateur.id_utilisateur%type;
BEGIN
    v_id_utilisateur:=connexion('&nom_utilisateur', '&mot_passe');
    IF v_id_utilisateur !=0 THEN
        dbms_output.put_line('connexion réussie');
        create_session(v_id_utilisateur);
    ELSE
        dbms_output.put_line('nom utilisateur et/ou mot de passe incorrect');
    END IF;
END;
/

@menu