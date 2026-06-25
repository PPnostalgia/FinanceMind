#!/usr/bin/env bash
# Sync content from local EconomistVault to Astro content directory.
# Run this once before `npm run dev`, and again whenever vault content changes.
set -euo pipefail

VAULT="${1:-$(dirname "$0")/../../EconomistVault}"
VAULT="$(realpath "$VAULT")"
CONTENT="$(dirname "$0")/../src/content"

echo "Syncing vault: $VAULT → $CONTENT"

mkdir -p \
  "$CONTENT/wechat" \
  "$CONTENT/kb/economics" \
  "$CONTENT/kb/mental-models" \
  "$CONTENT/kb/science-tech" \
  "$CONTENT/kb/psychology"

# Wechat articles
if ls "$VAULT/01-Wechat/"*.md 2>/dev/null | head -1 > /dev/null; then
  cp "$VAULT/01-Wechat/"*.md "$CONTENT/wechat/"
  echo "  ✓ wechat: $(ls "$CONTENT/wechat/"*.md | wc -l) files"
else
  echo "  — wechat: no files"
fi

# Knowledge base
for dir in economics mental-models science-tech psychology; do
  src="$VAULT/02-KnowledgeBase/$dir"
  dst="$CONTENT/kb/$dir"
  if ls "$src/"*.md 2>/dev/null | head -1 > /dev/null; then
    cp "$src/"*.md "$dst/"
    echo "  ✓ kb/$dir: $(ls "$dst/"*.md | wc -l) files"
  else
    echo "  — kb/$dir: no files"
  fi
done

echo "Done. Run 'npm run dev' to start."
