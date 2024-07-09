BeforeAll {
    $ModuleName = 'PSRemarcable'
    $ModuleManifestName = $ModuleName + '.psd1'
    $ModuleScriptName = $ModuleName + '.psm1'
    $ModuleManifestPath = "$PSScriptRoot\..\Output\$ModuleName\$ModuleManifestName"
    $ModulePath = "$PSScriptRoot\..\Output\$ModuleName\$ModuleScriptName"
    $changelogPath = "$PSScriptRoot\..\CHANGELOG.md"
}
Describe 'Module Manifest Tests' {
    It 'has a valid manifest' {
        {
            $script:manifest = Test-ModuleManifest -Path $ModuleManifestPath -ErrorAction Stop -WarningAction SilentlyContinue
        } | Should -Not -Throw
    }

    It 'has a valid name in the manifest' {
        $script:manifest.Name | Should -Be $ModuleName
    }

    It 'has a valid root module' {
        $script:manifest.RootModule | Should -Be "$($moduleName).psm1"
    }

    It 'has a valid version in the manifest' {
        $script:manifest.Version -as [Version] | Should -Not -BeNullOrEmpty
    }

    It 'has a valid description' {
        $script:manifest.Description | Should -Not -BeNullOrEmpty
    }

    It 'has a valid author' {
        $script:manifest.Author | Should -Not -BeNullOrEmpty
    }

    It 'has a valid guid' {
        {
            [guid]::Parse($script:manifest.Guid)
        } | Should -Not -Throw
    }

    $script:changelogVersion = $null
    It 'has a valid version in the changelog' {
        foreach ($line in (Get-Content $changelogPath)) {
            if ($line -match '^## \[(?<Version>(\d+\.){1,3}\d+)\]') {
                $script:changelogVersion = $matches.Version
                break
            }
        }
        $script:changelogVersion | Should -Not -BeNullOrEmpty
        $script:changelogVersion -as [Version] | Should -Not -BeNullOrEmpty
    }

    It 'changelog and manifest versions are the same' {
        $script:changelogVersion -as [Version] | Should -Be ( $script:manifest.Version -as [Version] )
    }
    It 'all versions are the same' {
        $script:changelogVersion -as [Version] | Should -Be ( $script:manifest.Version -as [Version] )
    }
}
<# Describe 'Script module Tests' {
    It "$ModuleName is valid PowerShell code" {
        $psFile = Get-Content -Path $ModulePath -ErrorAction Stop
        $errors = $null
        $null = [System.Management.Automation.PSParser]::Tokenize($psFile, [ref]$errors)
        $errors.Count | Should -Be 0
    }
} #>
