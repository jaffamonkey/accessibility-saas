#!/usr/bin/env bash
set -euo pipefail

if [ -d "themes/blowfish/.git" ]; then
  echo "Blowfish theme already present. Pulling latest main..."
  git -C themes/blowfish pull --ff-only
else
  rm -rf themes/blowfish
  git clone --depth 1 --branch main https://github.com/nunocoracao/blowfish.git themes/blowfish
fi

echo "Done. Run: hugo server"
