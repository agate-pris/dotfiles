# 現在のユーザー情報を取得
$identity = [Security.Principal.WindowsIdentity]::GetCurrent()

# Principal に変換
$principal = New-Object Security.Principal.WindowsPrincipal($identity)

# 管理者権限を持っているか確認
$isAdmin = $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

# 管理者権限がなければ終了
if (-not $isAdmin) {
    Write-Error "このスクリプトは管理者として実行してください。"
    exit 1
}

# Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope Process
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Write-Host "Visual Studio 2022 Community Edition のインストールを開始します。" -ForegroundColor Cyan

$override = "--includeRecommended --wait --passive"
$override += " --add Microsoft.VisualStudio.Workload.ManagedDesktop"
$override += " --add Microsoft.VisualStudio.Workload.ManagedGame"
$override += " --add Microsoft.VisualStudio.Workload.NativeDesktop"
Write-Debug "winget install ""Microsoft.VisualStudio.2022.Community"" --silent --scope machine --override ""${override}"""
winget install "Microsoft.VisualStudio.2022.Community" --silent --scope machine --override """${override}"""

# Visual Studio のインストール確認
if (-not (winget list --id "Microsoft.VisualStudio.2022.BuildTools") -and
    -not (winget list --id "Microsoft.VisualStudio.2022.Community") -and
    -not (winget list --id "Microsoft.VisualStudio.2022.Professional")) {
    Write-Error "Visual Studio のインストールが確認できません。"
    exit 1
}

Write-Host "ユーティリティのインストールを開始します。" -ForegroundColor Cyan

# Tier 0
$packages = @(
    "Git.Git"
)

# Tier 1
$packages += @(
    "7zip.7zip",
    "BurntSushi.ripgrep.MSVC",
    "Microsoft.WindowsTerminal",
    "Microsoft.PowerShell",
    "Microsoft.VisualStudioCode",
    "Mozilla.Firefox.ja",
    "ajeetdsouza.zoxide"
)

# Tier 2
# $packages += @(
#      "Bitwarden.Bitwarden",
#      "Valve.Steam",
#      "VideoLAN.VLC"
# )

# Tier 3
# $packages += @(
#      "Microsoft.Sysinternals.ZoomIt"
# )

# winget install -e --id LibreOffice.LibreOffice
# winget install -e --id Microsoft.PowerToys
# winget install -e --id OBSProject.OBSStudio
# winget intall -e --id SyncTrayzor.SyncTrayzor
# winget install -e --id Valve.Steam
# winget install -e --id voidtools.Everything

# winget install -e --id UnityTechnologies.UnityHub

# Install Chocolatey and Boxstarter
# wip: See https://boxstarter.org/InstallBoxstarter
# and https://chocolatey.org/install

# Download script and install Scoop using it
iwr -useb get.scoop.sh | iex

# Install sudo at first
scoop install sudo

# Install apps recommended by the subcommand checkup
$apps = @(
    "innounp"
    "dark"
)
scoop install $apps

# Add buckets
scoop bucket add extras
scoop bucket add versions

# Install apps
$apps = @(
    "discord-canary"
    "discord-ptb"
    "ffmpeg"
    "imageglass"
    "paint.net"
    "vlc"
)
scoop install $apps

# Install apps from main
# hugo-extended
# go
# python
# ruby
# rustup

# # todo
# see https://hackmd.io/@Eai/Win10-reinstall
# - [ ] vscode extensions
# - [ ] userstyles
# - [ ] fonts
#   - [ ] noto
#   - [ ] inconsolata
