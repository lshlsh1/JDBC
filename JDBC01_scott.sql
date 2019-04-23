SELECT USER
FROM DUAL;
--==>>SCOTT

DROP TABLE TBL_MEMBER;

--○ 실습 테이블 생성
CREATE TABLE TBL_MEMBER
( SID NUMBER
, NAME  VARCHAR2(30)
, TEL   VARCHAR2(60)
, CONSTRAINT MEMBER_SID_PK PRIMARY KEY(SID)
);

--○ 샘플 데이터 입력
INSERT INTO TBL_MEMBER(SID, NAME, TEL) VALUES(1, '조수연', '010-1111-1111');

--○ 확인
SELECT *
FROM TBL_MEMBER;

--○ 커밋
COMMIT;
--==>>커밋 완료.

--==>> 잡에서 Test002클래스 실행 후 다시 확인
SELECT *
FROM TBL_MEMBER;
--==>>
/*
1	조수연	010-1111-1111
2	이지혜	010-2222-2222*/


--○ 입력 쿼리문 구성
INSERT INTO TBL_MEMBER(SID, NAME, TEL) VALUES(3, '이기승', '010-3333-3333')
;

SELECT *
FROM TBL_MEMBER;
--==>>
/*
1	조수연	010-1111-1111
2	이지혜	010-2222-2222
3	이기승	010-3333-3333
4	ㄱㄱ곽한얼	010-4444-4444
*/











