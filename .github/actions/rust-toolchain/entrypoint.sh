#!/bin/bash
set -euo pipefail

cd $GITHUB_WORKSPACE
echo "Run: $*"
bash -c "$*"
