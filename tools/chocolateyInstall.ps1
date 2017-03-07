$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/jp9000/obs-studio/releases/download/18.0.0/OBS-Studio-18.0-Full-Installer.exe';
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
  checksum      = '715A024816239CF38FC1809D0F9E9DCD'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
