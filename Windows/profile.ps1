# Shell
Import-Module posh-git
Import-Module oh-my-posh
oh-my-posh.exe init pwsh -c 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/slimfat.omp.json'|Invoke-Expression
Import-Module -Name Terminal-Icons
# Autocompletado
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Buscar archivos/carpetas
Import-Module PSFzf
Set-PsFzfOption -PsReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'
# Alias (necesitamos git bash) | Esto nos proporcionará mejor comodidad y compatibilidad de binarios Linux en powershell 
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
# Quitar banner
cls
