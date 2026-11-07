#!/usr/bin/env bash
set -euo pipefail
mkdir -p dist/sites/grenada
tar --exclude='./.git' --exclude='./dist' --exclude='./functions' --exclude='./scripts' --exclude='./.github' --exclude='*.md' -cf - . | tar -xf - -C dist/sites/grenada
for item in belize:belize bonaire:bonaire jamaica:jamaica bermuda:bermuda miami:miami nyc:nyc la:la uk:UK stmartin:smx; do
  market="$(printf '%s' "$item" | cut -d: -f1)"
  repo="$(printf '%s' "$item" | cut -d: -f2)"
  temp="$(mktemp -d)"
  echo "Syncing $repo to $market"
  git clone --quiet --depth=1 --single-branch --branch main "https://github.com/PearsonLegacyVentures/$repo.git" "$temp/repo"
  mkdir -p "dist/sites/$market"
  tar -C "$temp/repo" --exclude='./.git' --exclude='./functions' --exclude='./.github' --exclude='*.md' -cf - . | tar -xf - -C "dist/sites/$market"
  rm -rf "$temp"
done
cat >dist/_headers <<'EOF'
/*
  X-Content-Type-Options: nosniff
  X-Frame-Options: DENY
  Referrer-Policy: strict-origin-when-cross-origin
  Permissions-Policy: camera=(), microphone=(), geolocation=()
EOF
cat >dist/_routes.json <<'EOF'
{"version":1,"include":["/*"],"exclude":[]}
EOF
cat >dist/404.html <<'EOF'
<!doctype html><html lang="en"><meta charset="utf-8"><meta name="robots" content="noindex"><title>Page unavailable | Tranquilitas</title><body style="font-family:system-ui;padding:2rem"><h1>Page not found</h1><p>Return to your Tranquilitas destination website.</p><a href="https://www.tranquilitasspa.com/">Visit Tranquilitas</a></body></html>
EOF
pages="$(find dist/sites -name index.html | wc -l | tr -d ' ')"
echo "Prepared $pages pages across ten websites."
test "$pages" -ge 235
