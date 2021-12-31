# Set execution policy
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope Process
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

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
sudo scoop install $apps --global

# Install git
$apps = @(
    "git"
    "git-lfs"
)
sudo scoop install $apps --global

# Add buckets
scoop bucket add extras
scoop bucket add versions

# Install browser, editor, and password manager
# Google ChromeとVisual Studio CodeはChocolateyからインストールしてピン、自動更新に任せたほうがいいかも。
$apps = @(
    "bitwarden"
    # "googlechrome"
    # "vscode"
)
sudo scoop install $apps --global

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
sudo scoop install $apps --global

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
