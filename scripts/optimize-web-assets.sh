#!/usr/bin/env bash
set -euo pipefail

# Keep master assets untouched. This script only creates assets/web copies.
mkdir -p assets/web

find assets -path 'assets/web' -prune -o -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \) -print0 |
while IFS= read -r -d '' src; do
  rel="${src#assets/}"
  dst="assets/web/${rel%.*}.webp"
  mkdir -p "$(dirname "$dst")"
  # Keep the temporary filename's extension as .webp so ImageMagick writes WebP.
  tmp="${dst%.webp}.tmp.webp"
  convert "$src" \
    -resize '256x256>' \
    -define webp:method=6 \
    -define webp:alpha-quality=100 \
    -quality 92 \
    "$tmp"
  mv "$tmp" "$dst"
done
