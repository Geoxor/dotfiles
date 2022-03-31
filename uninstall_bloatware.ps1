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
  winget install --silent --accept-package-agreements --accept-source-agreements --force -e $name
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

[string[]] $bloat_apps = @(
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
  "Microsoft.Getstarted_8wekyb3d8bbwe"
)

install_scoop
install_scoop_apps

foreach ($app in $bloat_apps) {
  write-host "* Uninstalling $app" -ForegroundColor Red 
  uninstall_winget_app($app)
}

add_winfetch_to_profile
