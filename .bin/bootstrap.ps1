winget install --id 7zip.7zip
winget install --id Bitwarden.Bitwarden
winget install --id Git.Git
winget install --id GitHub.GitLFS
winget install --id Google.Chrome
winget install --id Google.JapaneseIME
winget install --id Microsoft.VisualStudioCode

winget install --id Microsoft.PowerToys
winget install --id Valve.Steam

winget install --id Microsoft.VisualStudio
winget install --id UnityTechnologies.UnityHub

# Set execution policy
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope Process
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

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
    "discord"
    "discord-canary"
    "discord-ptb"
    "everything"
    "ffmpeg"
    "libreoffice-stable"
    "obs-studio"
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
# - [ ] imageglass
# - [ ] synctrayzor
# - [ ] dropbox
# - [ ] vscode extensions
# - [ ] cyberduck
# - [ ] userstyles
# - [ ] powertoys
# - [ ] fonts
#   - [ ] noto
#   - [ ] inconsolata
