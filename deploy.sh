#!/bin/bash
# FinVault – GitHub Pages Deploy Script
# Usage: ./deploy.sh
# Requires: git configured with your GitHub credentials

set -e

REPO_DIR="$(dirname "$0")"
cd "$REPO_DIR"

echo "📦 Deploying FinVault to GitHub Pages..."

# Stage and commit
git add index.html
git commit -m "deploy: $(date '+%Y-%m-%d %H:%M') v2.4"

# Push
git push origin main

echo ""
echo "✅ Deployed! Live at: https://crl314.github.io/finvault/"
echo "   (GitHub Pages may take 1-2 minutes to update)"
