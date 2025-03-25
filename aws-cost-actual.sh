aws ce get-cost-and-usage \
    --time-period Start=$(date +%Y-%m-01),End=$(date -d "$(date +%Y-%m-01) +1 month" +%Y-%m-01) \
    --granularity MONTHLY \
    --metrics "AmortizedCost" \
    --region us-east-1
