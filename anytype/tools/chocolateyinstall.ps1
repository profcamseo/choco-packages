$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://anytype-release.fra1.cdn.digitaloceanspaces.com/Anytype%20Setup%200.53.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'anytype*' 

  checksum      = '1F39221B1141507A2749E5A94A467DF976E1C6D11F76FC8898AC225CA095C648'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
