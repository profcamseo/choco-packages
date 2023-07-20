$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.anytype.io/?action=download&key=desktop&id=117644775'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'anytype*' 

  checksum      = '3C43E3657FEE6CE6E9BCFA93F1F704B2DDC41E50A8BE523DDE9A8C0BAD43E1C2'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
