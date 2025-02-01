# --> https://github.com/TXG0Fk3 <-- #

# Windows Post-Install Script for my Windows-Dots


## Installing Main Softwares ##
winget install amn.yasb LGUG2Z.komorebi LGUG2Z.whkd JanDeDobbeleer.OhMyPosh Microsoft.Powershell Fastfetch


## Installing Fonts ##
$source = "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip" # Font URL
$destination = "$env:USERPROFILE\Downloads"
$zipFile = "JetBrainsMono.zip"

Invoke-WebRequest -Uri $source -OutFile "$destination\$zipFile" # Download Font

Expand-Archive -Path "$destination\$zipFile" -DestinationPath "$destination\JetBrainsMono" # Extract ZIP File

$fontsPath = "$env:USERPROFILE\Downloads\JetBrainsMono"
$fonts = Get-ChildItem -Path $fontsPath -Filter *.ttf # Get all .ttf files

$shell = New-Object -ComObject Shell.Application
$folder = $shell.Namespace(0x14) # Get Windows fonts folder

foreach ($font in $fonts) { # Install fonts
    $fontFile = $font.FullName
    $folder.CopyHere($fontFile)
}

Remove-Item -Path "$destination\$zipFile" # Remove residual files
Remove-Item -Path $fontsPath -Recurse

## Loading Config Files ##
    #TODO
