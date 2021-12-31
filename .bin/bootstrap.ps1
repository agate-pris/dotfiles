echo bar
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope Process
Get-ExecutionPolicy -List
echo baz
iwr -useb get.scoop.sh | iex
echo qux
scoop install sudo
echo quux
sudo scoop install 7zip git openssh --global
echo quuux
