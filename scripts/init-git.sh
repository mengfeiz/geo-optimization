#!/usr/bin/env bash
# Run once from your machine to turn this folder into a git repository.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

if [[ -d .git ]]; then
  echo "Already a git repository at $ROOT"
  exit 0
fi

git init -b main
git add -A
git commit -m "Initial commit: GEO optimization skill for AI agents

Include SKILL.md framework, tactical playbook, JSON-LD schema patterns,
MIT license, and install notes for Cursor and OpenClaw."

echo ""
echo "Repository initialized at: $ROOT"
echo "Next steps:"
echo "  1. Create an empty repo on GitHub (no README/license if you want a clean history)."
echo "  2. git remote add origin https://github.com/YOUR_USERNAME/geo-optimization.git"
echo "  3. git push -u origin main"
echo ""
echo "Or with GitHub CLI: gh repo create geo-optimization --public --source=. --remote=origin --push"
