-- ============================================================================
-- 03_STAGING.SQL — Generate synthetic data for Destination Marketing Intelligence
-- Country: THAILAND | Currency: THB
-- ============================================================================
USE DATABASE MARKETING_INTEL;
USE SCHEMA RAW;

-- Data generation scripts are demo-specific.
-- See the handcrafted SQL in the aws-malaysia-semiconductor-yield demo for
-- the full pattern: GENERATOR + UNIFORM + LATERAL for distribution,
-- Cortex Complete for text generation, engineered key demo numbers.

-- Target row counts:
-- CAMPAIGNS: 350 rows — Marketing campaigns with budget, channel, and target market
-- SOCIAL_CONTENT: 500,000 rows — Social media posts mentioning Thailand tourism (Instagram, TikTok, X, Xiaohongshu)
-- CAMPAIGN_PERFORMANCE: 12,000 rows — Daily campaign metrics (impressions, clicks, conversions, cost)
-- INFLUENCER_PARTNERSHIPS: 200 rows — Influencer collaborations with performance data
-- CONTENT_LIBRARY: 5,000 rows — Marketing content assets (videos, images, articles) with metadata
-- COMPETITOR_ANALYSIS: 100,000 rows — Competitor destination marketing data (Bali, Vietnam, Philippines)
-- BOOKING_ATTRIBUTION: 75,000 rows — Marketing-attributed bookings with multi-touch paths
-- THAI_DESTINATION_DATA: 50 rows — Destination-level visitor data and positioning
