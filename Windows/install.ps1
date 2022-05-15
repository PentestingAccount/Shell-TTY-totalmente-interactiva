iwr -useb get.scoop.sh | iex
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
scoop install curl sudo jq
scoop install neovim gcc

Install-Module posh-git -Scope CurrentUser -Force
Import-Module posh-git

Install-Module oh-my-posh -Scope CurrentUser -Force
Import-Module oh-my-posh

Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons

Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module PSReadLine -Force
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

scoop install fzf
Install-Module -Name PSFzf -Scope CurrentUser -Force
Import-Module PSFzf
Set-PsFzfOption -PsReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'

curl  https://raw.githubusercontent.com/erik-451/Conf-Linux/main/Windows/profile.ps1 >> $PROFILE
