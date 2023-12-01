<#
    .SYNOPSIS
        Creates a project list and adds items to list on remarcable

    .DESCRIPTION
        Creates a project list and adds items to list on remarcable

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=321
#>
Function Import-ProjectList {
    [CmdletBinding()]
    param (
        [string]
        $ProjectID,
        [Parameter(Mandatory = $true)]
        [string]
        $JobNumber,

        [Parameter(ValueFromPipeline)]
        [ProjectList[]]
        $ProjectLists,

        [switch]
        $OverwriteExisting
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/CreateProjectList/"
        $Parameters = @{
            account_email = $script:RemarcableClient.APICredential.UserName
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            project_id = $ProjectID
            job_num = $JobNumber
            overwrite_existing = $OverwriteExisting
            project_lists = @($ProjectLists | ForEach-Object { $_.Serialize() })
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method POST
        } catch {
            Write-Error "Failed to create project lists in Remarcable"
            Write-Error $_
        }
    }
}