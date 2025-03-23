# File: check-expiry.ps1
# Usage: powershell -File check-expiry.ps1
# This script lists all certificates in the us-east-1 region and their expiry dates.
# It also calculates the number of days left until the certificate expires.

$region = "us-east-1"
$certs = aws acm list-certificates --region $region | ConvertFrom-Json

foreach ($cert in $certs.CertificateSummaryList) {
    $detail = aws acm describe-certificate `
        --region $region `
        --certificate-arn $cert.CertificateArn | ConvertFrom-Json

    $notAfter = [datetime]$detail.Certificate.NotAfter
    $now = Get-Date
    $daysLeft = ($notAfter - $now).Days

    Write-Host "🔐 $($cert.DomainName): expires in $daysLeft days ($notAfter)"
}
