# 🎮 Control_Defines_Difficulty
: MMORPG Control Complexity & User Experience Analysis

> **"모바일 환경에서 조작의 복잡함은 유저를 떠나게 하는가?"**
>
아이온2와 로스트아크 모바일의 데이터를 비교 분석하여 

**조작 복잡도**(CCS)가 유저 경험과 이탈에 미치는 구조적 영향을 규명하는 데이터 분석 프로젝트입니다.

---

## 🌐 Language
* 🇰🇷 **Korean**
* 🇺🇸 **English**

---

## 📊 Dashboard Preview
커뮤니티 인식과 실제 지표를 비교 분석하여 조작 구조와 게임별 기여도를 Tableau로 시각화했습니다.
* **Tableau Dashboard**: https://public.tableau.com/app/profile/songmi.kim/viz/MMORPGUX/CCSUserExperienceAnalysis

<p align="center">
  <img src="0_images/1. CCS & User Experience Analysis.png" width="30%">
  <img src="0_images/2. 커뮤니티별 분석.png" width="30%">
  <img src="0_images/3. 게임별 비교 분석.png" width="30%">
</p>

---

## 🎯 Project Overview
모바일 MMORPG 커뮤니티에서 반복되는 "조작 피로도"와 "수동 조작의 가치"에 대한 의문을 데이터로 검증합니다.
* **유저 체감**: "손가락이 너무 아프다", "모바일인데 조작이 너무 복잡하다."
* **분석 목표**: **Community Perception → Gameplay Category → Experience Gap**의 관계를 분석하여 유저 유지 및 이탈을 결정짓는 구조적 요인을 도출합니다.

---

## 🏗 Project Architecture & Data

### 📦 데이터 소스 및 역할
| Source | Data Type | Role |
| :--- | :--- | :--- |
| **Community** | Qualitative | Reddit, Inven, DCInside, YouTube 댓글 수집 |
| **Categorization** | Metadata | 조작 복잡도(CCS), 자동화 여부, 감성 라벨링 |
| **Translation** | Processing | 다국어 데이터 번역 및 텍스트 전처리 |

### 📈 데이터 규모
* **수집 대상**: 주요 8개 커뮤니티 채널 (Reddit, Inven, DCInside, YouTube 등)
* **클린 데이터**: 총 **14,135건**의 정제된 분석 데이터
* **언어 비중**: 한국어(94.68%), 영어(4.77%) 등 다국어 포함

---

## ⚙️ Feature Engineering
데이터 구조 해석을 위해 다음과 같은 주요 Feature를 설계했습니다.

* **Control Performance**: High CCS 구간 감정 분석, 조작 편의성 지표
* **Experience Gap**: 게임별 부정 비율 격차, 임계값(Threshold) 도출
* **Timeline Features**: 출시 초기 대비 여론 변화 흐름 분석
* **Text Features**: `Okt` 형태소 분석을 통한 핵심 키워드(피로, 스트레스 등) 추출

---

## 🔍 Exploratory Data Analysis (EDA)
단순 요약이 아닌 가설 검증을 위한 단계로 수행되었습니다.
1. **CCS 수준별 감정**: High CCS 구간에서 부정률 **87.30%** 기록
2. **자동화 의존도**: 자동화 사용 시 부정 경험 **93.95%**로 급증 (조작 재미 결여)
3. **게임별 비교**: 아이온2의 부정 비율(27.85%)이 로스트아크M(12.87%) 대비 약 2배 높음

---

## 📊 Tableau 대시보드 구성
1. **CCS & User Experience**: 전체 데이터 및 조작 수준별 행동 변화 분석
2. **Community Analysis**: 플랫폼별 감정 비중 및 채널별 특징 비교
3. **Game Comparison**: 아이온2 vs 로스트아크M 지표 격차 및 위험 진단 (Highlight Table)

---

## 🛠 기술 스택
* **Language**: `Python 3.10`
* **Libraries**: `pandas`, `konlpy(Okt)`, `scikit-learn`, `wordcloud`, `matplotlib`
* **Visualization**: `Tableau`, `Streamlit` (Interactive Dashboard)

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
