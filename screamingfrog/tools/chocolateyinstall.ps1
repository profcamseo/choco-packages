$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-19.5.exe?noredirect'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'screamingfrog*' 

  checksum      = 'D51F95839480AB4C3EC1F752ABCB38B44344B4DCCAE7A6FA4F8935FAAED6476B'
  checksumType  = 'sha256' 

  silentArgs    = "ScreamingFrogSEOSpider-VERSION.exe /VERYSILENT"
}

Install-ChocolateyPackage @packageArgs
