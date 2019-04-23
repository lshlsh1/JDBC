SELECT USER
FROM DUAL;
--==>>SCOTT

DROP TABLE TBL_MEMBER;

--�� �ǽ� ���̺� ����
CREATE TABLE TBL_MEMBER
( SID NUMBER
, NAME  VARCHAR2(30)
, TEL   VARCHAR2(60)
, CONSTRAINT MEMBER_SID_PK PRIMARY KEY(SID)
);

--�� ���� ������ �Է�
INSERT INTO TBL_MEMBER(SID, NAME, TEL) VALUES(1, '������', '010-1111-1111');

--�� Ȯ��
SELECT *
FROM TBL_MEMBER;

--�� Ŀ��
COMMIT;
--==>>Ŀ�� �Ϸ�.

--==>> �⿡�� Test002Ŭ���� ���� �� �ٽ� Ȯ��
SELECT *
FROM TBL_MEMBER;
--==>>
/*
1	������	010-1111-1111
2	������	010-2222-2222*/


--�� �Է� ������ ����
INSERT INTO TBL_MEMBER(SID, NAME, TEL) VALUES(3, '�̱��', '010-3333-3333')
;

SELECT *
FROM TBL_MEMBER;
--==>>
/*
1	������	010-1111-1111
2	������	010-2222-2222
3	�̱��	010-3333-3333
4	�������Ѿ�	010-4444-4444
*/











