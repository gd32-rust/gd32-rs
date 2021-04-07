#!/usr/bin/env bash
set -euxo pipefail

mkdir html

mkdir html/gd32f
python3 scripts/htmlcomparesvd.py svd/gd32f{130,170}.svd.patched
sed -i 's#<table>#<p>Only a representative member of each family included; click to view entire family</p><table>#' html/index.html
sed -i 's#gd32f130#<a href="gd32f1/index.html">GD32F130</a>#' html/index.html
sed -i 's#gd32f170#<a href="gd32f1/index.html">GD32F170</a>#' html/index.html
mv html/*.html html/gd32f

mkdir html/gd32f/gd32f1
python3 scripts/htmlcomparesvd.py svd/gd32f1*.svd.patched
mv html/*.html html/gd32f/gd32f1

cat > html/index.html <<EOF
<!DOCTYPE html>
<a href="gd32f/index.html">GD32F</a><br>
EOF
