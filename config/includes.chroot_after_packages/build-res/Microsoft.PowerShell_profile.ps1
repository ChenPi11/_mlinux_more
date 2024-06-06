#!/usr/bin/env pwsh
Import-Module oh-my-posh
Import-Module posh-git
Import-Module Terminal-Icons
oh-my-posh init pwsh --config '$env:POSH_THEMES_PATH\powerlevel10k_rainbow.omp.json' | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
