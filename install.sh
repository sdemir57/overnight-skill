#!/usr/bin/env bash
# Installs the /overnight skill into ~/.claude/skills (user-level, all projects).
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)/skills/overnight"
DEST="${CLAUDE_HOME:-$HOME/.claude}/skills/overnight"
if [ -e "$DEST" ]; then
  echo "Found an existing install at $DEST. Back it up or remove it, then run again."
  exit 1
fi
mkdir -p "$(dirname "$DEST")"
cp -R "$SRC" "$DEST"
echo "Installed /overnight to $DEST"
echo "Open Claude Code, type /overnight, and go to bed."
