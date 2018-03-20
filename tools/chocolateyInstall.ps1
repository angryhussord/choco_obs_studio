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
  checksum      = '14faccb6795c38334826e2362f54302f7994de201db2fc306f57bb92d0ee29d1'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
