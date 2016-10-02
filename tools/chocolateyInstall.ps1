$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/jp9000/obs-studio/releases/download/0.16.2/OBS-Studio-0.16.2-Full-Installer.exe';
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
  checksum      = 'fa7d98d654afd15442ec44ebc2d3daf09a95498d5c94f47a31a95f3c1a6b27a4'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
