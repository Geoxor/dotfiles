Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

if ( Get-Command "scoop" -ErrorAction SilentlyContinue -eq $null) {
    scoop update
} else {
    iwr -useb get.scoop.sh | iex 
}

scoop install winget sudo wget curl winfetch

[System.IO.File]::WriteAllLines($profile, "clear`nwinfetch")

# make a function that takes in the app name and installs it
function install_app($name) {
  winget install --silent --accept-package-agreements --accept-source-agreements -e $name
}

# make an array of apps
$apps = @(
  "Mojang.MinecraftLauncher",
  "Microsoft.VisualStudio.2019.BuildTools",
  "CPUID.HWMonitor",
  "CrystalDewWorld.CrystalDiskMark.ShizukuEdition",
  "Discord.Discord.Canary",
  "Figma.Figma",
  "Figma.fonthelper",
  "TimKosse.FileZilla.Client",
  "GitHub.GitHubDesktop",
  "Git.Git",
  "Microsoft.WindowsTerminal",
  "Insecure.Nmap",
  "OBSProject.OBSStudio",
  "Parsec.Parsec",
  "Valve.Steam",
  "TeamSpeakSystems.TeamSpeakClient",
  "Ubisoft.Connect",
  "7zip.7zip",
  "RARLab.WinRAR",
  "Microsoft.VisualStudio.2019.Community",
  "PeterPawlowski.foobar2000",
  "Insomnia.Insomnia",
  "qBittorrent.qBittorrent",
  "Python.Python.2",
  "VideoLAN.VLC",
  "Microsoft.VC++2010Redist-x64",
  "Python.Python.3",
  "Oracle.JavaRuntimeEnvironment",
  "Google.Chrome",
  "Microsoft.VC++2015-2022Redist-x64",
  "OpenJS.NodeJS",
  "Python.Python.3",
  "Peppy.Osu!",
  "Microsoft.WindowsSDK",
  "MongoDB.Compass.Full",
  "Microsoft.VC++2008Redist-x64",
  "Microsoft.VC++2005Redist-x86",
  "Microsoft.VisualStudioCode",
  "Microsoft.VC++2008Redist-x86",
  "Microsoft.XNARedist",
  "Microsoft.VC++2010Redist-x86",
  "Microsoft.VC++2005Redist-x64",
  "Microsoft.VC++2015-2019Redist-x86"
)

# run the install app function for each app
foreach ($app in $apps) {
  install_app($app)
}

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