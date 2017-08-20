# common
Set-Alias grep Select-String
Set-Alias open ii
Set-Alias cl clear
# vim
Set-Alias vim '<PATH>\gvim.exe'
# replace cd
rm Alias:cd
function cd
{
    if ($args.Length -gt 0)
    {
        Set-Location $args[0]
    }
    else
    {
        Set-Location ~/
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
