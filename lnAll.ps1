New-Item -ItemType SymbolicLink -Path C:\Users\Admin\appdata\Local\nvim -Target C:\Users\ADMIN\dotfiles\nvim\
New-Item -ItemType SymbolicLink -Path C:\Users\ADMIN\scoop\persist\win-vind\config\.vindrc -Target C:\Users\ADMIN\dotfiles\.vindrc
New-Item -ItemType SymbolicLink -Path $PROFILE -Target C:\Users\ADMIN\dotfiles\Microsoft.PowerShell_profile.ps1
New-Item -ItemType SymbolicLink -Path $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Target C:\Users\ADMIN\dotfiles\wt\settings.json
