# Install Chocolatey
Set-ExecutionPolicy Bypass
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -ErrorAction Stop;

choco install -y insomnia-rest-api-client
# Install nvm from https://github.com/coreybutler/nvm-windows/releases
choco install -y jetbrainstoolbox
choco install -y git.install --params '"/GitOnlyOnPath /NoShellIntegration"'    

#Removes the conflicting powershell alias 
Remove-Item Alias:wget
choco install wget
choco install -y php --params '"/ThreadSafe /InstallDir:C:\PHP"'
choco install -y composer ngrok
choco pin add --name composer
choco install -y apache-httpd --params '"/installLocation:C:\Apache"'
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
$host.ui.RawUI.WindowTitle = "Title"

$env:Path += ";YourPathHere"
