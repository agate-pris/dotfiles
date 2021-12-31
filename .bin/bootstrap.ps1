Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope Process
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb get.scoop.sh | iex
scoop help
# scoop install sudo
# echo quux
# sudo scoop install 7zip git openssh --global
# echo quuux
