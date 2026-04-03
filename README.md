# 🎮 Control Defines Difficulty  
### MMORPG Control Complexity & User Experience Analysis

> **"모바일 환경에서 조작의 복잡함은 유저를 떠나게 하는가?"**

본 프로젝트는 모바일 MMORPG에서 조작 복잡도(Control Complexity Score, CCS)가  
유저 경험(User Experience)과 이탈(Churn)에 미치는 영향을 데이터 기반으로 분석하고,  
**서비스 개선 관점의 인사이트를 도출하는 것을 목표로 합니다.**

---

## 🌐 Language
* 🇰🇷 **Korean**
* 🇺🇸 **English**

---

## 📌 1. Problem Definition

모바일 MMORPG 커뮤니티에서는 지속적으로 다음과 같은 피드백이 발생합니다:

- “조작이 너무 복잡하다”
- “자동사냥인데도 피로하다”
- “모바일인데 손이 너무 많이 간다”

하지만 이러한 의견은 정성적 수준에 머무르며,  
실제 서비스 지표와의 관계는 명확히 검증되지 않은 상태입니다.

👉 본 프로젝트는 다음 질문에서 출발합니다:

> **조작 복잡도는 단순 난이도가 아니라, 유저 이탈을 유발하는 구조적 요인인가?**

---

## 🎯 2. Objective

- 조작 복잡도(CCS)를 정량화하고 구조적으로 정의
- 유저 체감(Community Perception)과 실제 경험 간의 Gap 분석
- CCS가 유저 경험 및 이탈에 미치는 영향 규명
- 분석 결과를 기반으로 **서비스 개선 전략 제안**

---

## 🏗 3. Data & Architecture

### 📦 Data Sources

| Source | Type | Description |
|------|------|-------------|
| Community | Qualitative | Reddit, Inven, DCInside, YouTube 댓글 |
| Metadata | Structured | CCS, 자동화 여부, 감성 라벨링 |
| Processing | Pipeline | 다국어 번역 및 텍스트 전처리 |

---

### 📊 Data Scale

- 총 데이터: **14,135건**
- 커뮤니티 채널: 8개
- 언어 비중:
  - 한국어: 94.68%
  - 영어: 4.77%
  - 기타 포함

---

## ⚙️ 4. Feature Engineering

### 🔹 Control Complexity Score (CCS)
- 입력 수, 조작 빈도, 반응 요구 수준 기반 정량화

### 🔹 Experience Gap
- 게임별 부정 경험 비율 차이
- 임계값(Threshold) 기반 위험 구간 정의

### 🔹 Control Performance
- High CCS 구간에서의 감정 변화 및 UX 지표 분석

### 🔹 Timeline Features
- 출시 이후 여론 변화 흐름 분석

### 🔹 Text Features
- 형태소 분석(Okt) 기반 핵심 키워드 추출  
  (피로, 스트레스, 반복, 자동화 등)

---

## 🔍 5. Key Findings

### 1) 조작 복잡도와 부정 경험의 강한 상관관계
- High CCS 구간 → **부정률 87.30%**

### 2) 자동화 시스템의 역설
- 자동화 사용 시 → **부정 경험 93.95%**  
→ “편의성 증가”보다 “게임 재미 감소” 영향이 큼

### 3) 게임 간 구조적 차이
- 아이온2: 부정 비율 27.85%
- 로스트아크M: 부정 비율 12.87%  
→ 약 2배 차이 발생

---

## 💼 6. Business Impact

본 분석을 통해 조작 복잡도는 단순 난이도가 아닌  
**유저 이탈을 유발하는 핵심 구조적 변수**로 작용할 가능성을 확인했습니다.

### 주요 리스크

- 초기 구간 피로도 증가 → **Retention 저하**
- 조작 피로 누적 → **플레이 타임 감소**
- 자동화 의존 → **게임 몰입도 하락**
- 결과적으로 → **장기 유저 이탈 가능성 증가**

---

## 🧩 7. Actionable Insights

### 1) 초반 구간 CCS 완화
- 튜토리얼에서 조작 복잡도 단계적 증가 설계 필요

### 2) 자동화 시스템 재설계
- 완전 자동화 → 부분 자동화 구조 전환
- 유저 개입 요소 유지

### 3) 숙련도 기반 UX 분리
- 신규 유저: Low CCS 환경 제공
- 숙련 유저: High CCS 선택 가능 구조

### 4) CCS Threshold 기반 밸런싱
- 특정 CCS 이상 구간에서 부정 경험 급증  
→ 게임 설계 기준으로 활용 가능

---

## 📈 8. Expected Impact

- Retention 개선 (초기 이탈 감소)
- 플레이 타임 증가
- 유저 경험 만족도 상승
- BM 전환율 개선 가능성

---

## 📊 9. Dashboard

👉 Tableau Dashboard  
https://public.tableau.com/app/profile/songmi.kim/viz/MMORPGUX/CCSUserExperienceAnalysis

- CCS & UX 분석
- 커뮤니티 감정 비교
- 게임 간 구조적 차이 시각화

<p align="center">
  <img src="0_images/1. CCS & User Experience Analysis.png" width="30%">
  <img src="0_images/2. 커뮤니티별 분석.png" width="30%">
  <img src="0_images/3. 게임별 비교 분석.png" width="30%">
</p>

---

## 🛠 10. Tech Stack

- Python (pandas, scikit-learn, konlpy)
- SQL (MySQL)
- Tableau
- Streamlit

---

## 🔮 11. Future Work

- 실제 게임 로그 데이터 기반 CCS 검증
- 플레이 타임 및 이탈률과의 정량적 관계 분석
- A/B 테스트 기반 조작 구조 최적화

---

## 🙋 12. About Me

데이터 분석, 데이터 엔지니어링, DBA 경험을 기반으로  
단순한 지표 분석이 아닌 **서비스 개선으로 이어지는 데이터 분석**을 지향합니다.

특히 게임 도메인에서  
유저 행동을 구조적으로 해석하고, 이를 통해  
실제 의사결정에 기여하는 분석가로 성장하고자 합니다.

---

## 📁 Repository Structure
```text
project
 ├ 0_images
 │   └ 관련 이미지들
 ├ 1_code
 │   └ collect code 정리 (Crawling, Analysis Pipeline)
 ├ 2_reference
 │   └ mobilegame-MMORPG_vs_Data_Analysis.txt
 ├ 3_comment_original
 │   └ all_merged_comments_korean_only.csv
 ├ .gitignore
 ├ LICENSE
 └ README.md
