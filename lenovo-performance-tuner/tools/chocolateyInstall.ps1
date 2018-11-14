# lenovo-thinkpad-usb-c-driver install

# Globale Settings
$ErrorActionPreference = 'Stop';

$toolsDir               = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$PackageParameters      = Get-PackageParameters
$urlPackage             = 'https://download.lenovo.com/pccbbs/thinkcentre_drivers/lpt_2.0.2.1.msi'
$checksumPackage        = 'dff56fb036b2575adc94fd1cb105f7f4a20d672384d687c616d4eb1ea6d686bf308befe7ecdf386f69207d2b824fb71cb5987205ac431c1cd90e8bfb18eb3fab'
$checksumTypePackage    = 'SHA512'
$checksumPackage64      = 'dff56fb036b2575adc94fd1cb105f7f4a20d672384d687c616d4eb1ea6d686bf308befe7ecdf386f69207d2b824fb71cb5987205ac431c1cd90e8bfb18eb3fab'
$checksumTypePackage64  = 'SHA512'

Import-Module -Name "$($toolsDir)\helpers.ps1"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'MSI'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = $checksumTypePackage
    checksum64     = $checksumPackage64
    checksumType64 = $checksumTypePackage64
    silentArgs     = '/q'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
