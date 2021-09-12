$packageName = 'scilab'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://www.scilab.org/download/6.1.1/scilab-6.1.1.exe'
$checksum = '43336cda96251d3dde9106fc5f1302ae722ab83e8a6bf894dff3238ea02be779'
$checksumType = 'sha256'
$url64 = 'https://www.scilab.org/download/6.1.1/scilab-6.1.1_x64.exe'
$checksum64 = '349f40c2b2906003ce82c4a8a37fc4dee4cf85bb3eb783020cc7e8ae815a6a0d'
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