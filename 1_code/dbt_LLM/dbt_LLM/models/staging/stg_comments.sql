-- 1. BM 관련 플래그 생성
SELECT
    -- DuckDB에서 가장 에러 없는 고유 ID 생성 방식
    uuid() as id, 
    selftext, 
    category, 
    sentiment,
    -- BM(과금) 관련 로직 동기화
    CASE 
        WHEN selftext LIKE '%현질%' OR selftext LIKE '%패키지%' OR selftext LIKE '%과금%' 
        THEN 1 ELSE 0 
    END as is_bm_talk,
    -- 조작 피로도(CCS) 관련 로직 동기화
    CASE 
        WHEN category = '조작_복잡' THEN 1 
        ELSE 0 
    END as is_high_ccs
FROM {{ source('main_db', 'raw_comments') }}