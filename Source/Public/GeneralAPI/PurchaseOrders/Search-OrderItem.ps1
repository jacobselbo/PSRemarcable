<#
    .SYNOPSIS
        Retrieve a list of PO items

    .DESCRIPTION
        Retrieve a lsit of PO items

    .PARAMETER POIDs
        Array of PO IDs to retrieve

    .PARAMETER PONumbers
        Array of PO numbers to retrieve

    .PARAMETER LastDays
        Integear amount that represent the last n days.

    .PARAMETER StartDate
        Date when to start searching for POs that have been updated

    .PARAMETER EndDate
        Date when to end searching for POs that have been updated

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=139
#>
Function Search-OrderItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "WithPOIDS")]
        [string[]]
        $POIDs,
        [Parameter(Mandatory = $true, ParameterSetName = "WithPONumbers")]
        [string[]]
        $PONumbers,

        [Parameter(Mandatory = $true, ParameterSetName = "WithLastDays")]
        [int]
        $LastDays,

        [Parameter(Mandatory = $true, ParameterSetName = "WithDate")]
        [datetime]
        $StartDate,
        [Parameter(Mandatory = $true, ParameterSetName = "WithDate")]
        [datetime]
        $EndDate
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/ListPOItem/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            po_numbers = $PONumbers
            po_ids = $POIDs
            last = $LastDays
            start_date = $StartDate ? $StartDate.ToString("o") : $null # Create ISO 8601 Date Format
            end_date = $EndDate ? $EndDate.ToString("o") : $null # Create ISO 8601 Date Format
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable purchase order items"
            Write-Error $_
        }
    }
}