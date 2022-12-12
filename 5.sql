SET echo off

SET verify off

prompt *********** la liste des pressings ******************************

accept nom_pressing prompt 'Entrez le nom du pressing ou laissez vide pour tout retounez les pressing'

DECLARE
    CURSOR cursor_pressing(v_nom_pressing pressing.nom_pressing%type ) IS
        SELECT
            *
        FROM
            pressing
        WHERE
            nom_pressing LIKE '%'
                ||v_nom_pressing
                ||'%';
    i NUMBER(10):=0;
BEGIN
    FOR pressing_record IN cursor_pressing('&nom_pressing') LOOP
        i:=i+1;
        dbms_output.put_line('Nom  du pressing: '
            ||pressing_record.nom_pressing);
        dbms_output.put_line('Localisation: '
            ||pressing_record.localisation);
        dbms_output.put_line('');
    END LOOP;
    IF i=0 THEN
        dbms_output.put_line('    0 Pressing existant    ');
    END IF;
END;
/

@menu