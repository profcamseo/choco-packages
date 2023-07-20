$ErrorActionPreference = 'Stop';
$uninstDir = "C:\Program Files (x86)\Screaming Frog SEO Spider\uninstall.exe"
$uninstalled = $false

Uninstall-ChocolateyPackage -PackageName 'screamingfrog' -FileType 'EXE' -SilentArgs '/S' -File $uninstDir
