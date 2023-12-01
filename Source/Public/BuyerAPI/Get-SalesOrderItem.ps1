<#
    .SYNOPSIS
        Get a list of SO items

    .DESCRIPTION
        Get a list of SO items

    .PARAMETER POIDs
        Purchase Order IDs

    .PARAMETER PONumbers
        Purchase Order Numbers

    .PARAMETER SOIDs
        Sales Order IDs

    .PARAMETER SONumbers
        Sales Order Numbers

    .PARAMETER LastDays
        Represents the last number of days to pull sales orders from

    .PARAMETER StartDate
        Date when to start searching for SOs that have been updated

    .PARAMETER EndDate
        Date when to end searching for SOs that have been updated

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=141
#>
Function Get-ProjectPOTTD {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "WithPOIDS")]
        [string[]]
        $POIDs,
        [Parameter(Mandatory = $true, ParameterSetName = "WithPONumbers")]
        [string[]]
        $PONumbers,

        [Parameter(Mandatory = $true, ParameterSetName = "WithSOIDs")]
        [string[]]
        $SOIDs,
        [Parameter(Mandatory = $true, ParameterSetName = "WithSONumbers")]
        [string[]]
        $SONumbers,

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

        if ($StartDate) {
            ($EndDate - $StartDate).TotalDays | Assert-LessThanEqualTo -Other 180 -Message "StartDate and EndDate range cannot exceed 180 days"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/ListSOItem/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            po_ids = $POIDs
            po_numbers = $PONumbers
            so_ids = $SOIDs
            so_numbers = $SONumbers
            last = $LastDays
            start_date = $StartDate ? $StartDate.ToString("o") : $null # Create ISO 8601 Date Format
            end_date = $EndDate ? $EndDate.ToString("o") : $null # Create ISO 8601 Date Format
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable Sales Order Items"
            Write-Error $_
        }
    }
}