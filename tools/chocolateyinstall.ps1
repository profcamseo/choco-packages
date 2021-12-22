$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-16.5.exe'  

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'screamingfrog*' 

  checksum      = 'E868A2540CCFDA898D6B61CCCC05B936B961E3042750F95BB02D36B35507DC7E'
  checksumType  = 'sha256' 

  silentArgs    = "ScreamingFrogSEOSpider-VERSION.exe /S"
}

Install-ChocolateyPackage @packageArgs 