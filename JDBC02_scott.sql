TRUNCATE TABLE TBL_MEMBER;

CREATE SEQUENCE MEMBERSEQ
NOCACHE;



INSERT INTO TBL_MEMBER(SID,NAME,TEL) VALUES(MEMBERSEQ.NEXTVAL, '������','010-1111-1111');

--�� �ο� �� Ȯ�� ������ ����
SELECT COUNT(*) AS COUNT
FROM TBL_MEMBER;

--�� �� �� ����
SELECT COUNT(*) AS COUNT FROM TBL_MEMBER
;

--�� ��ü ������ ��ȸ ������ ����
SELECT SID, NAME, TEL
FROM TBL_MEMBER
ORDER BY SID;

--�� �� �� ����
SELECT SID, NAME, TEL FROM TBL_MEMBER ORDER BY SID
;


select *
from tbl_member;

delete
from tbl_member;
