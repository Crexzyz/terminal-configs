function Open-Current-Directory { explorer.exe . }
Set-Alias -name open -Value Open-Current-Directory
function Get-GitStatus { git status }
Set-Alias -name g -Value Get-GitStatus
function Get-GitCheckout { git checkout }
Set-Alias -name gck -Value Get-GitCheckout
Set-Alias -name ll -Value ls
function Drive-D { cd D: }
Set-Alias -name cdd -Value Drive-D
function Touch-File { echo $null >> $args[0]}
Set-Alias -name touch -Value Touch-File

function prompt {
    $User = [Security.Principal.WindowsIdentity]::GetCurrent();
    $CurrentFolder = Split-Path -Path $pwd -Leaf

    Write-Host "[" -NoNewLine
    Write-Host "$($User.Name.split("\")[1])" -ForegroundColor Green -NoNewLine
    Write-Host " > " -NoNewLine
    Write-Host "$CurrentFolder" -ForegroundColor Cyan -NoNewLine
    Write-Host "]"
    return "> "   
}
