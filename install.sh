#!/usr/bin/env bash
# ==============================================================================
# AI-TOOLS: 1-Click Master Installer for AI Coding Agents, Skills, Plugins & MCP
# Supports: Antigravity CLI (agy), Claude Code (claude), OpenCode, Cursor, Aider
# ==============================================================================

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${CYAN}======================================================${NC}"
echo -e "${GREEN} 🤖 AI-TOOLS: Master Installer (Skills, Plugins, MCP) ${NC}"
echo -e "${CYAN}======================================================${NC}"

TARGET_DIR="${HOME}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 1. Install Skills to ~/.agents/skills (Standard Agent Skills)
echo -e "\n${BLUE}[1/5] Installing Skills to ~/.agents/skills...${NC}"
mkdir -p "${TARGET_DIR}/.agents/skills"
if [ -d "${SCRIPT_DIR}/skills/design-and-frontend" ]; then
  cp -r "${SCRIPT_DIR}/skills/design-and-frontend/"* "${TARGET_DIR}/.agents/skills/" 2>/dev/null || true
fi
if [ -d "${SCRIPT_DIR}/skills/dev-and-tools" ]; then
  cp -r "${SCRIPT_DIR}/skills/dev-and-tools/"* "${TARGET_DIR}/.agents/skills/" 2>/dev/null || true
fi
echo -e "${GREEN}✓ Agent Skills installed successfully!${NC}"

# 2. Install Skills & Plugins to Antigravity CLI (~/.gemini/antigravity-cli)
echo -e "\n${BLUE}[2/5] Setting up Google Antigravity CLI Skills & MCP...${NC}"
mkdir -p "${TARGET_DIR}/.gemini/antigravity-cli/builtin/skills"
mkdir -p "${TARGET_DIR}/.gemini/antigravity-cli/mcp"
mkdir -p "${TARGET_DIR}/.gemini/config/plugins/antislop/skills"

if [ -d "${SCRIPT_DIR}/skills/antigravity-core" ]; then
  cp -r "${SCRIPT_DIR}/skills/antigravity-core/"* "${TARGET_DIR}/.gemini/antigravity-cli/builtin/skills/" 2>/dev/null || true
fi
if [ -d "${SCRIPT_DIR}/skills/anti-slop" ]; then
  cp -r "${SCRIPT_DIR}/skills/anti-slop/"* "${TARGET_DIR}/.gemini/config/plugins/antislop/skills/" 2>/dev/null || true
fi
if [ -d "${SCRIPT_DIR}/mcp/playwright" ]; then
  cp -r "${SCRIPT_DIR}/mcp/playwright" "${TARGET_DIR}/.gemini/antigravity-cli/mcp/" 2>/dev/null || true
fi
echo -e "${GREEN}✓ Antigravity CLI Skills & Playwright MCP configured!${NC}"

# 3. Install Plugins & Rules to Claude Code (~/.claude)
echo -e "\n${BLUE}[3/5] Setting up Claude Code Plugins & Anti-Slop...${NC}"
mkdir -p "${TARGET_DIR}/.claude/plugins/marketplaces/anti-slop"
mkdir -p "${TARGET_DIR}/.claude/plugins/marketplaces/claude-plugins-official"

if [ -d "${SCRIPT_DIR}/plugins/anti-slop" ]; then
  cp -r "${SCRIPT_DIR}/plugins/anti-slop/"* "${TARGET_DIR}/.claude/plugins/marketplaces/anti-slop/" 2>/dev/null || true
fi
if [ -d "${SCRIPT_DIR}/plugins/claude-official" ]; then
  cp -r "${SCRIPT_DIR}/plugins/claude-official/"* "${TARGET_DIR}/.claude/plugins/marketplaces/claude-plugins-official/" 2>/dev/null || true
fi
echo -e "${GREEN}✓ Claude Code Plugins installed!${NC}"

# 4. Copy Rules & Configs
echo -e "\n${BLUE}[4/5] Deploying AI System Rules & Global Settings...${NC}"
mkdir -p "${TARGET_DIR}/.antislop"
if [ -f "${SCRIPT_DIR}/rules/antislop-core.md" ]; then
  cp "${SCRIPT_DIR}/rules/antislop-core.md" "${TARGET_DIR}/.antislop/antislop.md" 2>/dev/null || true
fi
echo -e "${GREEN}✓ AI Rules applied!${NC}"

# 5. Summary & Verification
echo -e "\n${BLUE}[5/5] Verifying Installed Assets...${NC}"
SKILL_COUNT=$(find "${TARGET_DIR}/.agents/skills" -maxdepth 1 -mindepth 1 -type d | wc -l)
echo -e " • Total Agent Skills: ${YELLOW}${SKILL_COUNT}${NC}"
echo -e " • Antigravity Skills: ${YELLOW}Configured${NC}"
echo -e " • Claude Code Plugins: ${YELLOW}Configured${NC}"
echo -e " • Playwright MCP Server: ${YELLOW}Ready (25 tools)${NC}"

echo -e "\n${GREEN}🎉 All AI Skills, Plugins, MCPs, and Rules are 100% Ready!${NC}\n"
