$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://github.com/obsproject/obs-studio/releases/download/21.1.2/OBS-Studio-21.1.2-Full-Installer.exe';
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
  checksum      = '6B4F1B5EB8BD4EA1D1362B99F308A8F792C2B464156F733E880080D041892411'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
