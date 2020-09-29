#!/bin/sh
set -e

echo "[🐼] Check HEAD commit has tag..."
git describe --exact-match HEAD

echo "[🐼] Tests, lints..."
npm run pre-push

echo "[🐼] Build..."
npm run build