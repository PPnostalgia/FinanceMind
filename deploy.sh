#!/bin/bash
# Push site code + trigger GitHub Actions build & deploy
set -e

cd ~/DailyRepo/FinanceMindSite

git add -A
git commit -m "deploy: weekly update $(date +%Y-W%V)" || echo "Nothing to commit"
git push origin main

echo ""
echo "✅ 已推送，GitHub Actions 正在构建，约 2 分钟后访问："
echo "   https://ppnostalgia.github.io/FinanceMind/"
echo ""
echo "⚠  记得同步 vault 内容到 PPnostalgia/FinanceMindObsidianRepo："
echo "   cd ~/DailyRepo/EconomistVault"
echo "   git add . && git commit -m 'content: W...' && git push"
