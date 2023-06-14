$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-18.3.exe?noredirect'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'screamingfrog*' 

  checksum      = 'D98EF22DAF72FE98BAB056AB8045C6C3D9EE326B0D8919C4362E5470DB0EB37D'
  checksumType  = 'sha256' 

  silentArgs    = "ScreamingFrogSEOSpider-VERSION.exe /S"
}

Install-ChocolateyPackage @packageArgs
