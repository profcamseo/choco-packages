$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.anytype.io/?action=download&key=desktop&id=127051254'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'anytype*' 

  checksum      = 'B6A926C8F4F8D0C3BC474A6B2227A9F38D5D36A5C06499BD5453B582F9078A46'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
