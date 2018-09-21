$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://cdn-fastly.obsproject.com/downloads/OBS-Studio-22.0.2-Full-Installer-x86.exe';
$url64 = 'https://cdn-fastly.obsproject.com/downloads/OBS-Studio-22.0.2-Full-Installer-x64.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'obs-studio*'
  checksum      = '9AB68E33C3A47BAD5C7068E2DB4622DA408AD8F21408DB94D5DFC3C96EA035F7'
  checksumType  = 'sha256'
  checksum64      = 'C6F01CEC8C7C8A8512F9051247DE4CB7B3CB89EC5EC76E53D6826BBE23966350'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
