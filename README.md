# AWS Toolkit

This repository contains useful **Bash** and **PowerShell** scripts to automate and simplify working with AWS services. It includes tools for AWS CLI updates, cost monitoring, and certificate status checks.

> ✅ Ideal for DevOps, SecOps, or developers who manage AWS infrastructure regularly.

---

## 📁 Contents

- [Scripts](#scripts)
  - [AWS CLI Auto-Updater](#aws-cli-auto-updater)
  - [AWS Cost Monitoring](#aws-cost-monitoring)
  - [Certificate Monitoring](#certificate-monitoring)
- [Usage](#usage)
- [Security](#security)
- [Contributing](#contributing)
- [License](#license)

---

## 🧰 Scripts

### AWS CLI Auto-Updater

- `awscli-updater.sh`: Automatically checks and installs the latest version of the AWS CLI v2 on Linux/WSL systems. Can be scheduled via `cron`.

---

### AWS Cost Monitoring

- `aws-cost-actual.sh`: Retrieves your **actual AWS costs** for the current month using AWS Cost Explorer.
- `aws-cost-forecast.sh`: Displays a **forecast of expected monthly AWS costs** based on current usage trends.

---

### Certificate Monitoring

- `aws-cert-status.sh` / `aws-cert-status.ps1`: Checks the status of ACM (AWS Certificate Manager) certificates — useful for DNS validation monitoring.
- `check-expiry.sh` / `check-expiry.ps1`: Lists certificate expiration dates and alerts for those expiring soon.

---

## 🚀 Usage

### 1. Clone the Repository

```bash
git clone https://github.com/rob-git-user/aws-toolkit.git
cd aws-toolkit
