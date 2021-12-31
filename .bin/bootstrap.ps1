Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope Process
Get-ExecutionPolicy -List
iwr -useb get.scoop.sh | iex
scoop install sudo
sudo scoop install 7zip git openssh --global
