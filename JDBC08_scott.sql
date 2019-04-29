SELECT *
FROM TBL_MEMBER
ORDER BY 1;

--○ CallableStatement 실습을 위한 프로시저 작성
--   프로시저 명 : PRC_MEMBERINSERT
--   프로시저 기능 : TBL_MEMBER 테이블에 데이터를 입력하는 프로시저
CREATE OR REPLACE PROCEDURE PRC_MEMBERINSERT
( VNAME     IN TBL_MEMBER.NAME%TYPE
, VTEL      IN TBL_MEMBER.TEL%TYPE
)
IS
    VSID    TBL_MEMBER.SID%TYPE;
BEGIN

    -- 기존 SID의 최대값 얻어오기
    SELECT NVL(MAX(SID),0) INTO VSID
    FROM TBL_MEMBER;
    
    -- 데이터 입력
    INSERT INTO TBL_MEMBER(SID, NAME, TEL)
    VALUES((VSID+1), VNAME, VTEL);
    
    -- 커밋
    COMMIT;
END;
--==>>Procedure PRC_MEMBERINSERT이(가) 컴파일되었습니다.

--○생성된 프로시저 테스트
EXEC PRC_MEMBERINSERT('유진석','010-1111-2222');
--==>>PL/SQL 프로시저가 성공적으로 완료되었습니다.

--○ 테이블 조회
SELECT *
FROM TBL_MEMBER
ORDER BY SID;



--○ CallableStatement 실습을 위한 프로시저 작성
--   프로시저 명 : PRC_MEMBERSELECT
--   프로시저 기능 : TBL_MEMBER 테이블의 데이터를 읽어오는 프로시저
--   ※ 『SYS_REFCURSOR』자료형을 이용하여 커서 다루기
CREATE OR REPLACE PROCEDURE PRC_MEMBERSELECT
( VRESULT   OUT SYS_REFCURSOR 
)
IS
BEGIN
    OPEN VRESULT FOR    --담기
        SELECT SID, NAME, TEL
        FROM TBL_MEMBER
        ORDER BY SID;
    --CLOSE VRESULT;(X)
    --클로즈하면 처리결과를 넘겨주지 못함    
END;
--==>>Procedure PRC_MEMBERSELECT이(가) 컴파일되었습니다.












