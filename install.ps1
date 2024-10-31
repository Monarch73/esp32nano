Function Test-CommandExists
{
    Param ($command)
    $oldPreference = $ErrorActionPreference
    $ErrorActionPreference = ‘stop’
    try 
    {
        if (Get-Command $command)
        {
            return $true;
        }
    }
    Catch 
    {
        return $false
    }
    Finally 
    {
        $ErrorActionPreference = $oldPreference
    }
} #end function test-CommandExists

git submodule update --init --recursive
cd .\hardware\esp32\tools
.\get.exe
cd .\..\..\..
if ((!Test-CommandExists "perl") || (!Test-CommandExists "make"))
{
    Write-Error "Error: Missing perl and/or make"
    return 0
}
Write-Output "Done."