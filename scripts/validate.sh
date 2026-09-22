#!/bin/sh
set -eu
expected="instagram-post-writer instagram-content-planner instagram-reply-handler instagram-humanizer instagram-carousel-planner instagram-repurposer instagram-profile-optimizer instagram-community-manager instagram-analytics instagram-social-listener instagram-reels-scriptwriter instagram-safety-review"
actual=$(find skills -mindepth 1 -maxdepth 1 -type d -printf '%f ' | sed 's/ $//' | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ $//')
want=$(printf '%s' "$expected" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ $//')
[ "$actual" = "$want" ] || { echo "wrong skill set" >&2; exit 1; }
for path in README.md SKILL.md CLAUDE.md .codex-plugin/plugin.json .claude-plugin/plugin.json .agents/plugins/marketplace.json assets/instagram-skills-workflow.svg scripts/selftest.py references/socialbu-publishing.md; do [ -s "$path" ] || { echo "missing $path" >&2; exit 1; }; done
python3 -c "import json; d=json.load(open('.codex-plugin/plugin.json')); assert d['name']=='instagram-skills' and d['interface']['displayName']=='Instagram Skills'"
echo 'validation passed: Instagram Skills'
