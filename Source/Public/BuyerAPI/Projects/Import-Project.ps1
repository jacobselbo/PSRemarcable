<#
    .SYNOPSIS
        Creates a new project or updates an existing project

    .DESCRIPTION
        Creates a new project or updates an existing project

    .PARAMETER Project
        Project Object to create or update

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=68
#>
Function Import-Project {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)]
        [Project]
        $Project
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/CreateUpdateProject/"
        $Parameters = $Project.Serialize()
        $Parameters.token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
        $Parameters.account_email = $script:RemarcableClient.APICredential.UserName
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method POST
        } catch {
            Write-Error "Failed to import project"
            Write-Error $_
        }
    }
}