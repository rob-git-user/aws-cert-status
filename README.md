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
```
### 2. Make Scripts Executable (Linux/macOS/WSL)
`chmod +x *.sh`

### 3. Run the Scripts
Examples:

Update AWS CLI:
`./awscli-updater.sh`

Check actual monthly AWS costs:
`./aws-cost-actual.sh`

Get monthly AWS cost forecast:
`./aws-cost-forecast.sh`

Monitor ACM certificate status:
`./aws-cert-status.sh`

Check certificate expiry:
`./check-expiry.sh`

⚙️ PowerShell scripts are for Windows users (.ps1), and require AWS.Tools or AWSPowerShell modules.

## 🔒 Security
Please review the SECURITY.md file for information about security practices, disclosures, and safe usage of the tools in this repository.

## 🤝 Contributing
Pull requests are welcome!

To contribute:

Fork the repository

Create a new feature branch (git checkout -b feature/my-feature)

Commit your changes (git commit -am 'Add new feature')

Push the branch (git push origin feature/my-feature)

Open a Pull Request on GitHub

## 📄 License
This project is licensed under the MIT License.

Use freely and modify responsibly. 😎

## 📬 Contact
Maintained by rob-git-user.
Feel free to open issues or suggestions via GitHub Issues.
