Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

if ( Get-Command "scoop" -ErrorAction SilentlyContinue -eq $null) {
    scoop update
} else {
    iwr -useb get.scoop.sh | iex 
}

scoop install winget sudo wget curl winfetch

[System.IO.File]::WriteAllLines($profile, "clear`nwinfetch")

function install_app(name) {
  winget install --silent --accept-package-agreements --accept-source-agreements -e $name  
}

install_app("Mojang.MinecraftLauncher")
install_app("Microsoft.VisualStudio.2019.BuildTools")
install_app("CPUID.HWMonitor")
install_app("CrystalDewWorld.CrystalDiskMark.ShizukuEdition")
install_app("Discord.Discord.Canary")
install_app("Figma.Figma")
install_app("Figma.fonthelper")
install_app("TimKosse.FileZilla.Client")
install_app("GitHub.GitHubDesktop")
install_app("Git.Git")
install_app("Microsoft.WindowsTerminal")
install_app("Insecure.Nmap")
install_app("OBSProject.OBSStudio")
install_app("Parsec.Parsec")
install_app("Valve.Steam")
install_app("TeamSpeakSystems.TeamSpeakClient")
install_app("Ubisoft.Connect")
install_app("7zip.7zip")
install_app("RARLab.WinRAR")
install_app("Microsoft.VisualStudio.2019.Community")
install_app("PeterPawlowski.foobar2000")
install_app("Insomnia.Insomnia")
install_app("qBittorrent.qBittorrent")
install_app("Python.Python.2")
install_app("VideoLAN.VLC")
install_app("Microsoft.VC++2010Redist-x64")
install_app("Python.Python.3")
install_app("Oracle.JavaRuntimeEnvironment")
install_app("Google.Chrome")
install_app("Microsoft.VC++2015-2022Redist-x64")
install_app("OpenJS.NodeJS")
install_app("Python.Python.3")
install_app("Peppy.Osu!")
install_app("Microsoft.WindowsSDK")
install_app("MongoDB.Compass.Full")
install_app("Microsoft.VC++2008Redist-x64")
install_app("Microsoft.VC++2005Redist-x86")
install_app("Microsoft.VisualStudioCode")
install_app("Microsoft.VC++2008Redist-x86")
install_app("Microsoft.XNARedist")
install_app("Microsoft.VC++2010Redist-x86")
install_app("Microsoft.VC++2005Redist-x64")
install_app("Microsoft.VC++2015-2019Redist-x86")
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