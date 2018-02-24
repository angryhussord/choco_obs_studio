$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/jp9000/obs-studio/releases/download/21.0.1/OBS-Studio-21.0.1-Full-Installer.exe';
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
  checksum      = '26c9c8491fdceb738eb5ba2f48be86176f4ff8ed075782463015e7b35727b7cf'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
