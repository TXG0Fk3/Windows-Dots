<div align="center">
    <h1> TXG0Fk3's Windows DotFiles </h1>
    <h3></h3>
</div>

<div align="center">

![GitHub Repo stars](https://img.shields.io/github/stars/TXG0Fk3/Windows-Dots?style=for-the-badge&color=ff94bc)
![GitHub last commit](https://img.shields.io/github/last-commit/TXG0Fk3/Windows-Dots?style=for-the-badge&color=ff94bc)
![GitHub repo size](https://img.shields.io/github/repo-size/TXG0Fk3/Windows-Dots?style=for-the-badge&color=ff94bc)
<br/>
</div>

<div align="center">
    <h2>Features</h2>
    <h3></h3>
</div>

- [Komorebi](https://github.com/LGUG2Z/komorebi) with smooth animations, seven BSP workspaces, colored borders, transparency and various window rules;
- [WHKD](https://github.com/LGUG2Z/whkd) for keybindings;
- [Yasb](https://github.com/amnweb/yasb) with one of the default themes and some modifications to the widgets;
- [Powershell](https://github.com/PowerShell/PowerShell) with custom prompt using [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh);
- [Fastfetch](https://github.com/fastfetch-cli/fastfetch) with custom fetching information.

<div align="center">
    <h2>Config Files Overview</h2>
    <h3></h3>
</div>

<details> 
  <summary>Komorebi</summary>

- [Config](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/UserProfile/komorebi.json)
- [Window Rules](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/UserProfile/applications.json)

</details>

<details> 
  <summary>WHKD</summary>

- [Config](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/UserProfile/.config/whkdrc)

</details>

<details> 
  <summary>Yasb</summary>

- [Config](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/UserProfile/.config/yasb/config.yaml)
- [Theme](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/UserProfile/.config/yasb/styles.css)

</details>

<details> 
  <summary>Windows Terminal</summary>

- [Config](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/UserProfile/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json)

</details>

<details> 
  <summary>Powershell</summary>

- [Powershell 7](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/Documents/PowerShell/Microsoft.PowerShell_profile.ps1)
- [Powershell 5](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/Documents/WindowsPowerShell/profile.ps1)

</details>

<details> 
  <summary>Fastfetch</summary>
  
- [Config](https://github.com/TXG0Fk3/Windows-Dots/blob/main/Config/UserProfile/AppData/Roaming/Fastfetch/config.jsonc)

</details>

<div align="center">
    <h2>Screenshots</h2>
    <h3></h3>
</div>

![image](https://github.com/user-attachments/assets/c690b42e-c840-4f83-aadb-2f66002b0908)
![image](https://github.com/user-attachments/assets/16df2275-dbb7-403d-a216-90879ab5f2e3)


<div align="center">
    <h2>Installation</h2>
    <h3></h3>
</div>

- Open Windows Terminal with admin privileges.
- Clone repositorie in your computer.
    - You can use Git (You need Git in your system `winget install Git.Git`):
        ```powershell
        git clone --depth=1 https://github.com/TXG0Fk3/Windows-Dots
        cd Windows-Dots
        ```
- Allow scripts to run:
    ```powershell
    Set-ExecutionPolicy Unrestricted
    ```
- Run the auto-install script:
    ```powershell
    .\install.ps1
    ```

### !! What does the installer do? !!
Basically it installs the programs mentioned in the **FEATURES** section, installs the **JetBrainsMono Nerd Font** and copies the config files to their respective folders. 

### Other Softwares
```powershell
winget install Discord.Discord Valve.Steam EpicGames.EpicGamesLauncher Microsoft.PowerToys vscode Microsoft.VisualStudio.2022.Community.Preview Vim.Vim Oracle.VirtualBox Git.Git Spotify.Spotify
Meltytech.Shotcut OBSProject.OBSStudio
```
