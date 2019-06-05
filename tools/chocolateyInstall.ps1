$packageName = 'scilab'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://www.scilab.org/download/6.0.2/scilab-6.0.2.exe'
$checksum = '1ac5c2708c4fb43909f185a2bd07c3cde3967aa279299295640bedb47431e937'
$checksumType = 'sha256'
$url64 = 'https://www.scilab.org/download/6.0.2/scilab-6.0.2_x64.exe'
$checksum64 = 'c57182929a5bd0d58fcd71ab935c211496a55425e1bb50e9516c7c81163b2a77'
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