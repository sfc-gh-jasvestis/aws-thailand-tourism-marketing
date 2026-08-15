-- ============================================================================
-- 11_TASK_PIPELINE.SQL — Task DAG for Destination Marketing Intelligence
-- ============================================================================
USE DATABASE MARKETING_INTEL;
USE SCHEMA APP;

CREATE OR REPLACE TASK APP.TASK_ANALYZE_SOCIAL
  WAREHOUSE = MARKETING_WH
  SCHEDULE = 'USING CRON 0 */4 * * * UTC'
  COMMENT = 'Run AI_SENTIMENT + AI_EXTRACT on new social content'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_UPDATE_TRENDS
  WAREHOUSE = MARKETING_WH
  AFTER APP.TASK_ANALYZE_SOCIAL
  COMMENT = 'Update trending topics and sentiment trends'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_GENERATE_REPORTS
  WAREHOUSE = MARKETING_WH
  SCHEDULE = 'USING CRON 0 7 * * 1 UTC'
  COMMENT = 'Generate weekly marketing intelligence reports'
AS
  SELECT 1; -- Replace with actual refresh logic

ALTER TASK APP.TASK_GENERATE_REPORTS RESUME;
ALTER TASK APP.TASK_UPDATE_TRENDS RESUME;
ALTER TASK APP.TASK_ANALYZE_SOCIAL RESUME;
