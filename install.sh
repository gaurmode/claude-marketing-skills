#!/bin/bash
# Claude Marketing Skills Kit — Quick Installer
# Usage:
#   Project install: curl -fsSL https://raw.githubusercontent.com/gaurmode/claude-marketing-skills/main/install.sh | bash
#   Global install:  curl -fsSL https://raw.githubusercontent.com/gaurmode/claude-marketing-skills/main/install.sh | bash -s -- --global

set -e

REPO="https://github.com/gaurmode/claude-marketing-skills.git"
MODE="project"
if [ "$1" = "--global" ] || [ "$1" = "-g" ]; then
    MODE="global"
fi

BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo ""
echo -e "${BLUE}🚀 Claude Marketing Skills Kit — Installer (${MODE} mode)${NC}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

if ! command -v git &> /dev/null; then
    echo "❌ Git is required but not installed. Please install git first."
    exit 1
fi

if [ "$MODE" = "global" ]; then
    TARGET_BASE="$HOME/.claude"
    INSTALL_DIR="$TARGET_BASE/marketing-skills-repo"
    mkdir -p "$TARGET_BASE/skills" "$TARGET_BASE/agents" "$TARGET_BASE/commands"

    if [ -d "$INSTALL_DIR" ]; then
        echo -e "${YELLOW}📦 Updating existing global installation...${NC}"
        git -C "$INSTALL_DIR" pull --quiet
    else
        echo -e "${BLUE}📦 Cloning marketing skills globally to $INSTALL_DIR...${NC}"
        git clone --quiet "$REPO" "$INSTALL_DIR"
    fi

    cp -R "$INSTALL_DIR/skills/"* "$TARGET_BASE/skills/"
    cp -R "$INSTALL_DIR/agents/"* "$TARGET_BASE/agents/"
    cp -R "$INSTALL_DIR/.claude/commands/"*.md "$TARGET_BASE/commands/" 2>/dev/null || true

    if [ ! -f "$TARGET_BASE/CLAUDE.md" ]; then
        cp "$INSTALL_DIR/CLAUDE.md" "$TARGET_BASE/CLAUDE.md"
        echo -e "${GREEN}  ✅ Created ~/.claude/CLAUDE.md${NC}"
    else
        echo -e "${YELLOW}  ⚠️  ~/.claude/CLAUDE.md already exists — reference $INSTALL_DIR/CLAUDE.md${NC}"
    fi

    echo -e "${GREEN}✅ Installed 62 skills, 10 agents, and 6 commands to ~/.claude/${NC}"
else
    INSTALL_DIR=".claude-marketing-skills"

    if [ -d "$INSTALL_DIR" ]; then
        echo -e "${YELLOW}📦 Updating existing installation...${NC}"
        git -C "$INSTALL_DIR" pull --quiet
    else
        echo -e "${BLUE}📦 Cloning marketing skills...${NC}"
        git clone --quiet "$REPO" "$INSTALL_DIR"
    fi

    # Copy into .claude/skills and .claude/agents as well as root symlinks
    mkdir -p .claude/skills .claude/agents .claude/commands
    cp -R "$INSTALL_DIR/skills/"* .claude/skills/
    cp -R "$INSTALL_DIR/agents/"* .claude/agents/
    cp -R "$INSTALL_DIR/.claude/commands/"*.md .claude/commands/ 2>/dev/null || true

    if [ ! -f "CLAUDE.md" ]; then
        cp "$INSTALL_DIR/CLAUDE.md" ./CLAUDE.md
        echo -e "${GREEN}  ✅ Created CLAUDE.md${NC}"
    else
        echo -e "${YELLOW}  ⚠️  CLAUDE.md already exists — skipping (see $INSTALL_DIR/CLAUDE.md)${NC}"
    fi

    if [ ! -e "skills" ] && [ ! -d "skills" ]; then
        ln -s ".claude/skills" ./skills
        echo -e "${GREEN}  ✅ Linked skills/ -> .claude/skills${NC}"
    fi

    if [ ! -e "agents" ] && [ ! -d "agents" ]; then
        ln -s ".claude/agents" ./agents
        echo -e "${GREEN}  ✅ Linked agents/ -> .claude/agents${NC}"
    fi

    echo ""
    echo -e "${GREEN}✅ Project installation complete!${NC}"
    echo "  Skills:   $(find .claude/skills -name 'SKILL.md' | wc -l | tr -d ' ')"
    echo "  Agents:   $(ls .claude/agents/*.md 2>/dev/null | wc -l | tr -d ' ')"
    echo "  Commands: $(ls .claude/commands/*.md 2>/dev/null | wc -l | tr -d ' ')"
fi
echo ""
