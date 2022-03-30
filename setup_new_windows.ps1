Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

if ( Get-Command "scoop" -ErrorAction SilentlyContinue -eq $null) {
    scoop update
} else {
    iwr -useb get.scoop.sh | iex 
}

scoop install winget sudo wget curl winfetch

[System.IO.File]::WriteAllLines($profile, "clear`nwinfetch")

winget install --silent --accept-package-agreements --accept-source-agreements -e "Mojang.MinecraftLauncher"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VisualStudio.2019.BuildTools"
winget install --silent --accept-package-agreements --accept-source-agreements -e "CPUID.HWMonitor"
winget install --silent --accept-package-agreements --accept-source-agreements -e "CrystalDewWorld.CrystalDiskMark.ShizukuEdition"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Discord.Discord.Canary"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Figma.Figma"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Figma.fonthelper"
winget install --silent --accept-package-agreements --accept-source-agreements -e "TimKosse.FileZilla.Client"
winget install --silent --accept-package-agreements --accept-source-agreements -e "GitHub.GitHubDesktop"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Git.Git"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.EdgeWebView2Runtime"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.WindowsTerminal"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Insecure.Nmap"
winget install --silent --accept-package-agreements --accept-source-agreements -e "OBSProject.OBSStudio"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Parsec.Parsec"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Valve.Steam"
winget install --silent --accept-package-agreements --accept-source-agreements -e "TeamSpeakSystems.TeamSpeakClient"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Ubisoft.Connect"
winget install --silent --accept-package-agreements --accept-source-agreements -e "7zip.7zip"
winget install --silent --accept-package-agreements --accept-source-agreements -e "RARLab.WinRAR"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VisualStudio.2019.Community"
winget install --silent --accept-package-agreements --accept-source-agreements -e "PeterPawlowski.foobar2000"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Insomnia.Insomnia"
winget install --silent --accept-package-agreements --accept-source-agreements -e "qBittorrent.qBittorrent"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Python.Python.2"
winget install --silent --accept-package-agreements --accept-source-agreements -e "VideoLAN.VLC"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2010Redist-x64"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Python.Python.3"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Oracle.JavaRuntimeEnvironment"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Google.Chrome"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2015-2022Redist-x64"
winget install --silent --accept-package-agreements --accept-source-agreements -e "OpenJS.NodeJS"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Python.Python.3"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Peppy.Osu!"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.WindowsSDK"
winget install --silent --accept-package-agreements --accept-source-agreements -e "MongoDB.Compass.Full"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2008Redist-x64"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2005Redist-x86"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VisualStudioCode"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2008Redist-x86"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.XNARedist"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2010Redist-x86"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2005Redist-x64"
winget install --silent --accept-package-agreements --accept-source-agreements -e "Microsoft.VC++2015-2019Redist-x86"
winget uninstall --silent Microsoft.WindowsPCHealthCheck
winget uninstall --silent Microsoft.Wallet_8wekyb3d8bbwe
winget uninstall --silent "Microsoft Edge Update"
winget uninstall --silent Microsoft.BingWeather_8wekyb3d8bbwe
winget uninstall --silent Microsoft.EdgeWebView2Runtime
winget uninstall --silent Microsoft.Edge
winget uninstall --silent Microsoft.WindowsMaps_8wekyb3d8bbwe
winget uninstall --silent Microsoft.OneDrive
winget uninstall --silent Microsoft.GetHelp_8wekyb3d8bbwe
winget uninstall --silent --name "Microsoft Update Health Tools"
winget uninstall --silent --name "Microsoft Edge Update"
winget uninstall --silent Microsoft.549981C3F5F10_8wekyb3d8bbwe
winget uninstall --silent Microsoft.Getstarted_8wekyb3d8bbwe