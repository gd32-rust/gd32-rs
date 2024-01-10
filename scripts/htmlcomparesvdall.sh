#!/usr/bin/env bash
set -euxo pipefail

mkdir -p html/gd32
python3 scripts/htmlcomparesvd.py html/gd32 svd/gd32*.svd.patched

mkdir -p html/gd32c1
python3 scripts/htmlcomparesvd.py html/gd32c1 svd/gd32c1*.svd.patched
mkdir -p html/gd32e1
python3 scripts/htmlcomparesvd.py html/gd32e1 svd/gd32e1*.svd.patched
mkdir -p html/gd32e2
python3 scripts/htmlcomparesvd.py html/gd32e2 svd/gd32e2*.svd.patched
mkdir -p html/gd32e5
python3 scripts/htmlcomparesvd.py html/gd32e5 svd/gd32e5*.svd.patched
mkdir -p html/gd32f1
python3 scripts/htmlcomparesvd.py html/gd32f1 svd/gd32f1*.svd.patched
mkdir -p html/gd32f2
python3 scripts/htmlcomparesvd.py html/gd32f2 svd/gd32f2*.svd.patched
mkdir -p html/gd32f3
python3 scripts/htmlcomparesvd.py html/gd32f3 svd/gd32f3*.svd.patched

cat > html/comparisons.html <<EOF
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name=viewport content="width=device-width, initial-scale=1">
<title>gd32-rs Peripheral Comparisons</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">gd32-rs Device Coverage</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Peripheral Comparisons</a></li>
      </ul>
    </div>
  </div>
</nav>

<h1>Device families</h1>
<ul>
  <li><a href="gd32/index.html">GD32 overview</a></li>
  <li><a href="gd32c1/index.html">GD32C1</a></li>
  <li><a href="gd32e1/index.html">GD32E1</a></li>
  <li><a href="gd32e2/index.html">GD32E2</a></li>
  <li><a href="gd32e5/index.html">GD32E5</a></li>
  <li><a href="gd32f1/index.html">GD32F1</a></li>
  <li><a href="gd32f2/index.html">GD32F2</a></li>
  <li><a href="gd32f3/index.html">GD32F3</a></li>
</ul>
</body>
</html>
EOF
