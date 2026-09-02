# Destination Marketing Intelligence

**Thailand - Tourism & Hospitality**
Use case: Marketing Analytics & Content Intelligence

> Marketing intelligence for Thailand's destination campaigns — Comprehend analyzes sentiment on social content, AI_EXTRACT identifies trending topics, and Cortex Search enables instant content discovery for marketing teams.

## Why Snowflake

Snowflake analyzes marketing campaign performance across channels, extracts insights from social media at scale, and powers content discovery — replacing fragmented marketing tools with unified AI-native analytics

- **AI_SENTIMENT + AI_EXTRACT on multilingual social** - Only demo analyzing tourism social content in Thai, English, Chinese, Korean, Japanese, and Russian
- **Cortex Search on marketing content library** - Natural language search across 5,000 content assets by theme, market, and destination
- **AI_CLASSIFY for content theme taxonomy** - Automatic classification into adventure, wellness, food, culture, nightlife themes
- **Competitive destination positioning** - Thailand vs Bali vs Vietnam vs Philippines sentiment and share-of-voice comparison
- **Viral content early detection** - ML.ANOMALY_DETECTION identifies viral content for amplification within 4 hours
- **Multi-touch attribution modeling** - Marketing-to-booking attribution across digital channels

## What is deployed

| | |
|---|---|
| Database | `THAILAND_TOURISM_MARKETING` |
| Service | `THAILAND_TOURISM_MARKETING_APP` |
| Compute pool | `SEA_DEMOS_THAILAND_POOL` |
| Dimension table | `RAW.THAI_DESTINATION_DATA` (20 rows) |
| Fact table | `RAW.SOCIAL_CONTENT` (250,000 rows, 90 days) |
| Curated layer | `CURATED.PERFORMANCE_SUMMARY`, `CURATED.TREND_ANALYSIS`, `CURATED.KPI_SUMMARY` |
| Currency | THB (฿) |

Regions in play: Bangkok, Chonburi, Rayong, Chiang Mai, Songkhla
Segments: Search, Social, OTA Partner, Direct Email

Dynamic tables are created suspended and refreshed on demand:

```bash
./refresh_demo_data.sh THAILAND_TOURISM_MARKETING
```

## KPI cards

Every card below is served live from `CURATED.KPI_SUMMARY`. The app keeps the
original literal as a fallback, so it still renders if Snowflake is unreachable.

| Card | Value | Backed by |
|---|---|---|
| Campaign ROI | `4.2x` | average per event |
| Digital Spend (MTD) | `฿180M` | total across Thai Destination Data |
| Reach (Unique) | `42M` | total across Thai Destination Data |
| Conversion Rate | `3.1%` | average per event |
| Social Media Share | `38%` | average per event |
| Search Intent | `↑ 14%` | average per event |
| Influencer Impact | `2.1x` | average per event |


## Demo flow

1. Executive Cockpit
2. Social Intelligence
3. Content & Campaign
4. Ask AI
5. Architecture & Data

## Talking points

- **4.2x ROI** - portfolio average across 350 campaigns (target: 5x)
- **500K posts** - social content analyzed in 6 languages
- **8.3x ROI** - TikTok influencer partnerships (top channel)
- **5,000 assets** - in content library indexed by Cortex Search
- **0.74 sentiment** - Thailand tourism (ahead of Bali, behind Japan)
- **฿2.4B** - marketing budget optimized across channels and markets

## Business impact

- Thailand allocated ฿8B for international tourism marketing in 2024 across 20+ markets (TAT Thailand)
- AI-powered marketing analytics improves campaign ROI by 20-40% through better targeting (McKinsey Marketing)
- Social listening enables 3x faster response to brand crises vs traditional monitoring (Gartner Marketing)
- TikTok influencer marketing generates 5-10x higher engagement than traditional ads for tourism (Phocuswright)

---
Generated from `generator/demo_specs/aws-thailand-tourism-marketing.json`. Do not hand-edit: run
`python3 generator/gen_repo_docs.py aws-thailand-tourism-marketing` instead.
