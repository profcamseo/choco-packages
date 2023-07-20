$ErrorActionPreference = 'Stop';
$uninstDir = "C:\Users\Cameron\AppData\Local\Programs\anytype\Uninstall Anytype.exe"
$uninstalled = $false

Uninstall-ChocolateyPackage -PackageName 'anytype' -FileType 'EXE' -File $uninstDir
