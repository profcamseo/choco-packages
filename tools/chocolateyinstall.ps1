$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-16.2.exe'  

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'screamingfrog*' 

  #checksum      = '1F66975862EAC5E15C58E679DB436907AADE771E95DA3E78A8538B94AFEEE8F9'
  #checksumType  = 'sha256' 
  #checksum64    = '1F66975862EAC5E15C58E679DB436907AADE771E95DA3E78A8538B94AFEEE8F9'
  #checksumType64= 'sha256' 

  silentArgs    = "ScreamingFrogSEOSpider-VERSION.exe /S"
  #validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs 