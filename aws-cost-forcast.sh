aws ce get-cost-forecast \
    --time-period Start=$(date +%Y-%m-%d),End=$(date -d "$(date +%Y-%m-01) +1 month -1 day" +%Y-%m-%d) \
    --metric "UNBLENDED_COST" \
    --granularity MONTHLY
