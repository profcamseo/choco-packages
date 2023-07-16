$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.anytype.io/?action=download&key=desktop&id=116988218'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'anytype*' 

  checksum      = 'CB4C9E815C495A03C0B96BC109FD70031F68F410EFCF9F6BF7DAE254ECDBD09E'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
