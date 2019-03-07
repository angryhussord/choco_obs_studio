$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://cdn-fastly.obsproject.com/downloads/OBS-Studio-23.0.1-Full-Installer-x86.exe';
$url64 = 'https://cdn-fastly.obsproject.com/downloads/OBS-Studio-23.0.1-Full-Installer-x64.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'obs-studio*'
  checksum      = '290D7E460A1D429608D9AB9FE94207213AE60BD715096A7CB4B9F68E071BD292'
  checksumType  = 'sha256'
  checksum64      = '9D3727DC654ADAE7FD25A4301C0FB9384427F744779879F7A02C2DA7005D74EE'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
