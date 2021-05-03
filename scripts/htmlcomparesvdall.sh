#!/usr/bin/env bash
set -euxo pipefail

mkdir html

mkdir html/gd32f
python3 scripts/htmlcomparesvd.py svd/gd32f*.svd.patched
mv html/*.html html/gd32f

cat > html/index.html <<EOF
<!DOCTYPE html>
<a href="gd32f/index.html">GD32F</a><br>
EOF
