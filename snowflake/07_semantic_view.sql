-- ============================================================================
-- 07_SEMANTIC_VIEW.SQL — Semantic View for Destination Marketing Intelligence
-- ============================================================================
USE DATABASE MARKETING_INTEL;
USE SCHEMA APP;

CREATE OR REPLACE SEMANTIC VIEW APP.MARKETING_ANALYTICS
  COMMENT = 'Marketing campaign performance, social intelligence, and content analytics'
AS
  TABLES (
    CURATED.CAMPAIGN_ROI AS campaign_roi,CURATED.SOCIAL_SENTIMENT_TRENDS AS social_sentiment_trends,CURATED.TRENDING_TOPICS AS trending_topics,CURATED.COMPETITIVE_POSITIONING AS competitive_positioning
  );
