-- Generated from generator/demo_specs/aws-thailand-tourism-marketing.json
-- Regenerate with: python3 generator/gen_repo_docs.py aws-thailand-tourism-marketing
-- This is the schema that is actually deployed for THAILAND_TOURISM_MARKETING.

-- THAILAND_TOURISM_MARKETING  (Destination Marketing Intelligence)
-- generated from generator/demo_specs/aws-thailand-tourism-marketing.json - do not hand-edit
CREATE DATABASE IF NOT EXISTS THAILAND_TOURISM_MARKETING;
CREATE SCHEMA IF NOT EXISTS THAILAND_TOURISM_MARKETING.RAW;
CREATE SCHEMA IF NOT EXISTS THAILAND_TOURISM_MARKETING.CURATED;
CREATE SCHEMA IF NOT EXISTS THAILAND_TOURISM_MARKETING.APP;
USE DATABASE THAILAND_TOURISM_MARKETING;

-- 5 real regions; entity names carry their region so the two always agree
