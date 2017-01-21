$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/jp9000/obs-studio/releases/download/17.0.2/OBS-Studio-17.0.2-Full-Installer.exe';
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
  checksum      = 'DEC15ACA20301321F6AD821BBCB4133ABAF061B091C1E0BCFD44D7BC58563C2B'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
