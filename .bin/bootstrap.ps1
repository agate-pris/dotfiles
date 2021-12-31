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

# Install apps from main
$apps = @(
    "git"
    "git-lfs"
)
# sudo scoop install $apps --global

# Add buckets
scoop bucket add extras

# Install browser
$apps = @(
    googlechrome
)
sudo scoop install $apps --global

# Install apps from main
# hugo-extended
# go
# python
# ruby
# rustup
# ffmpeg
# libreoffice-stable
# obs-studio
# paint.net
# discord
# everything
# vlc

# # todo
# - [ ] steam
# - [ ] synctrayzor
# - [ ] dropbox
