$ErrorActionPreference = 'Stop';

$packageName = 'obs-studio';
$installerType = 'EXE';
$silentArgs = '/S';
$validExitCodes = @(0);
$packages = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*', 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*', 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) -ErrorAction:SilentlyContinue;
$packages | Where-Object { $_.DisplayName -like "$packageName*" } | ForEach-Object {
    Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs "$($silentArgs)" -File "$($_.UninstallString)" -ValidExitCodes $validExitCodes;
}