TRUNCATE TABLE TBL_MEMBER;

CREATE SEQUENCE MEMBERSEQ
NOCACHE;



INSERT INTO TBL_MEMBER(SID,NAME,TEL) VALUES(MEMBERSEQ.NEXTVAL, '최은상','010-1111-1111');

--○ 인원 수 확인 쿼리문 구성
SELECT COUNT(*) AS COUNT
FROM TBL_MEMBER;

--○ 한 줄 구성
SELECT COUNT(*) AS COUNT FROM TBL_MEMBER
;

--○ 전체 지르스 조회 쿼리문 구성
SELECT SID, NAME, TEL
FROM TBL_MEMBER
ORDER BY SID;

--○ 한 줄 구성
SELECT SID, NAME, TEL FROM TBL_MEMBER ORDER BY SID
;


select *
from tbl_member;

delete
from tbl_member;
