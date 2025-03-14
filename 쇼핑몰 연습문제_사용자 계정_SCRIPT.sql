ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

CREATE USER kh_shop IDENTIFIED BY 1234;
GRANT CREATE SESSION TO kh_shop;

GRANT CREATE TABLE TO kh_shop;

ALTER USER kh_shop DEFAULT
TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;
