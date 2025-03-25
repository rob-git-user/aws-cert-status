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

### AWS Cost Monitoring

- `aws-cost-actual.sh`: Retrieves your **actual AWS costs** for the current month using AWS Cost Explorer.
- `aws-cost-forecast.sh`: Displays a **forecast of expected monthly AWS costs** based on current usage trends.

### Certificate Monitoring

- `aws-cert-status.sh` / `aws-cert-status.ps1`: Checks the status of ACM (AWS Certificate Manager) certificates — useful for DNS validation monitoring.
- `check-expiry.sh` / `check-expiry.ps1`: Lists certificate expiration dates and alerts for those expiring soon.

---

## 🚀 Usage

### 1. Make Scripts Executable (Linux/macOS/WSL)

    ```bash
    chmod +x *.sh
    ```

### 2. Run the Scripts

**Update AWS CLI:**

    ```bash
    ./awscli-updater.sh
    ```

**Check actual monthly AWS costs:**

    ```bash
    ./aws-cost-actual.sh
    ```

**Get monthly AWS cost forecast:**

    ```bash
    ./aws-cost-forecast.sh
    ```

**Monitor ACM certificate status:**

    ```bash
    ./aws-cert-status.sh
    ```

**Check certificate expiry:**

    ```bash
    ./check-expiry.sh
    ```

> ⚙️ PowerShell scripts (`*.ps1`) are designed for Windows users and require `AWS.Tools` or `AWSPowerShell` modules.

---

## 🔒 Security

Please review the [SECURITY.md](SECURITY.md) file for information about security practices, disclosures, and safe usage of the tools in this repository.

---

## 🤝 Contributing

Pull requests are welcome!

To contribute:

1. Fork the repository

2. Create a new feature branch:

    ```bash
    git checkout -b feature/my-feature
    ```

3. Commit your changes:

    ```bash
    git commit -am "Add new feature"
    ```

4. Push the branch:

    ```bash
    git push origin feature/my-feature
    ```

5. Open a Pull Request

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).  
Use freely and modify responsibly. 😎

---

## 📬 Contact

Maintained by [rob-git-user](https://github.com/rob-git-user)  
Feel free to open [issues](https://github.com/rob-git-user/aws-toolkit/issues) for bugs, feature requests, or questions.
