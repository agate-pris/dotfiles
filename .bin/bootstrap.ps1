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
    "7zip"
    "innounp"
    "dark"
)
scoop install $apps

# Install git
$apps = @(
    "git"
    "git-lfs"
)
scoop install $apps

# Add buckets
scoop bucket add extras
scoop bucket add versions

# Install browser, editor, and password manager
# 自動更新周りが不安だが、ローカルインストールする分には問題ないだろうという判断。
$apps = @(
    "bitwarden"
    "googlechrome"
    "vscode"
)
scoop install $apps

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
# - [ ] unity hub
# - [ ] visual studio
# - [ ] imageglass
# - [ ] steam
# - [ ] synctrayzor
# - [ ] dropbox
# - [ ] vscode extensions
# - [ ] cryptmator
# - [ ] cyberduck
# - [ ] userstyles
# - [ ] powertoys
# - [ ] google-japanese-input-np
# - [ ] fonts
#   - [ ] noto
#   - [ ] inconsolata
