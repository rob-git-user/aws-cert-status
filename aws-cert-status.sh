#!/bin/bash

# File: watch-cert.sh
# Description: Watch the status of an ACM certificate

CERT_ARN=$(cat cert-arn.txt)
REGION="us-east-1"

echo "📡 Watching certificate status..."
echo "Certificate ARN: $CERT_ARN"
echo "Region: $REGION"

while true; do
    STATUS=$(aws acm describe-certificate \
        --region "$REGION" \
        --certificate-arn "$CERT_ARN" \
        --query "Certificate.Status" \
        --output text)

    echo "$(date +'%H:%M:%S') → Status: $STATUS"

    if [ "$STATUS" == "ISSUED" ]; then
        echo "✅ Certificate is ISSUED. Ready to proceed!"
        break
    fi

    sleep 120
done
