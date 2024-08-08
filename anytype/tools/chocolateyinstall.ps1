$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype%20Setup%200.42.3.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'anytype*' 

  checksum      = 'B6607A7C29B3999623263851DF0312040D88DC72CD9AB29B05329B1884D852D6'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
