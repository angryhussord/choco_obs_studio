$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/obsproject/obs-studio/releases/download/21.1.0/OBS-Studio-21.1-Full-Installer.exe';
$url64 = $url;

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'obs-studio*'
  checksum      = '14FACCB6795C38334826E2362F54302F7994DE201DB2FC306F57BB92D0EE29D1'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
