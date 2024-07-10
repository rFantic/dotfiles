Remove-Item C:\Users\Admin\appdata\Local\nvim
Remove-Item C:\Users\ADMIN\scoop\persist\win-vind\config\.vindrc
Remove-Item $PROFILE
#Remove-Item $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
New-Item -ItemType SymbolicLink -Path C:\Users\Admin\appdata\Local\nvim -Target C:\Home\dotfiles\nvim\
New-Item -ItemType SymbolicLink -Path C:\Users\ADMIN\scoop\persist\win-vind\config\.vindrc -Target C:\Home\dotfiles\.vindrc
New-Item -ItemType SymbolicLink -Path $PROFILE -Target C:\Home\dotfiles\Microsoft.PowerShell_profile.ps1
#New-Item -ItemType SymbolicLink -Path $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Target C:\Home\dotfiles\wt\settings.json
