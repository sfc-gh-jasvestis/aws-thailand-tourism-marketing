-- ============================================================================
-- 04_DYNAMIC_TABLES.SQL — Curated layer for Destination Marketing Intelligence
-- ============================================================================
USE DATABASE MARKETING_INTEL;
USE SCHEMA CURATED;

-- CAMPAIGN_ROI: Real-time campaign ROI calculation with attribution modeling
-- Source: CAMPAIGNS, CAMPAIGN_PERFORMANCE, BOOKING_ATTRIBUTION
CREATE OR REPLACE DYNAMIC TABLE CURATED.CAMPAIGN_ROI
  TARGET_LAG = '5 minutes'
  WAREHOUSE = MARKETING_WH
AS
SELECT * FROM RAW.CAMPAIGNS;
-- TODO: Replace with actual join/aggregation logic per demo

-- SOCIAL_SENTIMENT_TRENDS: Social media sentiment by market and topic over time
-- Source: SOCIAL_CONTENT
CREATE OR REPLACE DYNAMIC TABLE CURATED.SOCIAL_SENTIMENT_TRENDS
  TARGET_LAG = '5 minutes'
  WAREHOUSE = MARKETING_WH
AS
SELECT * FROM RAW.SOCIAL_CONTENT;
-- TODO: Replace with actual join/aggregation logic per demo

-- TRENDING_TOPICS: AI-extracted trending topics by source market and time window
-- Source: SOCIAL_CONTENT
CREATE OR REPLACE DYNAMIC TABLE CURATED.TRENDING_TOPICS
  TARGET_LAG = '5 minutes'
  WAREHOUSE = MARKETING_WH
AS
SELECT * FROM RAW.SOCIAL_CONTENT;
-- TODO: Replace with actual join/aggregation logic per demo

-- COMPETITIVE_POSITIONING: Thailand vs competitor sentiment and share-of-voice
-- Source: SOCIAL_CONTENT, COMPETITOR_ANALYSIS
CREATE OR REPLACE DYNAMIC TABLE CURATED.COMPETITIVE_POSITIONING
  TARGET_LAG = '5 minutes'
  WAREHOUSE = MARKETING_WH
AS
SELECT * FROM RAW.SOCIAL_CONTENT;
-- TODO: Replace with actual join/aggregation logic per demo

