-- 2. 조작 피로도가 높은 유저가 BM에 대해 어떤 감정을 느끼는지 분석
SELECT
    id,
    is_high_ccs,
    is_bm_talk,
    sentiment,
    -- 고통 때문에 돈을 쓰고 싶어 하는지, 고통 때문에 돈을 안 쓰는지 분류
    CASE 
        WHEN is_high_ccs = 1 AND is_bm_talk = 1 AND sentiment = 'Negative' THEN 'Fatigue_Burnout' -- 피로 누적/결제 중단 위험
        WHEN is_high_ccs = 1 AND is_bm_talk = 1 AND sentiment = 'Positive' THEN 'Pay_to_Relieve' -- 피로 해결을 위한 결제 의사
        ELSE 'Neutral'
    END as user_behavior_type
FROM {{ ref('stg_comments') }}