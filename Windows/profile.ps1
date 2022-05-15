# Shell
Import-Module posh-git
Import-Module oh-my-posh
oh-my-posh.exe init pwsh -c 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/slimfat.omp.json'|Invoke-Expression
Import-Module -Name Terminal-Icons
# Buscar
Import-Module PSFzf
Set-PsFzfOption -PsReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'
# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig  'D:\2-Programas\Git\Git\usr\bin\tig.exe'
Set-Alias less  'D:\2-Programas\Git\Git\usr\bin\less.exe'
# Quitar banner
cls
