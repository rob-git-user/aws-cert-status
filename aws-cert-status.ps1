# aws-cert-status.ps1
# ARN is in file cert-arn.txt
# Usage: powershell -File aws-cert-status.ps1
$certArn = Get-Content -Path "./cert-arn.txt"

Write-Host "📡 ACM cert monitoring has started..."
Write-Host "----------------------------"

do {
    $status = aws acm describe-certificate `
        --region us-east-1 `
        --certificate-arn $certArn `
        --query "Certificate.Status" `
        --output text

    $now = Get-Date -Format "HH:mm:ss"
    Write-Host "$now → Státusz: $status"

    if ($status -ne "ISSUED") {
        Start-Sleep -Seconds 120
    }

} while ($status -ne "ISSUED")

Write-Host "✅ Certificate is ISSUED. Ready to proceed! 🚀"
