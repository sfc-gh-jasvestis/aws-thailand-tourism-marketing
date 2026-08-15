-- ============================================================================
-- 05_SEARCH.SQL — Cortex Search for Destination Marketing Intelligence
-- ============================================================================
USE DATABASE MARKETING_INTEL;
USE SCHEMA SEARCH;

CREATE OR REPLACE CORTEX SEARCH SERVICE SEARCH.CONTENT_LIBRARY_SEARCH
  ON CONTENT_DESCRIPTION
  ATTRIBUTES CONTENT_TYPE, DESTINATION, TARGET_MARKET, THEME
  WAREHOUSE = MARKETING_WH
  TARGET_LAG = '1 hour'
AS (
  SELECT * FROM RAW.CONTENT_LIBRARY
);
