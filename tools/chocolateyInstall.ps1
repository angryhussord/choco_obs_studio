$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/jp9000/obs-studio/releases/download/0.16.5/OBS-Studio-0.16.5-Full-Installer.exe';
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
  checksum      = 'F7FB9A6CCA1A59356837C61F1BB9536EB1A0B45CA6FDA8D0185D9D7CEA82CBC3'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
