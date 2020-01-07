$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'imageglass'
  fileType       = 'msi'
  url            = 'https://github.com/d2phap/ImageGlass/releases/download/7.0.7.26/ImageGlass_7.5.1.1_x86.msi'
  checksum       = '3ED19270AFE49F962600523C74253D72A3AC7B9AA6097E4BF5EDD7321F728F9FB3B7AE0C6E4CF4FDC8F2688CA45845CDD16723E20BF2668637E1BE60F54F506C'
  checksumType   = 'sha512'
  url64          = 'https://github.com/d2phap/ImageGlass/releases/download/7.5.1.1/ImageGlass_7.5.1.1_x64.msi'
  checksum64     = 'EA16E16530DB8825E10C4FED316D55F9F080B409EF0C9B90A154CD3E0431889B98F074CAD0D25114A58D3DC58E0E12650311C34E07BDC584EE5E9B8F558E56A1'
  checksumType64 = 'sha512'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs

$packageName = $packageArgs.packageName
$installLocation = Get-AppInstallLocation $packageName
if (!$installLocation)  { Write-Warning "Can't find $packageName install location"; return }
Write-Host "$packageName installed to '$installLocation'"