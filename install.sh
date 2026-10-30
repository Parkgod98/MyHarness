#!/usr/bin/env bash
set -euo pipefail
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$PWD}"
if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Target directory not found: $TARGET_DIR" >&2
  exit 1
fi
if [[ "$(cd "$SOURCE_DIR" && pwd -P)" == "$(cd "$TARGET_DIR" && pwd -P)" ]]; then
  echo "Already inside MyHarness; run from the actual work directory instead." >&2
  exit 1
fi
for relative in AGENTS.md SPEC_GUIDE.md .agents/skills/project-walkthrough/SKILL.md; do
  source="$SOURCE_DIR/$relative"
  dest="$TARGET_DIR/$relative"
  if [[ -e "$dest" ]]; then
    echo "SKIP existing: $relative (review and merge manually)"
  else
    mkdir -p "$(dirname "$dest")"
    cp "$source" "$dest"
    echo "INSTALLED: $relative"
  fi
done
printf '\nStart a new Codex session in: %s\n' "$TARGET_DIR"
