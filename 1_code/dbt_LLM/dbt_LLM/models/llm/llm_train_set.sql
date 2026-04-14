-- 3. 질문 - 맥락 - 답변 구조로 생성
SELECT
    '게임 유저의 조작 피로도와 결제 심리를 분석하세요.' as instruction,
    selftext as input,
    '분석 결과: ' || category || ' 지표가 감지되었습니다. ' ||
    '이 유저는 현재 ' || 
    CASE 
        WHEN is_bm_talk = 1 AND is_high_ccs = 1 THEN '과금 유도 및 조작 피로도 높음'
        WHEN is_bm_talk = 1 THEN '과금 피로도 높음'
        WHEN is_high_ccs = 1 THEN '조작 피로도 높음'
        ELSE '일반 유저'
    END || ' 상태입니다.' as output
FROM {{ ref('stg_comments') }}