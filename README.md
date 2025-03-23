# AWS Certificate Monitoring Scripts

This repository contains PowerShell and Bash utilities for monitoring AWS ACM (Amazon Certificate Manager) certificates — including issuance status, expiration tracking, and more.

---

## 🔍 Scripts Included

### ✅ `watch-cert.ps1`
Monitors the status of a single ACM certificate until it becomes `ISSUED`. Useful for setups with DNS validation (e.g. CloudFront + GoDaddy domains).

#### Usage

1. Store your ACM certificate ARN in a file:

```txt
# cert-arn.txt
arn:aws:acm:us-east-1:XXXXXXXXXXXX:certificate/abcde-1234-...
