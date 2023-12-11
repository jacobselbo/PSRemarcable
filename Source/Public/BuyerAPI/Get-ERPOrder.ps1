<#
    .SYNOPSIS
        Get an account system order information based off PO number

    .DESCRIPTION
        Get an account system order information based off PO number

    .PARAMETER PONumber
        Purchase order number

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=73
#>
Function Get-ERPOrder {
    [CmdletBinding()]
    param (
        [string]
        $PONumber
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/RetrieveERPOrder/" -Method GET -Parameters @{
            po_number = $PONumber
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to retrieve Remarcable Account system data"
            Write-Error $_
        }
    }
}