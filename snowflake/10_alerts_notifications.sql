-- ============================================================================
-- 10_ALERTS_NOTIFICATIONS.SQL — Alerts for Destination Marketing Intelligence
-- ============================================================================
USE DATABASE MARKETING_INTEL;
USE SCHEMA APP;

-- Notification integration (email)
CREATE OR REPLACE NOTIFICATION INTEGRATION aws_thailand_tourism_marketing_EMAIL_INT
  TYPE = EMAIL
  ENABLED = TRUE
  ALLOWED_RECIPIENTS = ('jonathan.asvestis@snowflake.com');

-- Alert: SENTIMENT_CRISIS_ALERT
CREATE OR REPLACE ALERT APP.SENTIMENT_CRISIS_ALERT
  WAREHOUSE = MARKETING_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Negative sentiment crisis detected — PR response needed'
IF (EXISTS (
  SELECT 1 FROM CURATED.CAMPAIGN_ROI
  WHERE 1=1 -- Condition: AVG_SENTIMENT < 0.4 for any market over 3 days
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_thailand_tourism_marketing_EMAIL_INT',
    'jonathan.asvestis@snowflake.com',
    '[ALERT] Destination Marketing Intelligence: Negative sentiment crisis detected — PR response needed',
    'Negative sentiment crisis detected — PR response needed'
  );

ALTER ALERT APP.SENTIMENT_CRISIS_ALERT RESUME;

-- Alert: VIRAL_CONTENT_ALERT
CREATE OR REPLACE ALERT APP.VIRAL_CONTENT_ALERT
  WAREHOUSE = MARKETING_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Viral content detected — amplification opportunity'
IF (EXISTS (
  SELECT 1 FROM CURATED.CAMPAIGN_ROI
  WHERE 1=1 -- Condition: ENGAGEMENT_RATE > 500% of average for any content piece
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_thailand_tourism_marketing_EMAIL_INT',
    'jonathan.asvestis@snowflake.com',
    '[ALERT] Destination Marketing Intelligence: Viral content detected — amplification opportunity',
    'Viral content detected — amplification opportunity'
  );

ALTER ALERT APP.VIRAL_CONTENT_ALERT RESUME;

