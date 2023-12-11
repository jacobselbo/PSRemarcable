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
Function Get-Order {
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
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/RetrievePO/" -Method GET -Parameters @{
            po_numbers = $PONumbers
            po_ids = $POIDs
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to retrieve Remarcable purchase orders"
            Write-Error $_
        }
    }
}