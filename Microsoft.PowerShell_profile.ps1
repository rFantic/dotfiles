clear
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
function cdf {cd $(fd -L -t d | fzf)}
function clipf {echo -n $pwd"\"$(fzf) | clip}
function lsf {ls | Format-Wide -Column 4}
function renplv {curl.exe -X POST -d '{}' https://api.netlify.com/build_hooks/652d0cf2603f7a2d000d1c00} 
Set-Alias -n lg -v lazygit
Set-Alias -n mm -v micromamba
$Env:MAMBA_ROOT_PREFIX='C:\condaenv'
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Invoke-Expression (&starship init powershell)
