$ErrorActionPreference = 'Stop'

$data = & (Join-Path -Path (Split-Path -Path $MyInvocation.MyCommand.Path) -ChildPath data.ps1)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName     = $env:ChocolateyPackageName
    unzipLocation   = $toolsDir
    fileType       = 'exe'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    softwareName    = 'scilab'
    validExitCodes  = @(0)

    url64           = $data.url64
    checksum64      = $data.checksum64
    checksumType64  = $data.checksumType64
}

Install-ChocolateyPackage @packageArgs
