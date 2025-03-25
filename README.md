# AWS Certificate Monitoring Scripts

This repository contains PowerShell and Bash utilities for monitoring AWS ACM (Amazon Certificate Manager) certificates — including issuance status, expiration tracking, and more.

---

## 🔍 Scripts Included

### ✅ `watch-cert.ps1`
Monitors the status of a single ACM certificate until it becomes `ISSUED`. Useful for setups with DNS validation (e.g. CloudFront + GoDaddy domains).

#### Usage

1. Store your ACM certificate ARN in a file:

```txt
cert-arn.txt
arn:aws:acm:us-east-1:XXXXXXXXXXXX:certificate/abcde-1234-...
----#

# AWS CLI v2 Auto-Updater for Linux (WSL/Ubuntu)

This simple Bash script automatically checks for updates and installs the latest version of **AWS CLI v2** on Linux systems (e.g., Ubuntu or WSL2).

> 💡 Ideal for keeping your AWS CLI up to date when it was installed via the official installer (not `apt`).

---

## 📦 Features

- ✅ Detects currently installed AWS CLI version
- 🔍 Compares it with the latest available version
- 🔄 Automatically updates if a newer version is found
- 🧹 Cleans up after itself
- 🕒 Can be scheduled with `cron` for automatic monthly updates

---

## 🛠️ Usage

### 1. Clone or download this script

```bash
curl -O https://raw.githubusercontent.com/YOUR_USERNAME/awscli-updater/main/awscli-updater.sh
chmod +x awscli-updater.sh
