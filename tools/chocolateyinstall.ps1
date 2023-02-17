$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-18.2.exe?noredirect'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'screamingfrog*' 

  checksum      = 'A03B1688498C8720E3A99F4167617C63D496FB01573D62CCBA59006374233EEF'
  checksumType  = 'sha256' 

  silentArgs    = "ScreamingFrogSEOSpider-VERSION.exe /S"
}

Install-ChocolateyPackage @packageArgs
