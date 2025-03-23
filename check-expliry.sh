#!/bin/bash

# File: check-expiry.sh
# Description: Check the expiry date of all ACM certificates in the account
# Usage: ./check-expiry.sh
# Requirements: aws-cli, jq

REGION="us-east-1"

aws acm list-certificates --region $REGION --query "CertificateSummaryList[*].CertificateArn" --output text | while read ARN; do
    EXPIRY=$(aws acm describe-certificate --region $REGION --certificate-arn $ARN \
        --query "Certificate.NotAfter" --output text)

    DOMAIN=$(aws acm describe-certificate --region $REGION --certificate-arn $ARN \
        --query "Certificate.DomainName" --output text)

    DAYS_LEFT=$((($(date -d "$EXPIRY" +%s) - $(date +%s)) / 86400))

    echo "🔐 $DOMAIN: expires in $DAYS_LEFT days ($EXPIRY)"
done
