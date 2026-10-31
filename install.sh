#!/usr/bin/env bash
# Offer Master: multi-agent installer for Claude Code, Codex, Antigravity (agy), and Hermes.
# Usage:
#   bash install.sh [--all | --claude | --codex | --gemini | --hermes]
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="${SCRIPT_DIR}/skills"

CLAUDE_DEST="${HOME}/.claude/skills"
CODEX_DEST="${HOME}/.codex/skills"
GEMINI_DEST="${HOME}/.gemini/skills"
HERMES_DEST="${HOME}/.hermes/skills"

install_to() {
  local target_name="$1"
  local dest_root="$2"

  echo ""
  echo "Installing Offer Master skills to ${target_name} (${dest_root})..."
  mkdir -p "$dest_root"

  local count=0
  for src in "$SKILLS_DIR"/*; do
    [ -f "$src/SKILL.md" ] || continue
    local name
    name="$(basename "$src")"
    local dest="$dest_root/$name"
    rm -rf "$dest"
    cp -R "$src" "$dest"
    count=$((count + 1))
  done

  echo "✔ Successfully installed ${count} skills to ${dest_root}"
}

print_help() {
  cat <<EOF
Offer Master Multi-Agent Installer

Usage:
  bash install.sh [OPTIONS]

Options:
  --all       Install skills across all detected agent folders (Claude, Codex, Gemini, Hermes)
  --claude    Install to Claude Code (~/.claude/skills)
  --codex     Install to OpenAI Codex CLI (~/.codex/skills)
  --gemini    Install to Google Antigravity / Gemini CLI (~/.gemini/skills)
  --hermes    Install to Hermes Agent (~/.hermes/skills)
  -h, --help  Show this help message

If no option is provided, an interactive prompt will ask where to install.
EOF
}

TARGET="${1:-}"

case "$TARGET" in
  --all)
    install_to "Claude Code" "$CLAUDE_DEST"
    install_to "OpenAI Codex CLI" "$CODEX_DEST"
    install_to "Google Antigravity / Gemini CLI" "$GEMINI_DEST"
    install_to "Hermes Agent" "$HERMES_DEST"
    echo ""
    echo "Done! Offer Master installed across all coding agents."
    exit 0
    ;;
  --claude)
    install_to "Claude Code" "$CLAUDE_DEST"
    exit 0
    ;;
  --codex)
    install_to "OpenAI Codex CLI" "$CODEX_DEST"
    exit 0
    ;;
  --gemini|--agy)
    install_to "Google Antigravity / Gemini CLI" "$GEMINI_DEST"
    exit 0
    ;;
  --hermes)
    install_to "Hermes Agent" "$HERMES_DEST"
    exit 0
    ;;
  -h|--help)
    print_help
    exit 0
    ;;
  "")
    echo "=================================================="
    echo "       Offer Master Multi-Agent Installer         "
    echo "=================================================="
    echo "Where would you like to install Offer Master?"
    echo "  1) All Agents (Claude, Codex, Gemini/Agy, Hermes)"
    echo "  2) Claude Code (~/.claude/skills)"
    echo "  3) OpenAI Codex CLI (~/.codex/skills)"
    echo "  4) Google Antigravity / Gemini CLI (~/.gemini/skills)"
    echo "  5) Hermes Agent (~/.hermes/skills)"
    echo "  q) Quit"
    echo ""
    read -r -p "Enter your choice [1-5]: " choice
    case "$choice" in
      1)
        install_to "Claude Code" "$CLAUDE_DEST"
        install_to "OpenAI Codex CLI" "$CODEX_DEST"
        install_to "Google Antigravity / Gemini CLI" "$GEMINI_DEST"
        install_to "Hermes Agent" "$HERMES_DEST"
        ;;
      2) install_to "Claude Code" "$CLAUDE_DEST" ;;
      3) install_to "OpenAI Codex CLI" "$CODEX_DEST" ;;
      4) install_to "Google Antigravity / Gemini CLI" "$GEMINI_DEST" ;;
      5) install_to "Hermes Agent" "$HERMES_DEST" ;;
      q|Q) echo "Cancelled."; exit 0 ;;
      *) echo "Invalid choice: $choice"; exit 1 ;;
    esac
    echo ""
    echo "Installation complete!"
    ;;
  *)
    echo "Unknown option: $TARGET"
    print_help
    exit 1
    ;;
esac
