-- 한 줄 주석

/*
 * 범위 주석
 * 
 */

-- 선택한 SQL 수행 : 구문에 커서 두고 Ctrl + Enter
-- 전체 SQL 수행 : 전체 구문을 활성화(Alt + a) 시킨 채로 Alt + X

-- 12c 버전 이전 문법 허용 구문
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- 계정 생성 구문(username : kh / password : kh1234)
CREATE USER workbook IDENTIFIED BY workbook;
CREATE USER kh_shop IDENTIFIED BY kh_shop;

GRANT RESOURCE, CONNECT TO kh_shop;
-- 사용자 계정 권한 부여 설정
-- RESOURCE : 테이블이나 인덱스 같은 DB 객체를 생성할 권한
-- CONNECT : DB에 연결하고 로그인 할 수 있는 권한

ALTER USER kh_shop DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM ;
-- 객체가 생성될 수 있는 공간 할당량 무제한 지정