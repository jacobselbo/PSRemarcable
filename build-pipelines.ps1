## Install Require Modules
Write-Output "Installing required modules for build"
Install-Module PSScriptAnalyzer, ModuleBuilder -ErrorAction Stop -Force

## Build module
Write-Output "Beginning module build"
$Module = Build-Module -SourcePath .\Source\ -OutputDirectory "$ENV:BUILD_BINARIESDIRECTORY\PSRemarcable"
Write-Output "Built module at version: $($Module.Version)"

## Lint built psm1
Write-Output "Beginning linting of PSRemarcable"
Invoke-ScriptAnalyzer -Path "$ENV:BUILD_BINARIESDIRECTORY\PSRemarcable\PSRemarcable.psm1" -Settings .\PSScriptAnalyzerSettings.psd1 -Outvariable Issues

$Errors   = $Issues.Where({$_.Severity -eq 'Error'})
$Warnings = $Issues.Where({$_.Severity -eq 'Warning'})

if ($Errors) {
    Write-Error "There were $($Errors.Count) errors and $($Warnings.Count) warnings total." -ErrorAction Stop
    exit 1
} else {
    Write-Output "There were $($Errors.Count) errors and $($Warnings.Count) warnings total."
}

## Create ZIP file for archive
Write-Output "Creating ZIP file from build"

$OutputPath = "$ENV:BUILD_ARTIFACTSTAGINGDIRECTORY\PSRemarcable_$($Module.Version).zip"

Compress-Archive -Path "$ENV:BUILD_BINARIESDIRECTORY\PSRemarcable" -DestinationPath $OutputPath

if (!(Test-Path $OutputPath -PathType Leaf)) {
    Write-Error "Failed to build artifact"
    exit 1
}