Remove-Item $env:LOCALAPPDATA\nvim
New-Item -ItemType SymbolicLink -Path $env:LOCALAPPDATA\nvim -Target $HOME\dotfiles\nvim\
Remove-Item $PROFILE
New-Item -ItemType SymbolicLink -Path $PROFILE -Target $HOME\dotfiles\Microsoft.PowerShell_profile.ps1
#Remove-Item C:\Users\ADMIN\scoop\persist\win-vind\config\.vindrc
#New-Item -ItemType SymbolicLink -Path C:\Users\ADMIN\scoop\persist\win-vind\config\.vindrc -Target C:\Home\dotfiles\.vindrc
#Remove-Item $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
#New-Item -ItemType SymbolicLink -Path $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Target C:\Home\dotfiles\wt\settings.json
