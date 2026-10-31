# offer-master-skill

Native multi-agent coding plugin and skill bundle for commercial offer diagnosis, value lever optimization, obstacle-based packaging, guarantee risk modeling, and copy honesty auditing.

## Multi-Agent Compatibility

- **Claude Code**: `.claude-plugin/plugin.json`, `commands/*.md`, `agents/*.md`, `skills/*`
- **OpenAI Codex CLI**: `.codex-plugin/plugin.json`, `skills/*`
- **Google Antigravity CLI (`agy`) / Gemini CLI**: `gemini-extension.json`, `plugin.json`, `GEMINI.md`, `commands/*.toml`, `skills/*`
- **Hermes Agent**: `HERMES.md`, `skills/*` (conforming to `agentskills.io` open standard)

## Directory Structure

```
offer-master-skill/
├── .claude-plugin/
│   └── plugin.json                  # Claude Code plugin manifest
├── .codex-plugin/
│   └── plugin.json                  # OpenAI Codex CLI plugin manifest
├── agents/
│   ├── offer-strategist.md          # Autonomous offer architect subagent
│   └── offer-auditor.md             # Adversarial copy & proof auditor subagent
├── commands/                        # Native slash commands (Claude Code & Antigravity)
│   ├── offer-master.md / .toml
│   ├── offer-diagnosis.md / .toml
│   ├── offer-levers.md / .toml
│   ├── offer-included.md / .toml
│   ├── offer-guarantee.md / .toml
│   ├── offer-urgency-name-price.md / .toml
│   ├── offer-honesty-check.md / .toml
│   └── offer-card.md / .toml
├── skills/                          # Core skills (agentskills.io specification)
│   ├── offer-master/
│   ├── offer-diagnosis/
│   │   └── scripts/funnel_leak.py
│   ├── offer-levers/
│   ├── offer-included/
│   ├── offer-guarantee/
│   │   └── scripts/guarantee_cost.py
│   ├── offer-urgency-name-price/
│   │   └── scripts/price_math.py
│   ├── offer-honesty-check/
│   │   └── scripts/flag_claims.py
│   └── offer-card/
├── CONTEXT.md                       # This architectural map
├── GEMINI.md                        # Gemini / Antigravity CLI context entry
├── HERMES.md                        # Hermes Agent skill bundle guide
├── install.sh                       # Multi-agent installer script
├── plugin.json                      # Antigravity CLI v1 manifest
└── gemini-extension.json            # Gemini CLI extension manifest
```
