# Instalar scoop y diferentes paquetes (curl sudo jq neovim gcc)
iwr -useb get.scoop.sh | iex
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
scoop install curl sudo jq
scoop install neovim gcc

# Instalar posh-git
Install-Module posh-git -Scope CurrentUser -Force
Import-Module posh-git

# Instalar oh-my-posh
Install-Module oh-my-posh -Scope CurrentUser -Force
Import-Module oh-my-posh

# Instalar nerdfonts
scoop bucket add nerd-fonts
scoop install DejaVuSansMono-NF

# Instalar iconos
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons

## Instalar moduleos de Autocompleatado
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module PSReadLine -Force
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Instalar modulos de Buscar archivos/carpetas
scoop install fzf
Install-Module -Name PSFzf -Scope CurrentUser -Force
Import-Module PSFzf
Set-PsFzfOption -PsReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'
# Mandar configuracion al profile para que se aplique cada vez que iniciemos una sesion
curl  https://raw.githubusercontent.com/erik-451/Conf-Linux/main/Windows/profile.ps1 >> $PROFILE
