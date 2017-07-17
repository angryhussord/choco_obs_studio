$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/jp9000/obs-studio/releases/download/19.0.3/OBS-Studio-19.0.3-Full-Installer.exe';
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
  checksum      = 'E390E50770C9A10F1E427ADB1F2EE34EF75C966477832DDE6B3302207B394202'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
