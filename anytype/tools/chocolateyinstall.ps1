$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype%20Setup%200.41.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'anytype*' 

  checksum      = 'D8CE393FAFE2E3397499B605FB078D8F3D5FF8D7886A944AC61DD41D9C058ADB'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
