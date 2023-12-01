<#
    .SYNOPSIS
        Bulk imports new or updated projects

    .DESCRIPTION
        Bulk imports new or updated projects

    .PARAMETER Projects
        Project Objects to create or update

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=103
#>
Function Import-BulkProject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)]
        [Project[]]
        $Projects
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/BulkImportProject/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            company_branch_id = $CompanyBranchID
            json_data = @($Projects | ForEach-Object { $_.Serialize() })
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method POST
        } catch {
            Write-Error "Failed to bulk import project"
            Write-Error $_
        }
    }
}