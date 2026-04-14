-- 3. 질문 - 맥락 - 답변 구조로 생성
SELECT
    '게임 유저의 조작 피로도와 결제 심리를 분석하세요.' as instruction,
    s.selftext as input, -- stg_comments의 원본 텍스트 사용
    '이 유저는 현재 ' || i.user_behavior_type || ' 상태입니다. ' ||
    '분석 결과: ' || s.category || ' 지표가 높으며 감성은 ' || i.sentiment || '입니다.' as output
FROM {{ ref('int_fatigue_bm_link') }} i
JOIN {{ ref('stg_comments') }} s USING (id)