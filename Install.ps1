# --> https://github.com/TXG0Fk3 <-- #

# Windows Post-Install Script for my Windows-Dots

<### FUNCTIONS ###>
function Create-StartupShortcut {
    param (
        [string]$FilePath,
        [string]$Args = ""
    )

    $shortcutName = [System.IO.Path]::GetFileNameWithoutExtension($FilePath) + ".lnk"
    $shortcutPath = [System.IO.Path]::Combine($env:USERPROFILE, "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup", $shortcutName)

    $WScriptShell = New-Object -ComObject WScript.Shell
    
    $shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
    $shortcut.TargetPath = $FilePath
    
    if ($Args) {
        $shortcut.Arguments = $Args
    }
    
    $shortcut.Save()
    
    Write-Output "New Startup Shortcut created in: $ShortcutPath"
}

<#### MAIN ####>

<### Installing Main Softwares ###>
winget install amn.yasb LGUG2Z.komorebi LGUG2Z.whkd JanDeDobbeleer.OhMyPosh Microsoft.Powershell Fastfetch


<### Installing Fonts ###>
$source = "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip" # Font URL
$destination = "$env:USERPROFILE\Downloads"
$zipFile = "JetBrainsMono.zip"

Invoke-WebRequest -Uri $source -OutFile "$destination\$zipFile" # Download Font

Expand-Archive -Path "$destination\$zipFile" -DestinationPath "$destination\JetBrainsMono" # Extract ZIP File

$fontsPath = "$env:USERPROFILE\Downloads\JetBrainsMono"
$fonts = Get-ChildItem -Path $fontsPath -Filter *.ttf # Get all .ttf files

$shell = New-Object -ComObject Shell.Application
$windowsFontsFolder = $shell.Namespace(0x14) # Get Windows fonts folder

# Install fonts
foreach ($font in $fonts) {
    $fontFile = $font.FullName
    $windowsFontsFolder.CopyHere($fontFile)
}

Remove-Item -Path "$destination\$zipFile" # Remove residual files
Remove-Item -Path $fontsPath -Recurse


<### Loading Config Files ###>
Copy-Item -Path "$PSScriptRoot\Config\UserProfile\*" -Destination "$env:USERPROFILE" -Recurse -Force
$documentsPath = [System.Environment]::GetFolderPath("MyDocuments")
Copy-Item -Path "$PSScriptRoot\Config\Documents\*" -Destination $documentsPath -Recurse -Force

# Create Startup Shortcuts
Create-StartupShortcut -FilePath "C:\Program Files\komorebi\bin\komorebic-no-console.exe" -Args "start --whkd"
Create-StartupShortcut -FilePath "C:\Program Files\Yasb\yasb.exe"