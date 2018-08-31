$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://cdn-fastly.obsproject.com/downloads/OBS-Studio-22.0.1-Full-Installer-x86.exe';
$url64 = 'https://cdn-fastly.obsproject.com/downloads/OBS-Studio-22.0.1-Full-Installer-x64.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'obs-studio*'
  checksum      = '5A3C9716070AD45D8011346CFDDE7D62BD9FE94EEDFAFB45D487D61A725854AD'
  checksumType  = 'sha256'
  checksum64      = '6B2A79EEFEDD6F34E3BEABEC7D6DE4FACB552DB10D179EF08B66A7C0F02DA908'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
