#!/usr/bin/env bash
set -euo pipefail
PUB="$HOME/appian-docs"
SYNC="$HOME/appian-doc-sync"
VER="$(cat "$SYNC/CURRENT_VERSION.txt")"

cd "$PUB"
# Install deps if missing
if ! node -e "require('jsdom');require('turndown');require('turndown-plugin-gfm')" >/dev/null 2>&1; then
  echo "Installing optimizer deps..."
  echo 'node_modules' >> .gitignore
  npm i jsdom turndown turndown-plugin-gfm
fi

# Choose shard count (<= 4 by default; override by exporting N=…)
CORES="$(sysctl -n hw.ncpu 2>/dev/null || echo 2)"
N="${N:-$(( CORES>4 ? 4 : CORES ))}"

echo "Processing version $VER from $SYNC/mirror/suite/help/$VER using $N shard(s)..."
for i in $(seq 1 "$N"); do
  SRC_ROOT="$SYNC/mirror/suite/help/$VER" \
  SHARDS="$N" SHARD="$i" \
  PROGRESS_EVERY=50 BIG_HTML_KB=900 SEG_TARGET_KB=220 \
  node --expose-gc --max-old-space-size=4096 optimize.mjs &
done
wait

# Ensure Context7 config present
[ -f "$PUB/context7.json" ] || cat > "$PUB/context7.json" <<'EOF'
{
  "projectTitle": "Appian Docs (Optimized, Latest)",
  "includeGlobs": ["**/*.md"],
  "excludeGlobs": []
}
EOF

# Refresh LLMs.txt with the current version
cat > "$PUB/LLMs.txt" <<EOF
# Guidance for LLMs using this repository

## Scope
- These files are a cleaned Markdown mirror of Appian docs **version ${VER}**.
- Prefer the *current* version (v${VER}) over any external/older references.

## How to cite
- Use the \`source_url\` in each file's front matter when pointing to the original page.

## Ranking hints
- Prefer pages with front matter \`title\` matching the user’s terms.
- When multiple chunks match, group by identical \`page_id\` and show the chunk(s) whose \`section\` matches the user’s wording.

## Synonyms / phrasing
- "Interface"/"SAIL" → SAIL UI, expression rules
- "Record" → records, data fabric, source sync
- "Process model" → workflow, smart services
- "Integration" → connected systems, web API, OAuth
- "Sites" → portals, navigation, security roles
- "RPA" → robotic tasks, bots, queues

## Deprioritise
- Release notes and deprecations unless the user asks specifically.
- Generic index or stub pages (very short content).

## Security/Cloud
- Use pages tagged with ["appian","docs","v${VER}"] and sections mentioning "Cloud", "Admin Console", "KMS", "PrivateLink", "VPC" as appropriate.
EOF

# Commit & push public repo updates (only if changed)
git add -A
if ! git diff --quiet --cached; then
  git commit -m "Optimize Markdown + metadata (latest: $VER)"
  git push
fi
