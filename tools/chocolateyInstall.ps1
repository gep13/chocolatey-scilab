$packageName = 'scilab'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://www.scilab.org/download/6.1.0/scilab-6.1.0.exe'
$checksum = '0fe2a029cbd3bad9aa185534169c8a9e7c968636dc22e8dd20360ffc3067f0ad'
$checksumType = 'sha256'
$url64 = 'https://www.scilab.org/download/6.1.0/scilab-6.1.0_x64.exe'
$checksum64 = 'c8a1c1db19aa832d2d7797bfd94f73f1e75aed5e07574555f815a552765cc279'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"