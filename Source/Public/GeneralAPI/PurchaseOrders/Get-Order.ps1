<#
    .SYNOPSIS
        Gets a list of PO details based of order numbers or IDs

    .DESCRIPTION
        Gets a list of PO details based of order numbers or IDs

    .PARAMETER POIDs
        Array of PO IDs to retrieve

    .PARAMETER PONumbers
        Array of PO numbers to retrieve

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=65
#>
Function Search-OrderItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "WithPOIDS")]
        [string[]]
        $POIDs,
        [Parameter(Mandatory = $true, ParameterSetName = "WithPONumbers")]
        [string[]]
        $PONumbers
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
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET
        } catch {
            Write-Error "Failed to retrieve Remarcable purchase orders"
            Write-Error $_
        }
    }
}