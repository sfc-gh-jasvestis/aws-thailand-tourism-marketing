-- ============================================================================
-- 08_AGENT.SQL — Cortex Agent for Destination Marketing Intelligence
-- ============================================================================
USE DATABASE MARKETING_INTEL;
USE SCHEMA APP;

CREATE OR REPLACE CORTEX AGENT APP.MARKETING_INTEL_AGENT
  COMMENT = 'Destination Marketing Intelligence AI Assistant'
  MODEL = 'claude-opus-4-8'
  TOOLS = (
    SEMANTIC_VIEW_TOOL(SEMANTIC_VIEW => 'MARKETING_INTEL.APP.MARKETING_ANALYTICS'),    CORTEX_SEARCH_TOOL(CORTEX_SEARCH_SERVICE => 'MARKETING_INTEL.SEARCH.CONTENT_LIBRARY_SEARCH', TOOL_DESCRIPTION => 'Search documents for Tourism & Hospitality information')
  )
  SYSTEM_PROMPT = 'You are the Destination Marketing Intelligence Agent for Thailand tourism, analyzing campaigns, social sentiment, and content performance across 20 source markets.';
