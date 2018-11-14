import-module au

$url                 = 'https://pcsupport.lenovo.com/de/en/downloads/ds501902'
$checksumTypePackage = "SHA512"

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1'   = @{
            "(^\s*[$]*urlPackage\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(^\s*[$]*checksumPackage\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
            "(^\s*[$]*checksumTypePackage\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
            "(^\s*[$]*checksumPackage64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
            "(^\s*[$]*checksumTypePackage64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
        }; 
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $url -UseBasicParsing -DisableKeepAlive

    $reLatestbuild = '(.*"Version":"*)'
    $download_page.Content -imatch $reLatestbuild
    $latestbuild = $Matches[0]

    $reVersion  = "(\d+)(.)(\d+)(.)(\d+).exe"
    $latestbuild -imatch $reVersion
    $version    = '2.0.2.1' #$Matches[0].Replace(".exe","")
    $vv = $version.Replace(".","")

    $urlPackage   = "https://download.lenovo.com/pccbbs/thinkcentre_drivers/lpt_2.0.2.1.msi"
    $urlPackage64 = "https://download.lenovo.com/pccbbs/thinkcentre_drivers/lpt_2.0.2.1.msi"

    return  @{ 
        URL32          = $urlPackage;
        URL64          = $urlPackage64;
        ChecksumType32 = $checksumTypePackage;
        ChecksumType64 = $checksumTypePackage;
        Version        = $version
    }
}

function global:au_AfterUpdate ($Package) {
    Set-DescriptionFromReadme $Package -SkipFirst 3
}
update -ChecksumFor all
