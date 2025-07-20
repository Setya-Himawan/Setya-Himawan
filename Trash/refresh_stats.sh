#!/bin/bash

# GitHub Profile Stats Update Script
# This script can be used to refresh cache for all stats widgets

USERNAME="Setya-Himawan"
THEME="radical"

echo "🚀 Updating GitHub Profile Stats for $USERNAME..."

# Function to refresh stats cache
refresh_cache() {
    local service_url=$1
    local service_name=$2
    
    echo "📊 Refreshing $service_name cache..."
    curl -s "$service_url" > /dev/null
    
    if [ $? -eq 0 ]; then
        echo "✅ $service_name cache refreshed successfully"
    else
        echo "❌ Failed to refresh $service_name cache"
    fi
}

# Refresh GitHub Stats
refresh_cache "https://github-readme-stats.vercel.app/api?username=$USERNAME&show_icons=true&theme=$THEME&include_all_commits=true&count_private=true" "GitHub Stats"

# Refresh Language Stats
refresh_cache "https://github-readme-stats.vercel.app/api/top-langs/?username=$USERNAME&layout=compact&langs_count=8&theme=$THEME" "Language Stats"

# Refresh Streak Stats
refresh_cache "https://github-readme-streak-stats.herokuapp.com/?user=$USERNAME&theme=$THEME" "Streak Stats"

# Refresh Activity Graph
refresh_cache "https://github-readme-activity-graph.vercel.app/graph?username=$USERNAME&theme=react-dark&hide_border=true" "Activity Graph"

# Refresh Trophy Stats
refresh_cache "https://github-profile-trophy.vercel.app/?username=$USERNAME&theme=$THEME&row=1&column=7" "Trophy Stats"

# Refresh Profile Summary Cards
refresh_cache "https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=$USERNAME&theme=$THEME" "Profile Summary"

refresh_cache "https://github-profile-summary-cards.vercel.app/api/cards/repos-per-language?username=$USERNAME&theme=$THEME" "Repos per Language"

refresh_cache "https://github-profile-summary-cards.vercel.app/api/cards/most-commit-language?username=$USERNAME&theme=$THEME" "Most Commit Language"

echo ""
echo "🎉 All stats caches have been refreshed!"
echo "💡 Your GitHub profile README should now show updated statistics."
echo ""
echo "📝 To run this script automatically, you can:"
echo "   1. Add it to your crontab: '0 */6 * * * /path/to/refresh_stats.sh'"
echo "   2. Or run it manually whenever you want fresh stats"
echo ""
echo "🔗 Profile URL: https://github.com/$USERNAME"