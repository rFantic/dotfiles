Set-location C:\Home
#Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
#Set-PSReadLineOption -PredictionViewStyle ListView
#Set-PSReadLineOption -PredictionSource History
function cdf {cd $(fd -L -t d | fzf)}
function clipf {echo -n $pwd"\"$(fzf) | clip}
function lsf {ls | Format-Wide -Column 4}
function renplv {curl.exe -X POST -d '{}' https://api.netlify.com/build_hooks/652d0cf2603f7a2d000d1c00} 
Set-Alias -n lg -v lazygit
Set-Alias -n mm -v micromamba
$Env:MAMBA_ROOT_PREFIX='C:\condaenv'
try {micromamba.exe shell hook -q -s powershell | out-string | invoke-expression 2>$null} catch {}
Invoke-Expression (& { (zoxide init powershell | Out-String) })
