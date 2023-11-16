<#
    .SYNOPSIS
        Retrieves a list of all active projects and the grand total to date

    .DESCRIPTION
        Retrieves a list of all active projects and the grand total to date

    .PARAMETER MainJobNumber
        Job number to select, will only return single project

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=470

    .OUTPUTS
        Array of active projects with "id", "name", "description", "main_job_num", and "grand_total_to_date"
#>
Function Get-ProjectPOTTD {
    [CmdletBinding()]
    param (
        [string]
        $MainJobNumber
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/GetProjectPOTotalToDate/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            main_job_num = $MainJobNumber
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable Project PO total to date"
            Write-Error $_
        }
    }
}