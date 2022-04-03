# Install Chocolatey
Set-ExecutionPolicy Bypass
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -ErrorAction Stop;

# Set PC name 
$computername = "name"
if ($env:computername -ne $computername) {
    Rename-Computer -NewName $computername
}

choco install -y insomnia-rest-api-client
# Install nvm from https://github.com/coreybutler/nvm-windows/releases
choco install -y jetbrainstoolbox
choco install -y git.install --params '"/GitOnlyOnPath /NoShellIntegration"'    

#Removes the conflicting powershell alias 
Remove-Item Alias:wget
choco install -y sysinternals
choco install -y vscode
choco install -y googlechrome.dev
choco install -y bitwarden
choco install -y docker-for-windows
choco install -y cmdermini
choco install -y discord
choco install -y spotify
choco install -y dropbox
choco install -y adobereader
choco install -y 7zip.install

choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures
choco install wget
choco install -y php --params '"/ThreadSafe /InstallDir:C:\PHP"'
choco install -y composer ngrok
choco pin add --name composer
choco install -y apache-httpd --params '"/installLocation:C:\Apache"'
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
$host.ui.RawUI.WindowTitle = "Title"


Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TaskbarOptions -Size Small -Dock Bottom -Combine Full -Lock
Set-TaskbarOptions -Size Small -Dock Bottom -Combine Full -AlwaysShowIconsOn

# Disable Xbox Gamebar
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" -Name AppCaptureEnabled -Type DWord -Value 0
Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name GameDVR_Enabled -Type DWord -Value 0

# Privacy: Let apps use my advertising ID: Disable
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -Type DWord -Value 0
# To Restore:
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -Type DWord -Value 1


#random
$env:Path += ";YourPathHere"
function  google {
    $link = Read-Host "Search"       
    $res = urbrowser https://www.google.com/search?q=$link 

}

function  youtube {
    $videolink = Read-Host "video name"        
    $vid = urbrowser https://www.youtube.com/results?search_query=$videolink 

}
