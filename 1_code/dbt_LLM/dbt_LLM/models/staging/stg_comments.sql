-- 1. BM 관련 플래그 생성
SELECT
    *,
    CASE 
        WHEN selftext LIKE '%현질%' OR selftext LIKE '%패키지%' OR selftext LIKE '%과금%' THEN 1 
        ELSE 0 
    END as is_bm_talk,
    CASE 
        WHEN category = '조작_복잡' THEN 1 
        ELSE 0 
    END as is_high_ccs
FROM raw_comments