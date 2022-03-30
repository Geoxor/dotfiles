function install_scoop {
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

  if ( Get-Command "scoop" -ErrorAction SilentlyContinue -eq $null) {
      scoop update
  } else {
      iwr -useb get.scoop.sh | iex 
  }
}

function install_scoop_apps {
  scoop install winget sudo wget curl winfetch
}

# make a function that takes in the app name and installs it
function install_winget_app($name) {
  winget install --silent --accept-package-agreements --accept-source-agreements -e $name
}

function uninstall_winget_app($name) {
  winget uninstall --silent $name
}

function add_winfetch_to_profile {
  $str = Get-Content $profile -Tail 1 
  if ($str -notmatch "winfetch") {
    [System.IO.File]::AppendAllText($profile, "winfetch")
  }
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



$bloat_apps = @(
  "Microsoft Update Health Tools",
  "Microsoft Edge Update",
  "Microsoft.Wallet_8wekyb3d8bbwe",
  "Microsoft.WindowsPCHealthCheck",
  "Microsoft.BingWeather_8wekyb3d8bbwe",
  "Microsoft.EdgeWebView2Runtime",
  "Microsoft.Edge",
  "Microsoft.WindowsMaps_8wekyb3d8bbwe",
  "Microsoft.GetHelp_8wekyb3d8bbwe",
  "Microsoft.OneDrive",
  "Microsoft.549981C3F5F10_8wekyb3d8bbwe",
  "Microsoft.Getstarted_8wekyb3d8bbwe",
)

install_scoop
install_scoop_apps

foreach ($app in $bloat_apps) {
  uninstall_winget_app($app)
}

# run the install app function for each app
foreach ($app in $apps) {
  install_winget_app($app)
}

add_winfetch_to_profile