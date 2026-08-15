-- ============================================================================
-- Destination Marketing Intelligence
-- Marketing intelligence for Thailand's destination campaigns — Comprehend analyzes sentiment on social content, AI_EXTRACT identifies trending topics, and Cortex Search enables instant content discovery for marketing teams.
-- ============================================================================
USE ROLE ACCOUNTADMIN;
CREATE DATABASE IF NOT EXISTS MARKETING_INTEL;
CREATE WAREHOUSE IF NOT EXISTS MARKETING_WH WAREHOUSE_SIZE = 'MEDIUM' AUTO_SUSPEND = 120 AUTO_RESUME = TRUE;
USE DATABASE MARKETING_INTEL;
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS CURATED;
CREATE SCHEMA IF NOT EXISTS ML;
CREATE SCHEMA IF NOT EXISTS AI;
CREATE SCHEMA IF NOT EXISTS SEARCH;
CREATE SCHEMA IF NOT EXISTS APP;

USE WAREHOUSE MARKETING_WH;
