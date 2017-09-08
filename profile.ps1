# common
Set-Alias grep Select-String
Set-Alias uniq Get-Unique
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
# add wc
function wc {
    $output = 0
    foreach($d in $input){
        $output += 1
    }
    echo $output
}
# add head
function head($limit=10) {
    if ($limit -lt 1) {
        return
    }
    $array = @($input)
    foreach ($d in $array[0..($limit - 1)]) {
        echo $d
    }
}
# add tail
function tail($limit=10) {
    if ($limit -lt 1) {
        return
    }
    $array = @($input)
    $max = $array.length
    if ($limit -gt ($max - 1)) {
        $limit = $max
    }
    foreach ($d in $array[($max - $limit)..$max]) {
        echo $d
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
    if ($args.Length -eq 4) {
        if ($args[1] -eq 'default') {
            cat $args[0] | Out-File $args[2] -Encoding $args[3]
        } else {
            cat -Encoding $args[1] $args[0] | Out-File $args[2] -Encoding $args[3]
        }
    } else {
        echo '[ERROR] Set 2 filename and encoding pairs'
    }
}
