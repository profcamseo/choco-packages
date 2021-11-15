$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-16.2.exe'  

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'screamingfrog*' 

  Get-ChecksumValid -File $fileFullPath -CheckSum $checksum -ChecksumType $checksumType
  $fileFullPath = '\checksum.js'
  checksum      = $checksum
  checksumType  = $checksumType

  silentArgs    = "ScreamingFrogSEOSpider-VERSION.exe /S"
}

Install-ChocolateyPackage @packageArgs 