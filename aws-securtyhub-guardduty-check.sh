#!/bin/bash

regions=(
  "us-east-1" "us-east-2" "us-west-1" "us-west-2"
  "ca-central-1" "eu-central-1" "eu-west-1" "eu-west-2" "eu-west-3"
  "eu-north-1" "eu-south-1" "ap-southeast-1" "ap-southeast-2"
  "ap-northeast-1" "ap-northeast-2" "ap-south-1" "sa-east-1"
)

printf "%-20s %-15s %-15s\n" "Region" "SecurityHub" "GuardDuty"
echo "--------------------------------------------------------------"

for region in "${regions[@]}"; do
  # Check SecurityHub
  sh_output=$(aws securityhub get-enabled-standards --region "$region" 2>&1)
  if echo "$sh_output" | grep -q "not subscribed"; then
    sh_status="DISABLED"
  elif echo "$sh_output" | grep -q "InvalidAccessException"; then
    sh_status="DISABLED"
  else
    sh_status="ENABLED"
  fi

  # Check GuardDuty
  gd_output=$(aws guardduty list-detectors --region "$region" --output text 2>/dev/null)
  if [ -z "$gd_output" ]; then
    gd_status="DISABLED"
  else
    gd_status="ENABLED"
  fi

  printf "%-20s %-15s %-15s\n" "$region" "$sh_status" "$gd_status"
done
