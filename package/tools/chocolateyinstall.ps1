# lenovo-performance-tuner install

$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = "https://download.lenovo.com/pccbbs/thinkcentre_drivers/lpt_v2.0.2.2.msi"
$checksumPackage = "e8c354b7f4da7b11fcef9584fbe33413afcdf144d172e20837553cde693e773909af2470853e9eca22adcffa1c09b47fcf5c25acfe64e355b32cb759200f290b"
$checksumTypePackage = 'SHA512'

Import-Module -Name "$($toolsDir)\helpers.ps1"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'MSI'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = $checksumTypePackage
    silentArgs     = '/q'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
