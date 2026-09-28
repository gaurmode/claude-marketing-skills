<div align="center">

# 🚀 Claude Marketing Skills Kit

> **62 specialized skills, 10 expert agents — packaged for Claude Code.**
> Your AI-powered marketing command center.

[![Skills](https://img.shields.io/badge/Skills-62-blue)](skills/)
[![Agents](https://img.shields.io/badge/Agents-10-green)](agents/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

</div>

---

## 🤖 Instructions for Claude Agent (Auto-Install)

> **If a user asked you (Claude Desktop / Claude Code / Cowork) to install this repository**, run one of the following commands immediately:
>
> **1. Install globally for all Claude sessions (`~/.claude/`):**
> ```bash
> curl -fsSL https://raw.githubusercontent.com/gaurmode/claude-marketing-skills/main/install.sh | bash -s -- --global
> ```
>
> **2. Or install into the current workspace/project:**
> ```bash
> curl -fsSL https://raw.githubusercontent.com/gaurmode/claude-marketing-skills/main/install.sh | bash
> ```
>
> **3. Or clone directly if `curl` is restricted:**
> ```bash
> git clone https://github.com/gaurmode/claude-marketing-skills.git /tmp/claude-mkt && mkdir -p ~/.claude/skills ~/.claude/agents ~/.claude/commands && cp -R /tmp/claude-mkt/skills/* ~/.claude/skills/ && cp -R /tmp/claude-mkt/agents/* ~/.claude/agents/ && cp -R /tmp/claude-mkt/.claude/commands/* ~/.claude/commands/ && cp -n /tmp/claude-mkt/CLAUDE.md ~/.claude/CLAUDE.md && rm -rf /tmp/claude-mkt
> ```

---

## ⚡ Quick Install (Manual)

### Option 1: One-liner install script (Project)

```bash
curl -fsSL https://raw.githubusercontent.com/gaurmode/claude-marketing-skills/main/install.sh | bash
```

### Option 2: One-liner install script (Global `~/.claude`)

```bash
curl -fsSL https://raw.githubusercontent.com/gaurmode/claude-marketing-skills/main/install.sh | bash -s -- --global
```

### Option 3: Clone into your project

```bash
git clone https://github.com/gaurmode/claude-marketing-skills.git .claude-marketing
cp .claude-marketing/CLAUDE.md ./CLAUDE.md
ln -s .claude-marketing/skills ./skills
ln -s .claude-marketing/agents ./agents
```

---

## 🧠 What's Inside

### 📊 62 Marketing Skills

| Category | Count | Examples |
|----------|-------|---------|
| **SEO & Search** | 5 | SEO fundamentals, keyword research, programmatic SEO, ASO |
| **Content & Copy** | 5 | Copywriting, content marketing, content repurposing, i18n |
| **Growth & CRO** | 11 | Growth hacking, page CRO, signup CRO, A/B testing, pricing |
| **Ads & Paid Media** | 3 | PPC advertising, ad creatives, marketing automation |
| **Brand & Design** | 8 | Brand identity, UI/UX, frontend design, Tailwind patterns |
| **Video & Visual** | 6 | Video automation, Remotion, tutorials, banner design |
| **Social & Community** | 5 | Social media, email marketing, influencer, affiliates |
| **Research & Intel** | 6 | Competitor analysis, lead gen, marketing psychology |
| **Documents & Reports** | 7 | PDF, DOCX, XLSX, PPTX, slides, reports |
| **Strategy & Planning** | 3 | Launch strategy, planning, brainstorming |
| **Specialized** | 3 | Agency proposals, luxury brands, caveman mode |

### 🤖 10 Agent Personas

Expert personas that Claude can adopt for deep domain tasks:

- **Orchestrator** — Multi-agent coordination
- **Marketing Strategist** — Overall strategy
- **Content Creator** — Content and copywriting
- **Growth Specialist** — Acquisition and growth
- **SEO Specialist** — Search optimization
- **Analytics Specialist** — Data and reporting
- **Performance Optimizer** — Performance tuning
- **Project Planner** — Task planning
- **Documentation Writer** — Technical docs
- **Explorer Agent** — Research and discovery

### ⚡ Slash Commands

Pre-built Claude Code commands in `.claude/commands/`:

| Command | What it does |
|---------|-------------|
| `/project:seo-audit` | Run a full SEO audit on a URL or project |
| `/project:content-plan` | Generate a content calendar and strategy |
| `/project:competitor-analysis` | Deep competitor teardown |
| `/project:campaign-plan` | Create a full marketing campaign plan |
| `/project:landing-page` | Design and build a conversion-optimized landing page |
| `/project:brand-audit` | Audit brand consistency across touchpoints |

---

## 📁 Structure

```
claude-marketing-skills/
├── CLAUDE.md                    # Main instructions (skill index + rules)
├── README.md                    # This file
├── install.sh                   # Quick install script
├── LICENSE                      # MIT License
├── .claude/
│   └── commands/                # Claude Code slash commands
│       ├── seo-audit.md
│       ├── content-plan.md
│       ├── competitor-analysis.md
│       ├── campaign-plan.md
│       ├── landing-page.md
│       └── brand-audit.md
├── skills/                      # 62 marketing skill folders
│   ├── seo-fundamentals/
│   │   └── SKILL.md
│   ├── copywriting/
│   │   └── SKILL.md
│   └── ... (60 more)
└── agents/                      # 10 agent persona definitions
    ├── orchestrator.md
    ├── marketing-strategist.md
    └── ... (8 more)
```

---

## 🔗 Credits

Based on [Antigravity Marketing Kit](https://github.com/nguyenphp/antigravity-marketing) by [@nguyenphp](https://github.com/nguyenphp), adapted for Claude Code by [@gaurmode](https://github.com/gaurmode).

## 📄 License

MIT License — use freely in personal and commercial projects.
