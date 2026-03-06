#!/bin/bash
# GTM Agent Playbook — Installer
# Copies skill files into your current project's .claude/skills/ directory.

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST=".claude/skills/gtm-playbook"

if [ ! -d ".claude" ]; then
  echo "No .claude directory found. Creating one in $(pwd)..."
fi

mkdir -p "$DEST"

skills=(
  "icp-sharpener"
  "linkedin-voice-builder"
  "linkedin-daily-debrief"
  "linkedin-idea-sourcer"
  "linkedin-post-repurposer"
  "outreach-packager"
  "meeting-prep-brief"
)

for skill in "${skills[@]}"; do
  mkdir -p "$DEST/$skill"
  cp "$SCRIPT_DIR/.claude/skills/gtm-playbook/$skill/SKILL.md" "$DEST/$skill/SKILL.md"
  echo "  Installed: $skill"
done

echo ""
echo "Done. 7 skills installed in $DEST/"
echo "Try: 'sharpen my ICP' or 'build my LinkedIn voice' in Claude Code."
