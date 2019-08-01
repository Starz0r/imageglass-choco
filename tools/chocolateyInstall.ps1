$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'imageglass'
  fileType       = 'msi'
  url            = 'https://github.com/d2phap/ImageGlass/releases/download/7.0.7.26/ImageGlass_7.0.7.26_x86.msi'
  checksum       = '047de3c069ad6be0ac14007f00c6116c09930f17276dce3e73e3312219f4fe9073e80c127b02921057ba9a9313731370bc688766b54ba72798a843761f2d1027'
  checksumType   = 'sha512'
  url64          = 'https://github.com/d2phap/ImageGlass/releases/download/7.0.7.26/ImageGlass_7.0.7.26_x64.msi'
  checksum64     = '9c908643e95d0934bbd8bc55c4976b09ccd204dff5731d2eb71049fffa321cc1e850bf0652dc17268af08a84e683aba8f94d0f63f07b58e2442f85eb18ea3613'
  checksumType64 = 'sha512'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs

$packageName = $packageArgs.packageName
$installLocation = Get-AppInstallLocation $packageName
if (!$installLocation)  { Write-Warning "Can't find $packageName install location"; return }
Write-Host "$packageName installed to '$installLocation'"