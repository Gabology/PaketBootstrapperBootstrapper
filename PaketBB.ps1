# Create .paket folder and navigate to it
mkdir .paket
cd .paket

# This link should not die, hopefully.
$paketBootstraperURL = "https://github.com/fsprojects/Paket/releases/download/2.66.9/paket.bootstrapper.exe"


Write-Host "Downloading Paket Bootstraper..." -ForegroundColor Magenta
Invoke-WebRequest -Uri $paketBootstraperURL -Method Get -OutFile "./paket.bootstrapper.exe"

Write-Host "Successfully downloaded Paket Bootstrapper, running..." -ForegroundColor Green

& "./paket.bootstrapper.exe"