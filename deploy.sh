#!/bin/bash
cd ~/DailyRepo/FinanceMindSite
git add .
git commit -m "content: weekly update $(date +%Y-W%V)"
git push origin v5
echo ""
echo "✅ 已推送，约2分钟后访问以下地址查看更新："
echo "   https://ppnostalgia.github.io/knowledge-site/"
