connect csi3/csi3@localhost:1521/xepdb1;

CREATE OR REPLACE CONTEXT sys_context CSI3 USING pkg_common;

CREATE OR REPLACE PACKAGE pkg_common IS
    common_ctx_name CONSTANT VARCHAR2 (60) := system_context ('userenv', 'current_schema')
        || '_ctx';
    FUNCTION fcn_get_context_name RETURN VARCHAR2;
    PROCEDURE prc_set_context_value (
        var_name VARCHAR2,
        var_value NUMBER
    );
END;
create          OR REPLACE PACKAGE BODY pkg_common IS
    FUNCTION fcn_get_context_name RETURN VARCHAR2 IS
    BEGIN
        RETURN common_ctx_name;
END;
PROCEDURE prc_set_context_value (
    var_name VARCHAR2,
    var_value NUMBER
) IS
BEGIN
    dbms_session.set_context (common_ctx_name, var_name, var_value);
END;
END;