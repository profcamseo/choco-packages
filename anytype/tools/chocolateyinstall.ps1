$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.anytype.io/?action=download&key=desktop&id=121749205'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'anytype*' 

  checksum      = '01CA956B836E4D0E470334CFEE88F984446EC9A143603FAD340279A1AD36290E'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
