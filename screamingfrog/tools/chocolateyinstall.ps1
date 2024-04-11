$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-19.8.exe?noredirect'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'screamingfrog*' 

  checksum      = 'D5E51ECC6CCF72E380DD1C6FD9D3BACB69E8200D681447472527913B4F62E387'
  checksumType  = 'sha256' 

  silentArgs    = "ScreamingFrogSEOSpider-VERSION.exe /VERYSILENT"
}

Install-ChocolateyPackage @packageArgs
