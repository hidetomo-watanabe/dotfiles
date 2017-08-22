# common
Set-Alias grep Select-String
Set-Alias open ii
Set-Alias cl clear
# vim
Set-Alias vim '<PATH>\gvim.exe'
# replace cd
rm Alias:cd
function cd {
    if ($args.Length -gt 0) {
        Set-Location $args[0]
    } else {
        Set-Location ~/
    }
}
# replace diff => add diff2
# rm Alias:diff
function diff2 {
    if ($args.Length -eq 2) {
        Compare-Object (cat $args[0]) (cat $args[1])
    } else {
        echo '[ERROR] Set 2 filenames'
    }
}
# display location
function Prompt {
    if ($?) {
        Write-Host "["(Split-Path (Get-Location) -Leaf)"](*'-')"  -NoNewLine -ForegroundColor "Green"
        return "> "
    } else {
        Write-Host "["(Split-Path (Get-Location) -Leaf)"](*;-;)"  -NoNewLine -ForegroundColor "Green"
        return "> "
    }
}
# encoding
function myenc {
    if ($args.Length -eq 2) {
        cat -Encoding UTF8 $args[0] | Out-File $args[1] -Encoding default
    } else {
        echo '[ERROR] Set 2 filenames'
    }
}
