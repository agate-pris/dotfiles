Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope Process
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

winget install -e --id 7zip.7zip
winget install -e --id Bitwarden.Bitwarden
winget install -e --id Git.Git
winget install -e --id GitHub.GitLFS
winget install -e --id Google.Chrome
winget install -e --id Google.JapaneseIME
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Nvidia.GeForceExperience

# winget install -e --id Dropbox.Dropbox
winget install -e --id Iterate.Cyberduck
winget install -e --id LibreOffice.LibreOffice
winget install -e --id Microsoft.PowerToys
winget install -e --id OBSProject.OBSStudio
# winget intall -e --id SyncTrayzor.SyncTrayzor
winget install -e --id Valve.Steam
winget install -e --id voidtools.Everything

winget install -e --id Microsoft.VisualStudio
winget install -e --id UnityTechnologies.UnityHub

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
