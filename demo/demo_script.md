# Demo Script: Destination Marketing Intelligence
## ~4-Minute Recorded Walkthrough
**Format**: Screen recording with voiceover
**Target**: Customer meeting / booth loop / social share
**Narrative**: "Snowflake analyzes marketing campaign performance across channels, extracts insights from social media at scale, and powers content discovery — replacing fragmented marketing tools with unified AI-native analytics"
**Demo Mode**: Open app with `?demo=true` for presenter notes

---

## Two Personas

| Persona | Role | Tool | What they care about |
|---|---|---|---|
| **Varinda Kanchanawat** | CMO (Tourism Group) | React App (SPCS) | Campaign ROI, brand sentiment, market positioning, budget allocation across channels |
| **Tanawat Ruangkanchanasetr** | Digital Marketing Manager | Amazon QuickSight | Content performance, influencer impact, social listening, trending topics |

---

## What's Built

| Layer | Component | Detail |
|---|---|---|
| **RAW** | 8 tables | CAMPAIGNS (350), SOCIAL_CONTENT (500000), CAMPAIGN_PERFORMANCE (12000), INFLUENCER_PARTNERSHIPS (200), CONTENT_LIBRARY (5000), COMPETITOR_ANALYSIS (100000), BOOKING_ATTRIBUTION (75000), THAI_DESTINATION_DATA (50) |
| **CURATED** | 4 Dynamic Tables | CAMPAIGN_ROI, SOCIAL_SENTIMENT_TRENDS, TRENDING_TOPICS, COMPETITIVE_POSITIONING |
| **ML** | ML.FORECAST + ML.ANOMALY_DETECTION | Forecasting + anomaly detection |
| **AI** | AI_SENTIMENT, AI_EXTRACT, AI_CLASSIFY | Classification + extraction |
| **Search** | Cortex Search | 5000 documents indexed |
| **Agent** | MARKETING_INTEL_AGENT | Semantic View + Search tools |


---

## The Story

Thailand's tourism marketing team manages ฿2.4B across 350 campaigns but can't see which content resonates in which market. Social listening across 6 languages reveals trending topics and sentiment shifts — but fragmented tools mean the insights arrive too late to act on. Unified AI-native analytics closes the gap.

---

## Script

### [0:00–0:45] EXECUTIVE COCKPIT

**Show**: Executive Cockpit tab

> "Marketing budget: ฿2.4B across 350 campaigns. Portfolio ROI at 4.2x — target is 5x."

**Action**: Point at portfolio ROI gauge

### [0:45–1:30] SOCIAL INTELLIGENCE

**Show**: Social Intelligence tab

> "AI_EXTRACT identifies top trending topics: 'Thai street food' (Korean market), 'Chiang Mai temples' (Chinese), 'island hopping' (European)."

**Action**: Show trending topic word cloud by market

### [1:30–2:15] CONTENT & CAMPAIGN

**Show**: Content & Campaign tab

> "Cortex Search indexes 5,000 content assets — search by theme, market, or destination."

**Action**: Demo a Cortex Search query on content library

### [2:15–3:00] ASK AI

**Show**: Ask AI tab

> "Varinda asks: 'Which campaigns should we scale and which should we pause?'"

**Action**: Type: 'Campaigns to scale vs pause based on ROI'

### [3:00–3:45] ARCHITECTURE & DATA

**Show**: Architecture & Data tab

> "Seven Snowflake capabilities, six AWS services."

**Action**: Walk through architecture diagram


---

## Key Demo Differentiators

1. **AI_SENTIMENT + AI_EXTRACT on multilingual social** — Only demo analyzing tourism social content in Thai, English, Chinese, Korean, Japanese, and Russian
2. **Cortex Search on marketing content library** — Natural language search across 5,000 content assets by theme, market, and destination
3. **AI_CLASSIFY for content theme taxonomy** — Automatic classification into adventure, wellness, food, culture, nightlife themes
4. **Competitive destination positioning** — Thailand vs Bali vs Vietnam vs Philippines sentiment and share-of-voice comparison
5. **Viral content early detection** — ML.ANOMALY_DETECTION identifies viral content for amplification within 4 hours
6. **Multi-touch attribution modeling** — Marketing-to-booking attribution across digital channels


---

## Demo Prep Checklist

### Data Verification
- [ ] `SELECT COUNT(*) FROM MARKETING_INTEL.RAW.SOCIAL_CONTENT` → 500000
- [ ] `SELECT COUNT(*) FROM MARKETING_INTEL.RAW.CAMPAIGNS` → 350
- [ ] `SELECT COUNT(DISTINCT MARKET_TOPIC) FROM MARKETING_INTEL.CURATED.SOCIAL_SENTIMENT_TRENDS` → >50

### ML Model Verification
- [ ] `SELECT COUNT(*) FROM MARKETING_INTEL.ML.CAMPAIGN_PERFORMANCE_FORECAST_RESULTS` → >0
- [ ] `SELECT SUM(CASE WHEN IS_ANOMALY THEN 1 ELSE 0 END) FROM MARKETING_INTEL.ML.SENTIMENT_SHIFT_RESULTS` → >=5

### AI/Agent Verification
- [ ] `SELECT COUNT(*) FROM MARKETING_INTEL.AI.SOCIAL_SENTIMENT_SCORES` → 500000

