#!/usr/bin/env bash
set -euo pipefail
PUB="$HOME/appian-docs"
SYNC="$HOME/appian-doc-sync"
VER="$(cat "$SYNC/CURRENT_VERSION.txt")"

cd "$PUB"
# install deps if missing (safe to run repeatedly)
if ! node -e "require('jsdom');require('turndown');require('turndown-plugin-gfm')" >/dev/null 2>&1; then
  echo "Installing optimizer deps..."
  echo 'node_modules' >> .gitignore
  npm i jsdom turndown turndown-plugin-gfm
fi

# choose shard count (<= cores)
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

# ensure Context7 config present
[ -f "$PUB/context7.json" ] || cat > "$PUB/context7.json" <<'EOF'
{
  "projectTitle": "Appian Docs (Optimized, Latest)",
  "includeGlobs": ["**/*.md"],
  "excludeGlobs": []
}
EOF

# commit & push public repo updates
git add -A
if ! git diff --quiet --cached; then
  git commit -m "Optimize Markdown (latest: $VER)"
  git push
fi
